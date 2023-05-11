# From https://github.com/KristofferC/DigiWellSeminarieJulia/blob/master/MyPackage/docs/make.jl
using Documenter, MyJuliaIntro

const liveserver = "liveserver" in ARGS

if liveserver
    using Revise
    Revise.revise()
end

makedocs(
    sitename = "My Introduction to Julia",
    authors = "David Métivier",
    pages = Any[
        "First things first" => "index.md",
        "Get Started" => "GetStarted.md",
        "Get Help" => "FAQ.md",
        "Get Packages" => "packages.md"
    ]
)

deploydocs(
    repo = "https://dmetivie.github.io/MyJuliaIntro.jl",
    target = "build",
    branch = "gh-pages",
    versions = ["stable" => "v^", "v#.#" ],
)

# deploydocs(
#     repo = "https://dmetivie.github.io/MyJuliaIntro.jl/",
# )