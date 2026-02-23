# Define a single edge specification

Creates a lightweight edge specification for use inside
[`dag_edges()`](https://benjaminguinaudeau.github.io/daggr/reference/dag_edges.md).
Each spec captures the `from` and `to` nodes plus any per-edge overrides
(e.g., `linetype`, `arc_bend`).

## Usage

``` r
dag_edge(from, to, ...)
```

## Arguments

- from:

  A ggdiagram shape object (the arrow's origin).

- to:

  A ggdiagram shape object (the arrow's destination).

- ...:

  Per-edge arguments passed to
  [`ggdiagram::connect()`](https://wjschne.github.io/ggdiagram/reference/connect.html)
  (e.g., `linetype`, `arc_bend`). These override the shared defaults set
  in
  [`dag_edges()`](https://benjaminguinaudeau.github.io/daggr/reference/dag_edges.md).

## Value

A `dag_edge_spec` object (a named list).

## Examples

``` r
library(daggr)
A <- dag_ellipse("X")
B <- dag_ellipse("Y") |> place(from = A, where = "right", sep = 2.5)
dag_edge(A, B, linetype = "dashed")
#> $from
#> 
#> ── <ob_ellipse> 
#> # A tibble: 1 × 9
#>       x     y     a     b angle    m1    m2 color fill   
#>   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <chr> <chr>  
#> 1     0     0     3   1.5     0     2     2 NA    #0D4F77
#> 
#> $to
#> 
#> ── <ob_ellipse> 
#> # A tibble: 1 × 9
#>       x     y     a     b angle    m1    m2 color fill   
#>   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <chr> <chr>  
#> 1   8.5     0     3   1.5     0     2     2 NA    #0D4F77
#> 
#> $linetype
#> [1] "dashed"
#> 
#> attr(,"class")
#> [1] "dag_edge_spec"
```
