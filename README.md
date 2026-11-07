# pmxhelpr Function Friday posts

Source for the *(pmxhelpr) Function Friday* LinkedIn series. Each post is a
Quarto document rendered to PDF (and optionally self-contained HTML) for
upload to LinkedIn.

## Index

| [001](pmxff001.qmd) | `plot_dvtime()` Post 1
| [002](pmxff002.qmd) | `plot_dvtime()` Post 2
| [003](pmxff003.qmd) | `plot_dvtime()` Post 3
| [004](pmxff004.qmd) | `plot_vpc_*()`/`df_vpcstats()` Post 1
| [005](pmxff005.qmd) | `plot_vpc_*()`/`df_vpcstats()` Post 2
| [006](pmxff006.qmd) | `plot_vpc_*()`/`df_vpcstats()` Post 3
| [007](pmxff007.qmd) | `plot_vpc_*()`/`df_vpcstats()` Post 4
| [008](pmxff008.qmd) | `plot_doseprop()`/`df_doseprop()` Post 1
| [009](pmxff009.qmd) | Release announcement `v0.7.0`

## Layout

| `pmxffNNN.qmd` | One post per file, numbered in publication order
| `_quarto.yml` | Shared HTML and PDF format options for every post |
| `preamble.tex` | Shared LaTeX header 
| `R/setup.R` | Shared package loading and example datasets

## Rendering

Packages are restored with rv and activated automatically via `.Rprofile`. 
Rendered PDFs and HTML are gitignored. The locked `pmxhelpr` version keeps
re-renders reproducible, so re-render rather than commit outputs.

## Adding a post

1. Copy the most recent `pmxffNNN.qmd` and increment the number.
2. Keep the `setup` chunk that sources `R/setup.R`; add post-specific
   chunks (for example model loading or simulation) after it.
3. Add a row to the index above.
