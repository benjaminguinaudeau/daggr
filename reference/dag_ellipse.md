# Create a styled ellipse node for a DAG

Wrapper around
[`ggdiagram::ob_ellipse()`](https://wjschne.github.io/ggdiagram/reference/ob_ellipse.html)
with sensible defaults for DAG diagrams: dark blue fill, white bold
text, no border.

## Usage

``` r
dag_ellipse(
  text,
  fill = dag_default_fill,
  text_color = dag_default_text_color,
  fontface = dag_default_fontface,
  a = dag_default_ellipse_a,
  b = dag_default_ellipse_b,
  ...
)
```

## Arguments

- text:

  Character string displayed inside the ellipse.

- fill:

  Fill color. Defaults to `"#0D4F77"` (dark blue).

- text_color:

  Color of the label text. Defaults to `"white"`.

- fontface:

  Font face for the label. Defaults to `"bold"`.

- a:

  Semi-major axis (horizontal radius). Defaults to `3`.

- b:

  Semi-minor axis (vertical radius). Defaults to `1.5`.

- ...:

  Additional arguments passed to
  [`ggdiagram::ob_ellipse()`](https://wjschne.github.io/ggdiagram/reference/ob_ellipse.html).

## Value

An `ob_ellipse` object.

## Examples

``` r
library(daggr)
node <- dag_ellipse("X")
```
