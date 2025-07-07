const GM = "/usr/local/bin//gm"

function hfun_bar(vname)
    val = Meta.parse(vname[1])
    return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
    var = vname[1]
    return pagevar("index", var)
end

function lx_baz(com, _)
    # keep this first line
    brace_content = Franklin.content(com.braces[1]) # input string
    # do whatever you want here
    return uppercase(brace_content)
end


function execute(cmd::Cmd)
    out = Pipe()
    err = Pipe()
  
    process = run(pipeline(ignorestatus(cmd), stdout=out, stderr=err))
    close(out.in)
    close(err.in)
    stdout = @async String(read(out))
    return String(read(out))
  end

imgdims(path::AbstractString) = parse.(Int,match(r"(\d*)x(\d*)\n",execute(`$GM identify -format "%wx%h" $path`)).captures) |> Tuple

function hfun_tothumbnail(params)
    imgpath = params[1]
    imgscale = length(params) ≥ 2 ? params[2] : "100%"
    pixelcount = length(params) ≥ 3 ? parse(Int,params[3]) : 1000^2
    return "<a href=\"$imgpath\"> <img src=\"$(_tothumbnail(imgpath,pixelcount))\" style=\"max-width:$imgscale; cursor:pointer;\" title=\"Click to see original\"> </a>"
end

function _tothumbnail(imgpathfull::AbstractString, pixelcount::Int=1000^2)
    @assert startswith(imgpathfull, "/assets/")
    path_name,ext = match(r"^/assets/(.*)\.(.{3,4})$",imgpathfull).captures
    path_img = "$path_name.$ext"
    @assert isfile("_assets/$path_img")
    path_thumb = "$path_name-thumbnail.$ext"
    if !isfile("_assets/$path_thumb")
        imgsize = Base.format_bytes(filesize("_assets/$path_name.$ext"))
        dims = imgdims("_assets/$path_name.$ext")
        @info "Gernerating thumbnail for image: $path_img ($imgsize)"
        gmproc = *(dims...) > pixelcount*5^2 ? "thumbnail" : "resize"
        run(`$GM convert _assets/$path_img -filter lanczos -$gmproc $pixelcount@\> _assets/$path_thumb`)
    end
    return "/assets/$path_thumb"
end

function hfun_preview(params)
    rpath = params[1]
    preview_paths = split(Franklin.pagevar(rpath,"preview_paths"))

    n = min(3, length(preview_paths))
    cols = ""
    for i in 1:4
        cols *= if i > n+1
            """<div class="imgcol"></div>"""
        elseif i == n+1
            """
            <div class="imgcol">
                <a href="/$rpath">
                    <img src="/assets/dotdotdot.png" />
                </a>
            </div>
            """
        else
            """
            <div class="imgcol">
                <a href="/$rpath">
                    <img src="$(preview_paths[i])" />
                </a>
            </div>
            """
        end
    end
    return """<div class="imgrow">$cols</div>"""
end
