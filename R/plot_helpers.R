# R/palette.R  ───────────────────────────────────────────────
#' Motley default qualitative palette (16 colours)
#' @export
motley_palette <- c(
  "red", "blue", "green", "orange", "purple", "brown",
  "pink", "gray", "cyan", "magenta", "yellow", "black",
  "lightblue", "lightgreen", "lightpink", "lightgray"
)

motley_colour_scale <- function(...) {
  ggplot2::scale_colour_manual(values = motley_palette, ...)
}
motley_fill_scale <- function(...) {
  ggplot2::scale_fill_manual(values = motley_palette, ...)
}
