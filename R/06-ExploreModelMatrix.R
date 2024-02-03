# Modelos estadísticos
## Repaso de regresión lineal
mat <- with(trees, model.matrix(log(Volume) ~ log(Height) + log(Girth)))
head(
  model.matrix(
    log(trees$Volume) ~ log(trees$Heigh) + log(trees$Girth)
  )
)
mat

class(mat)
dim(mat)
dim(trees)

colnames(mat)
summary(lm(log(Volume) ~ log(Height) + log(Girth), data = trees))

(sampleData <- data.frame(
   genotype = rep(c("A", "B"), each = 4),
   treatment = rep(c("ctrl", "trt"), 4)
))

> vd <- ExploreModelMatrix::VisualizeDesign(
  +     sampleData = sampleData,
  +     designFormula = ~ genotype + treatment,
  +     textSizeFitted = 4
  + )
cowplot::plot_grid(plotlist = vd$plotlist)
ibrary(ExploreModelMatrix)
> app <- ExploreModelMatrix(
  +     sampleData = sampleData,
  +     designFormula = ~ genotype + treatment
  + )

if (interactive()) shiny::runApp(app)


