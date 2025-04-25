# R/zzz.R  ───────────────────────────────────────────────────
.onAttach <- function(libname, pkgname) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) return()

  # 2.1  Set your global theme
  ggplot2::theme_set(
    ggplot2::theme_classic() +
      ggplot2::theme(
        legend.position      = "none",
        legend.title         = ggplot2::element_text(size = 16),
        legend.text          = ggplot2::element_text(size = 12),
        axis.title           = ggplot2::element_text(size = 16),
        axis.text            = ggplot2::element_text(size = 12),
        plot.title           = ggplot2::element_text(size = 16),
        panel.grid.major.y   = ggplot2::element_line(colour = "lightgray", size = 0.5),
        panel.grid.minor.y   = ggplot2::element_line(colour = "lightgray", size = 0.25)
      )
  )

  # 2.2  Register palette as the *default* discrete scale
  #      (requires ggplot2 ≥ 3.5.0)
  op <- options(
    ggplot2.discrete.colour = motley_colour_scale,
    ggplot2.discrete.fill   = motley_fill_scale
  )
  invisible(op)            # keep CRAN check quiet

  packageStartupMessage("motleytools: ggplot2 theme and palette loaded.")
}
