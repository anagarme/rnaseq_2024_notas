library("sessioninfo")
library("here")
library("ggplot2")

## Hello world
print("Soy Sol")

## Directorios
dir_plots <- here::here("figuras")
dir_rdata <- here::here("processed-data")

## Crear directorio para las figuras y archivos
dir.create(dir_plots, showWarnings = FALSE)
dir.create(dir_rdata, showWarnings = FALSE)

## Hacer una imagen de ejemplo
pdf(file.path(dir_plots, "mtcars_gear_vs_mpg.pdf"),
    useDingbats = FALSE
)
ggplot(mtcars, aes(group = gear, y = mpg)) +
  geom_boxplot()
dev.off()

## Para reproducir mi código
options(width = 120)
sessioninfo::session_info()

# ─ Session info ───────────────────────────────────────────────────────────────────────────────────────────────────────
# setting  value
# version  R version 4.3.1 (2023-06-16 ucrt)
# os       Windows 10 x64 (build 19045)
# system   x86_64, mingw32
# ui       RStudio
# language (EN)
# collate  Spanish_Mexico.utf8
# ctype    Spanish_Mexico.utf8
# tz       America/Mexico_City
# date     2024-01-30
# rstudio  2023.06.1+524 Mountain Hydrangea (desktop)
# pandoc   NA
#
# ─ Packages ───────────────────────────────────────────────────────────────────────────────────────────────────────────
# package     * version date (UTC) lib source
# cli           3.6.1   2023-03-23 [1] CRAN (R 4.3.2)
# colorspace    2.1-0   2023-01-23 [1] CRAN (R 4.3.2)
# crayon        1.5.2   2022-09-29 [1] CRAN (R 4.3.2)
# dplyr         1.1.3   2023-09-03 [1] CRAN (R 4.3.2)
# fansi         1.0.5   2023-10-08 [1] CRAN (R 4.3.2)
# farver        2.1.1   2022-07-06 [1] CRAN (R 4.3.2)
# fs            1.6.3   2023-07-20 [1] CRAN (R 4.3.2)
# generics      0.1.3   2022-07-05 [1] CRAN (R 4.3.2)
# ggplot2     * 3.4.4   2023-10-12 [1] CRAN (R 4.3.2)
# glue          1.6.2   2022-02-24 [1] CRAN (R 4.3.2)
# gtable        0.3.4   2023-08-21 [1] CRAN (R 4.3.2)
# here        * 1.0.1   2020-12-13 [1] CRAN (R 4.3.1)
# labeling      0.4.3   2023-08-29 [1] CRAN (R 4.3.1)
# lifecycle     1.0.3   2022-10-07 [1] CRAN (R 4.3.2)
# magrittr      2.0.3   2022-03-30 [1] CRAN (R 4.3.2)
# munsell       0.5.0   2018-06-12 [1] CRAN (R 4.3.2)
# pillar        1.9.0   2023-03-22 [1] CRAN (R 4.3.2)
# pkgconfig     2.0.3   2019-09-22 [1] CRAN (R 4.3.2)
# purrr         1.0.2   2023-08-10 [1] CRAN (R 4.3.2)
# R6            2.5.1   2021-08-19 [1] CRAN (R 4.3.2)
# rlang         1.1.1   2023-04-28 [1] CRAN (R 4.3.1)
# rprojroot     2.0.3   2022-04-02 [1] CRAN (R 4.3.1)
# rstudioapi    0.15.0  2023-07-07 [1] CRAN (R 4.3.2)
# scales        1.2.1   2022-08-20 [1] CRAN (R 4.3.2)
# sessioninfo * 1.2.2   2021-12-06 [1] CRAN (R 4.3.2)
# tibble        3.2.1   2023-03-20 [1] CRAN (R 4.3.2)
# tidyselect    1.2.0   2022-10-10 [1] CRAN (R 4.3.2)
# usethis       2.2.2   2023-07-06 [1] CRAN (R 4.3.2)
# utf8          1.2.4   2023-10-22 [1] CRAN (R 4.3.2)
# vctrs         0.6.4   2023-10-12 [1] CRAN (R 4.3.2)
# withr         2.5.2   2023-10-30 [1] CRAN (R 4.3.1)
#
# [1] C:/Users/qwerty/AppData/Local/R/win-library/4.3
# [2] C:/Program Files/R/R-4.3.1/library
#
# ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────


