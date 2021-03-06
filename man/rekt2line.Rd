\name{rekt2line}
\Rdversion{1.1}
\alias{rekt2line}
\title{Rectangle Line Overlap
}
\description{Find points on a rectangle
  closest to a set of points.
}
\usage{
rekt2line(rekt, pnts)
}
\arguments{
  \item{rekt}{rectangle comprised of 4 points in
    counter clockwise direction.
}
  \item{pnts}{set of points inside the rectangle
}
}
\details{Program is used for exploding symbols to
  the edge of the rectangle input
}
\value{list ofnew poistion  x,y values 
}

\author{
Jonathan M. Lees<jonathan.lees@unc.edu>
}

\seealso{ExplodeSymbols
}
\examples{

F1 = list(x=rnorm(20), y=rnorm(20))
r1 = range(F1$x)
r2 = range(F1$y)

r1 = c(r1[1]-0.1*diff(r1), r1[2]+0.1*diff(r1))
r2 = c(r2[1]-0.1*diff(r2), r2[2]+0.1*diff(r2))



rekt = list(x=c(r1[1], r1[2], r1[2], r1[1]), y=c(r2[1], r2[1], r2[2], r2[2]))
pnts = list(x1=rep(mean(r1), length(F1$x)), y1=rep(mean(r2), length(F1$y)),x2= F1$x, y2=F1$y)
NEW = rekt2line(rekt, pnts)

plot(range(c(F1$x, NEW$x)) , range(c(F1$y, NEW$y)), type='n')
rect(r1[1], r2[1], r1[2], r2[2], border=grey(.75), lty=2)

points(F1, pch=2, col='blue')
segments(F1$x, F1$y, NEW$x, NEW$y)
points(NEW, pch=3, col='red')



}
\keyword{misc}
