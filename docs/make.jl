using Documenter
using MyJuliaIntro

push!(LOAD_PATH,"../src/")
makedocs(
    sitename = "MyJuliaIntro",
    pages = [
        "First things first" => "index.md"
    ],
    format = Documenter.HTML(prettyurls = false),
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(
    repo = "github.com/dmetivie/MyJuliaIntro.jl.git"
)
