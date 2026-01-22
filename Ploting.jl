julia> using ComplexMixtures

julia> using Plots

julia> plot(sucrose.d,sucrose.kb,label="gromacs 0.5")

julia> sucrose_amber = ComplexMixtures.load("../../analyses/results-sucrose_0.5M.json")

julia> sucrose_amber = ComplexMixtures.load("../../05_BgAgal27Suc/analyses/results-sucrose_0.5M.json")

julia> plot!(sucrose_amber.d,sucrose_amber.kb,label="amber 0.5")

julia> sucrose = ComplexMixtures.load("../analyses/results-sucrose_0.5M.json")^C

julia> plot(sucrose.d,sucrose.kb./1000,label="gromacs 0.5")

julia> plot!(sucrose_amber.d,sucrose_amber.kb./1000,label="amber 0.5")

julia> 
