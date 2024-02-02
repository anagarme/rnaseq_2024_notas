# Procesar datos de expresión a través de recount3
#
# rnaseqGene es un paquete para trabajar con los datos de expresión de
# RNA seq.
#
# Paquete SummarizedExperiment
#
# Es un paquete de R. Es una matriz que contiene
# en las filas los rangos genómicos de
# interés y las columnas represetan las muestras.
#
# Componentes:
# rowRanges es la tabla con la información de los genes.
# colData contiene la información de las muestras.
# assay contiene la matriz con las cuentas. El número de
# renglones que tiene es equivalente al tamaño de rowRanges y el
# número de columnas es igual al de colData.
#
# Ejemplos de la ayuda oficial
#
library("SummarizedExperiment")
## Crear los datos para nuestro objeto de tipo SummarizedExperiment
## Definir el tamaño de los datos
nrows <- 200
ncols <- 6
## Números al azar de cuentas
set.seed(20210223)
counts <- matrix(runif(nrows * ncols, 1, 1e4), nrows)
## Información de nuestros genes
rowRanges <- GenomicRanges::GRanges(
  rep(c("chr1", "chr2"), c(50, 150)),
  IRanges::IRanges(floor(runif(200, 1e5, 1e6)), width = 100),
  strand = sample(x = c("+", "-"),
                  size = 200,
                  replace = TRUE),
  feature_id = sprintf("ID%03d", 1:200)
)
#runif random uniform, valores random con una distribución uniforme
names(rowRanges) <- paste0("gene_", seq_len(length(rowRanges)))
## Información de nuestras muestras
colData <- DataFrame(
  Treatment = rep(c("ChIP", "Input"), 3),
  row.names = LETTERS[1:6]
)
## Hacemos un solo objeto con la información
rse <- SummarizedExperiment(
  assays = SimpleList(counts = counts),
  rowRanges = rowRanges,
  colData = colData
)
rse

# class: RangedSummarizedExperiment
# dim: 200 6
# metadata(0):
#   assays(1): counts
# rownames(200): gene_1 gene_2 ... gene_199
# gene_200
# rowData names(1): feature_id
# colnames(6): A B ... E F
# colData names(1): Treatment
#
# Ejemplos
# Explorar dimensiones
dim(rse)
## IDs de nuestros genes y muestras
dimnames(rse
# Consultar los nombres de las tablas con las cuentas
assayNames(rse)
#
## Ejercicio 3.2
#
## Caso 1
rse[1:2, ]
# Como rse es un objeto, esta línea toma las filas
# de 1 a 2, en el espacio de las columnas toma todas
# las columnas. Por eso en rownames nos muestra las filas
# gene_1 y gene_2.

# class: RangedSummarizedExperiment
# dim: 2 6
# metadata(0):
#   assays(1): counts
# rownames(2): gene_1 gene_2
# rowData names(1): feature_id
# colnames(6): A B ... E F
# colData names(1): Treatment

## Caso 2
rse[, c("A", "D", "F")]

# En este se extrae sólo las columnas que son nombradas
# como "A", "D" y "F", omitiendo las demás.

# class: RangedSummarizedExperiment
# dim: 200 3
# metadata(0):
#   assays(1): counts
# rownames(200): gene_1 gene_2 ... gene_199
# gene_200
# rowData names(1): feature_id
# colnames(3): A D F
# colData names(1): Treatment
#
## iSEE
## Es un paquete que permite explorar de una forma más visual los datos almacenados
## en objetos de tipo SummarizedExperiment. Permite hacer plots, tablas y muchas cosas
## más muy útiles.
## Cargar el paquete
library(iSEE)
## Explorar el objeto rse
iSEE::iSEE(rse)
#
#
## Ejercicio con spatialLIBD
## Descargar los datos de spatialLIBD
sce_layer <- spatialLIBD::fetch_data("sce_layer")
iSEE::iSEE(sce_layer)
## 1. Reproducir la imagen.
## Ver imagen "Ejercicio3.4"
## Heatmap de la expresión de los genes MOBP, MBP y PCP4. Si se hace un clustering, ¿cuáles genes se parecen más?
## ID de los genes:
## ENSG00000168314 MOBP
## ENSG00000197971 MBP
## ENSG00000183036 PC4
## Los genes que más se parecen son MOBP y MBP, posiblemente porque se expresan más
## en las capa de la sustancia blanca del cerebro (WM).

