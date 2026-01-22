julia> using ComplexMixtures

julia> using Plots
julia> sucrose_amber_0_5 = ComplexMixtures.load("../analyses/results-sucrose_0.5M.json")
julia> plot(sucrose_amber_0_5.d,sucrose_amber_0_5.kb,label="amber 0.5")
julia> sucrose_gromacs_0_5 = ComplexMixtures.load("../../proj_GH27/analyses/results-sucrose_0.5M.json")
julia> plot!(sucrose_gromacs_0_5.d,sucrose_gromacs_0_5.kb,label="gromacs 0.5")

julia> sucrose_amber_1 = ComplexMixtures.load("../analyses/results-sucrose_1.0M.json")
julia> plot!(sucrose_amber_1.d,sucrose_amber_1.kb,label="amber 1.0")
julia> sucrose_gromacs_1 = ComplexMixtures.load("../../proj_GH27/analyses/results-sucrose_1.0M.json")
julia> plot!(sucrose_gromacs_1.d,sucrose_gromacs_1.kb,label="gromacs 1.0")

julia> water_amber_0_5 = ComplexMixtures.load("../analyses/results-sucrose_0.5M.json")
julia> plot!(water_amber_0_5.d,water_amber_0_5.kb,label="amber_water 0.5")
julia> water_gromacs_0_5 = ComplexMixtures.load("../../proj_GH27/analyses/results-sucrose_0.5M.json")
julia> plot!(water_gromacs_0_5.d,water_gromacs_0_5.kb,label="gromacs_water 0.5")

julia> water_amber_1 = ComplexMixtures.load("../analyses/results-sucrose_1.0M.json")
julia> plot!(water_amber_1.d,water_amber_1.kb,label="amber_water 1.0")
julia> water_gromacs = ComplexMixtures.load("../../proj_GH27/analyses/results-sucrose_1.0M.json")
julia> plot!(water_gromacs_1.d,water_gromacs_1.kb,label="gromacs_water 1.0")


julia> plot!(water_amber_0_5.d,sucrose_amber_0_5.kb./1000,label="amber 0.5")
julia> plot!(water_gromacs_0_5.d,sucrose_gromacs_0_5.kb./1000,label="gromacs 0.5")
julia> plot!(water_amber_1.d,sucrose_amber_1.kb./1000,label="amber 1.0")
julia> plot!(water_gromacs_1.d,sucrose_gromacs_1.kb./1000,label="gromacs 1.0")
julia> plot!(water_amber_0_5.d,sucrose_amber_0_5.kb./1000,label="amber_water 0.5")
julia> plot!(water_gromacs_0_5.d,sucrose_gromacs_0_5.kb./1000,label="gromacs_water 0.5")
julia> plot!(water_amber_1.d,sucrose_amber_1.kb./1000,label="amber_water 1.0")
julia> plot!(water_gromacs_1.d,sucrose_gromacs_1.kb./1000,label="gromacs_water 1.0")


julia> 
