using ImageProcessing
using Documenter

DocMeta.setdocmeta!(ImageProcessing, :DocTestSetup, :(using ImageProcessing); recursive=true)

makedocs(;
    modules=[ImageProcessing],
    authors="Gil Junqueira",
    repo="https://github.com/gjunqueira-sys/ImageProcessing.jl/blob/{commit}{path}#{line}",
    sitename="ImageProcessing.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://gjunqueira-sys.github.io/ImageProcessing.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/gjunqueira-sys/ImageProcessing.jl",
    devbranch="master",
)
