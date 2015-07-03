using Augur
using Dates
using PyPlot

include("../src/pyplot-settings.jl")

# if > 10 curves per algo are needed, additional markers can be found here:
# http://matplotlib.org/api/markers_api.html
MARKERS = ["s", "o", "d", "v", "^", ">", "<", "*", "p", "D"]

function plot_overlay(sim::Simulation,
                      trajectories::Vector{Trajectory},
                      liar_thresholds::Vector{Float64},
                      metric::Symbol)
    time_max = sim.TIMESTEPS
    timesteps = [1:time_max]
    fig = PyPlot.figure()
    num_curves = length(liar_thresholds)
    markers = MARKERS[1:num_curves]
    lgnd = fill("", num_curves*length(sim.ALGOS))
    y_min = 100.0
    y_max = -100.0
    for (j, algo) in enumerate(sim.ALGOS)
        label = algo
        k = 1
        for (i, lt) in enumerate(liar_thresholds)
            y_points = trajectories[i][algo][metric][:mean][1:time_max]*100
            y_errors = trajectories[i][algo][metric][:stderr][1:time_max]*100
            PyPlot.errorbar(timesteps, y_points, marker=markers[k], yerr=y_errors)
            y_min = min(y_min, minimum(y_points - abs(y_errors)))
            y_max = max(y_max, maximum(y_points + abs(y_errors)))
            lgnd[k + (j-1)*num_curves] = label * " (" * string(int(lt*100)) * "% noise)"
            hold("on")
            k += 1
        end
    end
    PyPlot.xlabel("time (number of consecutive reporting rounds elapsed)")
    PyPlot.ylabel(sim.AXIS_LABELS[metric])
    PyPlot.ylim([y_min - 1, y_max + 1])
    # PyPlot.title("Conspiracy")
    PyPlot.grid()
    PyPlot.legend(lgnd, loc="center right",
                  bbox_to_anchor=(1.32, 0.55), ncol=1)
    pl_file = joinpath(Pkg.dir("Augur"), "test", "plots",
                       "overlay_" * string(metric) * "_" *
                       repr(Dates.now()) * ".png")
    PyPlot.savefig(pl_file)
    print_with_color(:grey, "saved plot: ")
    print_with_color(:cyan, "$pl_file\n")
end
