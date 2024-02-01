# Datos de RNA seq con recount3

  # Con el proyecto recount logrando procesar uniformemente 70 mil muestras humanas de RNA-seq.
  # recount3 es el proyecto más reciente.

# Cargar el paquete recount3
library("recount3")

# Revisar todos los proyectos con datos humanos en recountr
human_projects <- available_projects()
# Usa detrás a BiosFileCache


# Hacer un objeto con la información del proyecto
proj_info <- subset(
  human_projects,
  project == "SRP009615" & project_type == "data_sources"
)
proj_info
# Crear un objeto de tipo RangedSummarizedxperiment (RSE)
rse_gene_SRP009615 <- create_rse(proj_info)

metadata(rse_gene_SRP009615)

## Convirtamos las cuentas por nucleotido a cuentas por lectura
## usando compute_read_counts().
## Para otras transformaciones como RPKM y TPM, revisa transform_counts().
assay(rse_gene_SRP009615, "counts") <-
  compute_read_counts(rse_gene_SRP009615)
#
rse_gene_SRP009615 <- expand_sra_attributes(rse_gene_SRP009615)

# Ejercicio recount
library(iSEE)
iSEE::iSEE(rse_gene_SRP009615)
