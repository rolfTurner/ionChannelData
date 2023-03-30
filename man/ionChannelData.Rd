\name{ionChannelData}
\alias{ionChannelData}
\alias{ic25kHz_12_sgmnt1}
\alias{ic25kHz_13_sgmnt2}
\alias{ic25kHz_14_sgmnt2}
\alias{ic25kHz_15_sgmnt2}
\alias{ic50kHz_06_sgmnt2}
\alias{ic50kHz_08_sgmnt2}
\alias{ic50kHz_09_sgmnt1}
\alias{ic50kHz_10_sgmnt1}
\docType{data}
\title{
    Ion channel data
}
\description{
Time series of observations, made by means of patch clamps,
of the voltage (emf) in nanovolts, across cell membranes.
These data are basically intended for use with the \code{eglhmm}
package, as examples of data to which hidden Markov models with
Gaussian emissions could be fitted.  However their presence in
the \code{eglhmm} package would cause the size of the \code{data}
directory in that package to exceed 4.5 Mb., which is unacceptably
large.  Consequently these data sets have been placed in a
separate \dQuote{data only} package (the package currently under
consideration).  In the normal course of events, users will obtain
this package (i.e.  \code{ionChannelData}) from \code{github}.
}
\usage{
   ic25kHz_12_sgmnt1
   ic25kHz_13_sgmnt2
   ic25kHz_14_sgmnt2
   ic25kHz_15_sgmnt2
   ic50kHz_06_sgmnt2
   ic50kHz_08_sgmnt2
   ic50kHz_09_sgmnt1
   ic50kHz_10_sgmnt1
}
\format{
  Data frames, each with a single numeric column named \dQuote{emf},
  with 200001, 200000, 200000, 200000, 199926, 200000 and 200000
  observations respectively.
}
\details{
Nazim:  can you add any details?
}
\source{
Nazim:  can you supply a succinct discription of the source of these data?
}
\references{
Nazim:  please supply relevant references to papers and theses which discuss
these data.
}
\examples{
if(requireNamespace("eglhmm")) {
    X    <- ic25kHz_12_sgmnt1[1:1000,1,drop=FALSE] # Tiny subset, to run fast.
    fit0 <- eglhmm::eglhmm(emf ~ 1,data=X,distr="Gaussian",K=7,
                   method="em",tolerance=1e-6,verb=TRUE,itmax=1000)
}
\dontrun{ # Takes a VERY long time.  Total of 645 EM steps.
    if(requireNamespace("eglhmm")) {
        X    <- ic25kHz_12_sgmnt1
        fit1 <- eglhmm::eglhmm(emf ~ 1,data=X,distr="Gaussian",
                               K=7,method="em",tolerance=1e-6,
                               verb=TRUE,itmax=1000)
# Compare with results from depmixS4
        if(requireNamespace("depmixS4")) {
            mdl <- depmixS4::depmix(emf ~ 1, data=X,nstates=7,
                                    family=gaussian())
            fit2 <- depmixS4::fit(mdl,emcontrol=em.control(maxit=1000))
        }
    }
}
}
\keyword{datasets}
