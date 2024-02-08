# Datos de RNA seq a través recount3
## SPEAQeasy es una herramienta a la que se le da un set de datos en archivos FASTQs, se alinean contra el genoma y cuantifican para conocer mucha info.
##  Con el proyecto recount logrando procesar uniformemente 70 mil muestras humanas de RNA-seq.
##  recount3 es el proyecto más reciente.

## Cargar el paquete recount3
## recount3 internamente carga a SummarizedExperiment
library("recount3")

## Revisar todos los proyectos disponibles con datos humanos en recount3
## Por default descarga datos de humano
human_projects <- available_projects()
## Usa detrás a BiosFileCache, es un paquete que permite descargar los datos en la compu
## Es un data frame
class(human_projects)
dim(human_projects)
## Hacer un objeto con la información del proyecto
proj_info <- subset(
  human_projects,
  project == "SRP009615" & project_type == "data_sources"
)

proj_info
## Crear un objeto de tipo RangedSummarizedxperiment (RSE)
rse_gene_SRP009615 <- create_rse(proj_info)
## Hay información sobre nuestro objeto
metadata(rse_gene_SRP009615)
## ------------------------------------------
## Explora los proyectos disponibles de forma interactiva
proj_info_interactive <- interactiveDisplayBase::display(human_projects)
## Una vez alli se debe seleccionar un sólo renglón en la tabla y dar enviar
## Aquí verificamos que solo seleccionaste un solo renglón.
stopifnot(nrow(proj_info_interactive) == 1)
## Crea el objeto RSE de ese proyecto que quieres
rse_gene_interactive <- create_rse(proj_info_interactive)
## -------------------------------------------
##
## Convertimos las cuentas por nucleotido a cuentas por lectura usando compute_read_counts().
## Para otras transformaciones como RPKM y TPM, revisar transform_counts().
assay(rse_gene_SRP009615, "counts") <- compute_read_counts(rse_gene_SRP009615)
## expand_sra_attributes() sirve para expandir la info específica de colData
## También depende cómo lo escribieron los autores.

rse_gene_SRP009615 <- expand_sra_attributes(rse_gene_SRP009615)
## Esto es para consultar toda la información específica de colData
colData(rse_gene_SRP009615)[
  ,
  grepl("^sra_attribute", colnames(colData(rse_gene_SRP009615)))
]


## Ejercicio recount
## Reproducir la imagen con iSEE
## Pistas:
##    Utiliza el dynamic feature selection
##    Utiliza información de las columnas para el eje X
##    Utiliza información de las columnas para los colores
library(iSEE)
iSEE::iSEE(rse_gene_SRP009615)
