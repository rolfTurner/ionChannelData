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
Time series of observations, made by means of patch clamps, of
current in picoamps, across cell membranes.
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
  Data frames, each with a single numeric column named \dQuote{current},
  with 200001, 200000, 200000, 200000, 199926, 200000 and 200000
  observations respectively.
}

\section{Note}{
These data are basically intended for use with the \code{eglhmm}
package, as examples of data to which hidden Markov models with
Gaussian emissions could be fitted.  However their presence in
the \code{eglhmm} package would cause the size of the \code{data}
directory in that package to exceed 4.5 Mb., which is unacceptably
large.  Consequently these data sets have been placed in a
separate \dQuote{data only} package (the package currently under
consideration).  In the normal course of events, users will obtain
this package (i.e.  \code{ionChannelData}) from \code{github}
via the commmand
\preformatted{
    install.packages("ionChannelData",repos="https://rolfturner.r-universe.dev")
}
}

\details{
Extensive high bandwidth patch clamp data were obtained in the
laboratory of Professor Boris Martinac (Head of Mechanosensory
Biophysics Laboratory, Victor Chang Cardiac Research Institute)
from the MscL (large mechanosensitive ion channel) in the bacterium
E. coli. The data were recorded by the same researcher in the same
laboratory during the same afternoon under identical environmental
conditions, with applied voltage +100 mV, bandwidths 25 kHz and 50
kHz and digitally sampled at 75 kHz and 150 kHz, respectively. Four
recordings at each bandwidth were obtained, each containing between
5 and 30 million data values.

The data were screened and eight data sets (four at each bandwidth)
each containing about 200,000 values were selected for analysis. This
package contains these eight data sets.

\bold{Experimental technique:} 6 \eqn{\times}{x} His-tagged MscL
proteins were purified, and the 6 \eqn{\times}{x} His tag was
removed by thrombin according to a published procedure (H\"{a}se et
al. 1995). Purified MscL material was reconstituted into liposomes
mixed with 100 \% soybean azolectin using a dehydration/rehydration
(D/R) reconstitution method (Delcour et al. 1989; Martinac et
al. 2010).  Mixed lipids were dissolved in chloroform and dried
under nitrogen to make a thinner lipid film, and a D/R buffer [200
mM KCl, 5 mM 4-(2-hydroxyethyl)-1-piperazineethanesulphonic acid
(HEPES), adjusted to pH 7.2 with KOH] was added before vortexing and
sonication for 10 minutes.  MscL was added at protein-to-lipid ratio
of 1:1000 (w/w) and incubated at 4\eqn{^\circ}{ degrees} C for 1
hour. Detergent was removed with the addition of Biobeads (BioRad,
Hercules, CA), followed by incubation at 4\eqn{^\circ}{ degrees}
C for a further 3 hours. The proteoliposomes were collected by
ultracentrifugation and resuspended in a 30 \eqn{\mu}{micro}-litre
D/R buffer. Aliquots of proteoliposomes were spotted onto cover
slips and dehydrated overnight under vacuum at 4\eqn{^\circ}{
degrees} C. The dried proteoliposomes were rehydrated at
4\eqn{^\circ}{ degrees} C with a D/R buffer and subsequently used
for electrophysiological experiments.

The MscL channel activity was recorded from proteoliposomes using
the patch clamp technique at applied voltage +100 mV.  The bath
and pipette recording solution used in liposome experiments was the
same, consisting of 200 mM KCl, 40 mM MgCl2 and 5 mM HEPES (pH 7.2
adjusted with KOH). Negative pressure (suction) activating MscL
was applied to the patch pipette using a syringe, monitored with
a pressure gauge (PM 015R, World Precision Instruments, Sarasota,
FL). The single-channel current was amplified with an Axopatch
200B amplifier (Molecular Devices, Sunnyvale, CA), filtered at
25 and 50 kHz, digitized at 75 and 150 kHz, respectively, with
a Digidata 1440A interface using pCLAMP 10 acquisition software
(Molecular Devices, Sunnyvale, CA) and stored in a computer.
}
\source{
These data were obtained from the laboratory of Professor Boris
Martinac, Victor Chang Cardiac Research Institute, Darlinghurst,
Sydney, Australia.
}

\references{
Almanjahie, I. M.; Khan, R. N.; Milne, R. K.; Nomura, T;
and Martinac, B. (2015). Hidden Markov analysis of improved
bandwidth mechanosensitive ion channel data. \emph{European
Biophysics Journal} \bold{44}, issue 7, pp. 545--556, DOI:
https://doi.org/10.1007/s00249-015-1060-7.

Almanjahie, I. M.; Khan, R. N.; Milne, R. K.; Nomura, T.; and
Martinac, B. (2019). Moving average filtering with deconvolution
(MAD) for hidden Markov model with filtering and correlated
noise. \emph{European Biophysics Journal} \bold{48}, issue 4,
pp. 383--393, DOI: https://doi.org/10.1007/s00249-019-01368-1.

Delcour, A. H.; Martinac, B.; Adler, J.; Kung, C. (1989).  A modified
reconstitution method used in patch-clamp studies of Escherichia
coli ion channels. Biophysics Journal \bold{56}, pp. 631--636.

H\'{a}se, C. C.; Le Dain,  A. C.; Martinac, B. (1995). Purification
and functional reconstitution of the recombinant large
mechanosensitive ion channel (MscL) of Escherichia coli. Journal
of Biological Chemistry \bold{270} pp. 18329--18334.

Khan, R. N.;  Martinac, B.; Madsen, B. W.;  Milne, R. K.; Yeo, G. F.;
and Edeson, R. O. (2005).  Hidden Markov analysis of mechanosensitive
ion channel gating. \emph{Mathematical Biosciences} \bold{193},
issue 2, pp. 139--158, DOI: https://doi.org/10.1016/j.mbs.2004.07.007.

Martinac, B.; Rohde, P. R.; Battle, A. R.; Petrov, P. P.;  Foo;
A. F.; V\'{a}squez, V.; Huynh, T.; Kloda, A. (2010). Studying
mechanosensitive ion channels using liposomes. In \emph{Liposomes:
Methods and Protocols, Volume 2: Biological Membrane Models},
Volkmar Weissig ed., \emph{Springer} book series \emph{Methods in
Molecular Biology} \bold{606}, pp. 31--53.
}

\examples{
if(requireNamespace("eglhmm")) {
    # Extract tiny subset, to run fast.
    X    <- ionChannelData::ic25kHz_12_sgmnt1[1:1000,1,drop=FALSE]
    fit0 <- eglhmm::eglhmm(current ~ 1,data=X,distr="Gaussian",K=7,
                   method="em",tolerance=1e-6,verb=TRUE,itmax=1000)
}
\dontrun{ # Takes a VERY long time.  Total of 645 EM steps.
    if(requireNamespace("eglhmm")) {
        X    <- ic25kHz_12_sgmnt1
        fit1 <- eglhmm::eglhmm(current ~ 1,data=X,distr="Gaussian",K=7,
                method="em",tolerance=1e-6,verb=TRUE,itmax=1000)
# Compare results from depmixS4.
        if(requireNamespace("depmixS4")) {
            mdl  <- depmixS4::depmix(current ~ 1, data=X, nstates=7,
                                     family=gaussian())
            set.seed(42) # To make the random starting values repeatable.
            fit2 <- depmixS4::fit(mdl,emcontrol=em.control(maxit=1000))
        }
    }
}
}
\keyword{datasets}
