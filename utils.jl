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

function _tothumbnail(imgpathfull::AbstractString, pixelcount::Int=1000^2; postfix="thumbnail")
    @assert startswith(imgpathfull, "/assets/")
    path,name,ext = match(r"^/assets/(.*/)?([a-zA-Z0-9_\-]+)\.(.{3,4})$",imgpathfull).captures
    path = something(path, "")
    path_img = "$path$name.$ext"
    @assert isfile(joinpath("_assets", path_img))
    _pwd = pwd(); cd("_assets/$path")
    filename = "$name.$ext"
    thumbfilename = "$name-$postfix.$ext"
    returnpath = ""
    if !(isfile(thumbfilename) || islink(thumbfilename))
        imgsize = filesize(filename)
        dims = imgdims(filename)
        @info "Gernerating thumbnail for image: $path_img ($(Base.format_bytes(imgsize)))"
        gmproc = *(dims...) > pixelcount*5^2 ? "thumbnail" : "resize"
        run(`$GM convert $filename -filter lanczos -$gmproc $pixelcount@\> $thumbfilename`)
        thumbsize = filesize(thumbfilename)
        if thumbsize > imgsize
            rm(thumbfilename)
            @show path, filename, thumbfilename
            symlink(filename, thumbfilename)
            returnpath = imgpathfull
        end
    end
    returnpath = "/assets/$path$thumbfilename"
    cd(_pwd)
    return returnpath
end

function hfun_preview(params)
    rpath = params[1]
    preview_paths = split(Franklin.pagevar(rpath,"preview_paths"))
    @show preview_paths
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
                    <img src="$(_tothumbnail(preview_paths[i], 400^2; postfix="preview"))" />
                </a>
            </div>
            """
        end
    end
    return """<div class="imgrow">$cols</div>"""
end
