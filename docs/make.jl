using WorkflowRecipes
using Documenter

DocMeta.setdocmeta!(WorkflowRecipes, :DocTestSetup, :(using WorkflowRecipes); recursive=true)

makedocs(;
    modules=[WorkflowRecipes],
    authors="singularitti <singularitti@outlook.com> and contributors",
    repo="https://github.com/MineralsCloud/WorkflowRecipes.jl/blob/{commit}{path}#{line}",
    sitename="WorkflowRecipes.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MineralsCloud.github.io/WorkflowRecipes.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/MineralsCloud/WorkflowRecipes.jl",
    devbranch="main",
)
