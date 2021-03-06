\name{SSfault}
\alias{SSfault}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Strike Slip Fault}
\description{
 Plot a strike slip fault
}
\usage{
SSfault(x, y, h = 1, hoff = 0.15, rot = list(cs = 1, sn = 0),
col = "black", dextral = TRUE, lwd = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{x}{x-coordinates}
  \item{y}{y-coordinates}
 
  \item{h}{length of symbol}
  \item{hoff}{distance from line}
  \item{rot}{rotation list}
  \item{col}{color}
  \item{dextral}{logical, TRUE=dextral polarity }
  \item{lwd}{line width}
}
\details{
   Rotation vector is provided as list(cs=vector(), sn=vector()).
 
}
\value{
Graphical Side effects
}

\author{Jonathan M. Lees<jonathan.lees@unc.edu>}

\seealso{GEOsymbols}
\examples{
G=list()
G$x=c(-1.0960,-0.9942,-0.8909,-0.7846,-0.6738,-0.5570,-0.4657,-0.3709,
-0.2734,-0.1740,-0.0734, 0.0246, 0.1218, 0.2169, 0.3086, 0.3956, 0.4641, 
0.5293, 0.5919, 0.6530, 0.7131)
G$y=c(-0.72392,-0.62145,-0.52135,-0.42599,-0.33774,-0.25896,-0.20759,
-0.16160,-0.11981,-0.08105,-0.04414,-0.00885, 0.02774, 0.06759, 0.11262, 
0.16480, 0.21487, 0.27001, 0.32895, 0.39044, 0.45319)


plot(G$x, G$y, type='n',asp=1, axes=FALSE, xlab='', ylab='')

 g = PointsAlong(G$x, G$y, N=3)



 lines(G$x,G$y,col='blue')


###  left lateral strike slip: sinestral
 sk = 2
SSfault(g$x,g$y,h=sk,hoff=sk, rot=g$rot , col='blue', dextral=FALSE)
     
###  right  lateral strike slip: dextral

plot(G$x, G$y, type='n',asp=1, axes=FALSE, xlab='', ylab='')
 lines(G$x,G$y,col='blue')

SSfault(g$x,g$y,h=sk,hoff=sk, rot=g$rot , col='blue', dextral=TRUE)
     

}

\keyword{misc}
