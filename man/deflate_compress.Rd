% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/api.R
\name{deflate_compress}
\alias{deflate_compress}
\title{Compress a raw vector with libdeflate}
\usage{
deflate_compress(compressor, input)
}
\arguments{
\item{compressor}{An external pointer created by `alloc_compressor()`.}

\item{input}{A raw vector (or object coercible to raw) containing the data to compress.}
}
\value{
A raw vector containing the DEFLATE‐compressed output.
}
\description{
Compress the given raw vector using the specified libdeflate compressor.
}
\examples{
# Low compression values might not compress at all
cmp = alloc_compressor(1L)
raw_in = charToRaw("Fast compression test: 1231231231231231")
raw_cmp_1 = deflate_compress(cmp, raw_in)
print(sprintf("Length in: \%i Length out: \%i", length(raw_in), length(raw_cmp_1) ))
# Max compression is 12
cmp = alloc_compressor(12L)
raw_cmp_12 = deflate_compress(cmp, raw_in)
print(sprintf("Length in: \%i Length out: \%i", length(raw_in), length(raw_cmp_12) ))
}
