% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ml_feature_one_hot_encoder.R
\name{ft_one_hot_encoder}
\alias{ft_one_hot_encoder}
\title{Feature Transformation -- OneHotEncoder (Transformer)}
\usage{
ft_one_hot_encoder(x, input_col, output_col, drop_last = TRUE,
  uid = random_string("one_hot_encoder_"), ...)
}
\arguments{
\item{x}{A \code{spark_connection}, \code{ml_pipeline}, or a \code{tbl_spark}.}

\item{input_col}{The name of the input column.}

\item{output_col}{The name of the output column.}

\item{drop_last}{Whether to drop the last category. Defaults to \code{TRUE}.}

\item{uid}{A character string used to uniquely identify the feature transformer.}

\item{...}{Optional arguments; currently unused.}
}
\value{
The object returned depends on the class of \code{x}.

\itemize{
  \item \code{spark_connection}: When \code{x} is a \code{spark_connection}, the function returns a \code{ml_transformer},
  a \code{ml_estimator}, or one of their subclasses. The object contains a pointer to
  a Spark \code{Transformer} or \code{Estimator} object and can be used to compose
  \code{Pipeline} objects.

  \item \code{ml_pipeline}: When \code{x} is a \code{ml_pipeline}, the function returns a \code{ml_pipeline} with
  the transformer or estimator appended to the pipline.

  \item \code{tbl_spark}: When \code{x} is a \code{tbl_spark}, a transformer is constructed then
  immediately applied to the input \code{tbl_spark}, returning a \code{tbl_spark}
}
}
\description{
One-hot encoding maps a column of label indices to a column of binary
vectors, with at most a single one-value. This encoding allows algorithms
which expect continuous features, such as Logistic Regression, to use
categorical features. Typically, used with  \code{ft_string_indexer()} to
index a column first.
}
\seealso{
See \url{http://spark.apache.org/docs/latest/ml-features.html} for
  more information on the set of transformations available for DataFrame
  columns in Spark.

Other feature transformers: \code{\link{ft_binarizer}},
  \code{\link{ft_bucketizer}},
  \code{\link{ft_count_vectorizer}}, \code{\link{ft_dct}},
  \code{\link{ft_elementwise_product}},
  \code{\link{ft_hashing_tf}},
  \code{\link{ft_index_to_string}}, \code{\link{ft_pca}},
  \code{\link{ft_quantile_discretizer}},
  \code{\link{ft_r_formula}},
  \code{\link{ft_regex_tokenizer}},
  \code{\link{ft_sql_transformer}},
  \code{\link{ft_stop_words_remover}},
  \code{\link{ft_string_indexer}},
  \code{\link{ft_tokenizer}},
  \code{\link{ft_vector_assembler}}
}
\concept{feature transformers}
