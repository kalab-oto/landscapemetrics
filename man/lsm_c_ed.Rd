% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lsm_c_ed.R
\name{lsm_c_ed}
\alias{lsm_c_ed}
\title{ED (class level)}
\usage{
lsm_c_ed(landscape, count_boundary = FALSE, directions = 8)
}
\arguments{
\item{landscape}{A categorical raster object: SpatRaster; Raster* Layer, Stack, Brick; stars or a list of SpatRasters.}

\item{count_boundary}{Count landscape boundary as edge.}

\item{directions}{The number of directions in which patches should be connected: 4 (rook's case) or 8 (queen's case).}
}
\value{
tibble
}
\description{
Edge Density (Area and Edge metric)
}
\details{
\deqn{ED = \frac{\sum \limits_{k = 1}^{m} e_{ik}} {A} * 10000}
where \eqn{e_{ik}} is the total edge length in meters and \eqn{A} is the total
landscape area in square meters.

ED is an 'Area and Edge metric'. The edge density equals the sum of all edges of class i
in relation to the landscape area. The boundary of the landscape is only included in the
corresponding total class edge length if \code{count_boundary = TRUE}.
The metric describes the configuration of the landscape, e.g. because  an  aggregation
of the same class will result in a low edge density. The metric is standardized to the
total landscape area, and therefore comparisons among landscapes with different total
areas are possible.
\subsection{Units}{Meters per hectare}
\subsection{Range}{ED >= 0}
\subsection{Behaviour}{Equals ED = 0 if only one patch is present (and the landscape
boundary is not included) and increases, without limit, as the landscapes becomes more
patchy}
}
\examples{
landscape <- terra::rast(landscapemetrics::landscape)
lsm_c_ed(landscape)

}
\references{
McGarigal K., SA Cushman, and E Ene. 2023. FRAGSTATS v4: Spatial Pattern Analysis
Program for Categorical Maps. Computer software program produced by the authors;
available at the following web site: https://www.fragstats.org
}
\seealso{
\code{\link{lsm_c_te}},
\code{\link{lsm_l_ta}}, \cr
\code{\link{lsm_l_ed}}
}
