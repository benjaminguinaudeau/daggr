# Create a styled DAG node

Unified constructor that dispatches to
[`dag_ellipse()`](https://benjaminguinaudeau.github.io/daggr/reference/dag_ellipse.md)
or
[`dag_rectangle()`](https://benjaminguinaudeau.github.io/daggr/reference/dag_rectangle.md)
based on the `shape` parameter.

## Usage

``` r
dag_node(text, fill = dag_default_fill, shape = c("ellipse", "rectangle"), ...)
```

## Arguments

- text:

  Character string displayed inside the node.

- fill:

  Fill color. Defaults to `dag_default_fill`.

- shape:

  Node shape: `"ellipse"` (default) or `"rectangle"`.

- ...:

  Additional arguments passed to
  [`dag_ellipse()`](https://benjaminguinaudeau.github.io/daggr/reference/dag_ellipse.md)
  or
  [`dag_rectangle()`](https://benjaminguinaudeau.github.io/daggr/reference/dag_rectangle.md).

## Value

An `ob_ellipse` or `ob_rectangle` object.

## Examples

``` r
library(daggr)
dag_node("X")
#> 
#> ── <ob_ellipse> 
#> # A tibble: 1 × 9
#>       x     y     a     b angle    m1    m2 color fill   
#>   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <chr> <chr>  
#> 1     0     0     3   1.5     0     2     2 NA    #0D4F77
dag_node("Y", shape = "rectangle")
#> 
#> ── <ob_rectangle> 
#> # A tibble: 1 × 7
#>       x     y width height angle color fill   
#>   <dbl> <dbl> <dbl>  <dbl> <dbl> <chr> <chr>  
#> 1     0     0     6      3     0 NA    #0D4F77
```
