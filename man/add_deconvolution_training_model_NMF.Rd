% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Train_model_NMF.R
\name{add_deconvolution_training_model_NMF}
\alias{add_deconvolution_training_model_NMF}
\title{add_deconvolution_training_model_NMF}
\usage{
add_deconvolution_training_model_NMF(
    transcriptome_data,
    model_name,
    subtype_vector,
    rank_estimate,
    exclude_non_interpretable_NMF_components,
    training_nr_marker_genes,
    parallel_processes,
    nrun
)
}
\arguments{
\item{transcriptome_data}{Transcriptomic data to be
used for training. Has to contain the cell subtypes to which the
similarity will be calculated. Note that the row names have
to contain the HGNC symbols and the column names the sample names.}

\item{model_name}{Name of the model.}

\item{subtype_vector}{Character vector containing the subtype
labels of the training data samples (\code{transcriptome_data}).}

\item{rank_estimate}{Rank of the NMF model. Will be set to amount of 
different subtypes defined in the subtype_vector if not specified manually.}

\item{exclude_non_interpretable_NMF_components}{Boolean parameter that 
indicates whether trained NMF components that cannot clearly be associated 
with either an endocrine or acinar & ductal or hisc subtyp shall be 
excluded. Default value FALSE.}

\item{training_nr_marker_genes}{Amount of genes to be utilized as 
marker genes for each cell type. Default value 100.}

\item{parallel_processes}{Amount of parallel processes used for training. 
Warning, RAM utilization increases linearly. Default value 1.}

\item{nrun}{Amount of times the NMF model will be trained. Default value 10.}
}
\value{
Stores a new model in the package directory
}
\description{
\code{add_deconvolution_training_model_NMF} adds a new model
}
\examples{
data(Lawlor) # Data from Lawlor et al.
data(meta_data)

# extract the training sample subtype labels
subtype_vector = as.character(meta_data$Subtype) 

add_deconvolution_training_model_NMF(
    transcriptome_data = Lawlor,
    model_name = "my_model",
    subtype_vector = subtype_vector,
    rank_estimate = 0,
    exclude_non_interpretable_NMF_components = FALSE,
    training_nr_marker_genes = 100,
    parallel_processes = 1,
    nrun = 1
)
}
