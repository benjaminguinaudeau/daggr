# Create a styled rectangle node for a DAG

Wrapper around
[`ggdiagram::ob_rectangle()`](https://wjschne.github.io/ggdiagram/reference/ob_rectangle.html)
with sensible defaults for DAG diagrams: dark blue fill, white bold
text, no border.

## Usage

``` r
dag_rectangle(
  text,
  fill = dag_default_fill,
  text_color = dag_default_text_color,
  fontface = dag_default_fontface,
  width = dag_default_rect_width,
  height = dag_default_rect_height,
  ...
)
```

## Arguments

- text:

  Character string displayed inside the rectangle.

- fill:

  Fill color. Defaults to `"#0D4F77"` (dark blue).

- text_color:

  Color of the label text. Defaults to `"white"`.

- fontface:

  Font face for the label. Defaults to `"bold"`.

- width:

  Rectangle width. Defaults to `6`.

- height:

  Rectangle height. Defaults to `3`.

- ...:

  Additional arguments passed to
  [`ggdiagram::ob_rectangle()`](https://wjschne.github.io/ggdiagram/reference/ob_rectangle.html).

## Value

An `ob_rectangle` object.

## Examples

``` r
library(daggr)
node <- dag_rectangle("X")
```
