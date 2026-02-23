# Connect two DAG nodes with an arrow

Thin wrapper around
[`ggdiagram::connect()`](https://wjschne.github.io/ggdiagram/reference/connect.html)
with DAG-friendly defaults: `resect = 2`, black color, full opacity.

## Usage

``` r
dag_connect(from, to, resect = 2, color = "black", alpha = 1, ...)
```

## Arguments

- from:

  A ggdiagram shape object (the arrow's origin).

- to:

  A ggdiagram shape object (the arrow's destination).

- resect:

  Amount to pull back the arrow from the node boundary. Defaults to `2`.

- color:

  Arrow color. Defaults to `"black"`.

- alpha:

  Arrow opacity. Defaults to `1`.

- ...:

  Additional arguments passed to
  [`ggdiagram::connect()`](https://wjschne.github.io/ggdiagram/reference/connect.html).

## Value

A connection object suitable for adding to a
[`ggdiagram()`](https://wjschne.github.io/ggdiagram/reference/ggdiagram.html)
plot.

## Examples

``` r
library(daggr)
A <- dag_ellipse("X")
B <- dag_ellipse("Y") |> place(from = A, where = "right", sep = 2.5)
dag_connect(A, B)
#> 
#> ── <ob_segment> 
#> # A tibble: 1 × 9
#>       x     y  xend  yend alpha arrow_head     arrowhead_length color resect
#>   <dbl> <dbl> <dbl> <dbl> <dbl> <list>                    <dbl> <chr>  <dbl>
#> 1     3     0   5.5     0     1 <dbl [64 × 2]>                7 black      2
```
