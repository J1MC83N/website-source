using Franklin
serve(launch=true)
optimize(prepath="",minify=false)
`rsync -av --delete --exclude=".git/" __site/ ../J1MC83N.github.io/` |> run
cd("../J1MC83N.github.io")
`git add --all` |> run
`git commit -m "removed random words quotations"` |> run
`git push` |> run
cd("../main-minimal-mistakes")