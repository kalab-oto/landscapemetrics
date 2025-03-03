% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lsm_c_core_cv.R
\name{lsm_c_core_cv}
\alias{lsm_c_core_cv}
\title{CORE_CV (class level)}
\usage{
lsm_c_core_cv(
  landscape,
  directions = 8,
  consider_boundary = FALSE,
  edge_depth = 1
)
}
\arguments{
\item{landscape}{A categorical raster object: SpatRaster; Raster* Layer, Stack, Brick; stars or a list of SpatRasters.}

\item{directions}{The number of directions in which patches should be connected: 4 (rook's case) or 8 (queen's case).}

\item{consider_boundary}{Logical if cells that only neighbour the landscape
boundary should be considered as core}

\item{edge_depth}{Distance (in cells) a cell has the be away from the patch
edge to be considered as core cell}
}
\value{
tibble
}
\description{
Coefficient of variation of core area (Core area metric)
}
\details{
\deqn{CORE_{CV} = cv(CORE[patch_{ij}])}
where \eqn{CORE[patch_{ij}]} is the core area in square meters of each patch.

CORE_CV is a 'Core area metric'. It equals the Coefficient of variation of the core area
of each patch belonging to class i. The core area is defined as all cells that have no
neighbour with a different value than themselves (rook's case). The metric describes the
differences among patches of the same class i in the landscape and is easily comparable
because it is scaled to the mean.

\subsection{Units}{Hectares}
\subsection{Range}{CORE_CV >= 0}
\subsection{Behaviour}{Equals CORE_CV = 0 if all patches have the same core area.
Increases, without limit, as the variation of patch core areas increases.}
}
\examples{
landscape <- terra::rast(landscapemetrics::landscape)
lsm_c_core_cv(landscape)

}
\references{
McGarigal K., SA Cushman, and E Ene. 2023. FRAGSTATS v4: Spatial Pattern Analysis
Program for Categorical Maps. Computer software program produced by the authors;
available at the following web site: https://www.fragstats.org
}
\seealso{
\code{\link{lsm_p_core}}, \cr
\code{\link{lsm_c_core_mn}},
\code{\link{lsm_c_core_sd}}, \cr
\code{\link{lsm_l_core_mn}},
\code{\link{lsm_l_core_sd}},
\code{\link{lsm_l_core_cv}}
}
