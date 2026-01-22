using ComplexMixtures
using Plots

# --- Load data ---
sucrose_amber_0_5 = ComplexMixtures.load("../analyses/results-sucrose_0.5M.json")
sucrose_gromacs_0_5 = ComplexMixtures.load("../../proj_GH27/analyses/results-sucrose_0.5M.json")

sucrose_amber_1 = ComplexMixtures.load("../analyses/results-sucrose_1.0M.json")
sucrose_gromacs_1 = ComplexMixtures.load("../../proj_GH27/analyses/results-sucrose_1.0M.json")

water_amber_0_5 = ComplexMixtures.load("../analyses/results-water_0.5M.json")
water_gromacs_0_5 = ComplexMixtures.load("../../proj_GH27/analyses/results-water_0.5M.json")

water_amber_1 = ComplexMixtures.load("../analyses/results-water_1.0M.json")
water_gromacs_1 = ComplexMixtures.load("../../proj_GH27/analyses/results-water_1.0M.json")

# --- Plot (scaled to kJ/mol) ---
plot(sucrose_amber_0_5.d, sucrose_amber_0_5.kb ./ 1000,
     label="Sucrose AMBER 0.5 M", lw=2)

plot!(sucrose_gromacs_0_5.d, sucrose_gromacs_0_5.kb ./ 1000,
      label="Sucrose GROMACS 0.5 M", lw=2)

plot!(sucrose_amber_1.d, sucrose_amber_1.kb ./ 1000,
      label="Sucrose AMBER 1.0 M", lw=2)

plot!(sucrose_gromacs_1.d, sucrose_gromacs_1.kb ./ 1000,
      label="Sucrose GROMACS 1.0 M", lw=2)

plot!(water_amber_0_5.d, water_amber_0_5.kb ./ 1000,
      label="Water AMBER 0.5 M", lw=2, ls=:dash)

plot!(water_gromacs_0_5.d, water_gromacs_0_5.kb ./ 1000,
      label="Water GROMACS 0.5 M", lw=2, ls=:dash)

plot!(water_amber_1.d, water_amber_1.kb ./ 1000,
      label="Water AMBER 1.0 M", lw=2, ls=:dot)

plot!(water_gromacs_1.d, water_gromacs_1.kb ./ 1000,
      label="Water GROMACS 1.0 M", lw=2, ls=:dot)

xlabel!("Distance (nm)")
ylabel!("KB integral (kJ/mol)")
title!("Kirkwood–Buff Integrals: AMBER vs GROMACS")
