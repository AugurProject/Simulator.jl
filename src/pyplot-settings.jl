using PyPlot

# PyPlot.matplotlib[:rc]("backend", "Qt4Agg")
PyPlot.matplotlib[:rc]("backend", qt4="PySide")
PyPlot.matplotlib[:rc]("lines", linewidth="1.0")
PyPlot.matplotlib[:rc]("lines", linestyle="-")
PyPlot.matplotlib[:rc]("lines", color="black")
PyPlot.matplotlib[:rc]("lines", markeredgewidth="0.5")
PyPlot.matplotlib[:rc]("lines", markersize="5.5")
PyPlot.matplotlib[:rc]("lines", solid_joinstyle="round")
PyPlot.matplotlib[:rc]("lines", solid_capstyle="round")
PyPlot.matplotlib[:rc]("lines", antialiased="True")
PyPlot.matplotlib[:rc]("font", family="serif")
PyPlot.matplotlib[:rc]("font", style="normal")
PyPlot.matplotlib[:rc]("font", variant="normal")
PyPlot.matplotlib[:rc]("font", weight="medium")
PyPlot.matplotlib[:rc]("font", stretch="normal")
PyPlot.matplotlib[:rc]("font", size="12.0")
PyPlot.matplotlib[:rc]("font", serif="Times")
# PyPlot.matplotlib[:rc]("font", serif="Times, Palatino, New Century Schoolbook, Bookman, Computer Modern Roman")
# PyPlot.matplotlib[:rc]("font", sans_serif="Arial, Helvetica, Avant Garde, Computer Modern Sans serif")
PyPlot.matplotlib[:rc]("axes", hold=false)
PyPlot.matplotlib[:rc]("axes", facecolor="white")
PyPlot.matplotlib[:rc]("axes", edgecolor="black")
PyPlot.matplotlib[:rc]("axes", linewidth="0.5")
PyPlot.matplotlib[:rc]("axes", grid=true)
PyPlot.matplotlib[:rc]("axes", titlesize="22.0")
PyPlot.matplotlib[:rc]("axes", labelsize="14.0")
PyPlot.matplotlib[:rc]("axes", labelweight="normal")
PyPlot.matplotlib[:rc]("axes", labelcolor="black")
PyPlot.matplotlib[:rc]("axes", axisbelow=true)
PyPlot.matplotlib[:rc]("axes", color_cycle=["8A084B",
                                            "8A084B",
                                            "8A084B",
                                            # "5DA5DA",  # blue
                                            # "60BD68",  # green
                                            # "B276B2",  # purple
                                            "0174DF",
                                            "0174DF",
                                            "0174DF",
                                            # "F15854",  # red
                                            # "FAA43A",  # orange
                                            # "B2912F",  # brown
                                            "F17CB0",  # pink
                                            "DECF3F",  # yellow
                                            "4D4D4D"]) # gray
PyPlot.matplotlib[:rc]("axes", xmargin="0")
PyPlot.matplotlib[:rc]("axes", ymargin="0")
PyPlot.matplotlib[:rc]("legend", fancybox=false)
PyPlot.matplotlib[:rc]("legend", isaxes=true)
PyPlot.matplotlib[:rc]("legend", numpoints=2)
PyPlot.matplotlib[:rc]("legend", fontsize="small")
PyPlot.matplotlib[:rc]("legend", borderpad="1.0")
PyPlot.matplotlib[:rc]("legend", markerscale="1.0")
PyPlot.matplotlib[:rc]("legend", labelspacing="1.0")
PyPlot.matplotlib[:rc]("legend", handlelength="2.0")
PyPlot.matplotlib[:rc]("legend", handleheight="0.7")
PyPlot.matplotlib[:rc]("legend", handletextpad="0.8")
PyPlot.matplotlib[:rc]("legend", borderaxespad="0.5")
PyPlot.matplotlib[:rc]("legend", columnspacing="2.0")
PyPlot.matplotlib[:rc]("legend", shadow=false)
PyPlot.matplotlib[:rc]("legend", frameon=true)
PyPlot.matplotlib[:rc]("legend", scatterpoints=3)
PyPlot.matplotlib[:rc]("grid", color="0.7")
PyPlot.matplotlib[:rc]("grid", linestyle="solid")
PyPlot.matplotlib[:rc]("grid", linewidth="0.5")
PyPlot.matplotlib[:rc]("grid", alpha="0.2")
PyPlot.matplotlib[:rc]("savefig", dpi="300")
PyPlot.matplotlib[:rc]("savefig", format="png")
PyPlot.matplotlib[:rc]("savefig", bbox="tight")
PyPlot.matplotlib[:rc]("savefig", pad_inches="0.1")
PyPlot.matplotlib[:rc]("savefig", jpeg_quality="95")
PyPlot.matplotlib[:rc]("figure", figsize="9,6")
PyPlot.matplotlib[:rc]("figure", dpi="150")
PyPlot.matplotlib[:rc]("figure", facecolor="white")
# PyPlot.matplotlib[:rc]("figure", edgecolor="white")
PyPlot.matplotlib[:rc]("figure", autolayout=true)