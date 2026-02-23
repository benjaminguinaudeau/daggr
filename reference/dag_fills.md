# Semantic color palette for DAG nodes

A named list of colors for common DAG variable types. Use these instead
of raw hex codes for self-documenting, autocomplete-friendly color
assignment.

## Usage

``` r
dag_fills
```

## Format

A named list with the following elements:

- default:

  `"#0D4F77"` — dark blue, for general variables

- treatment:

  `"#2E7D32"` — green, for treatment/exposure

- outcome:

  `"#C62828"` — red, for outcome variables

- unmeasured:

  `"#708090"` — slate gray, for unobserved confounders

- latent:

  `"#B0BEC5"` — light gray, for latent/error terms

- instrument:

  `"#5D4037"` — dark brown, for instruments

- mediator:

  `"#0D4F77"` — dark blue, for mediators

- constructed:

  `"darkred"` — for constructed indices

## Examples

``` r
library(daggr)
dag_fills$treatment
#> [1] "#2E7D32"
dag_ellipse("X", fill = dag_fills$treatment)
#> 
#> ── <ob_ellipse> 
#> # A tibble: 1 × 9
#>       x     y     a     b angle    m1    m2 color fill   
#>   <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <chr> <chr>  
#> 1     0     0     3   1.5     0     2     2 NA    #2E7D32
```
