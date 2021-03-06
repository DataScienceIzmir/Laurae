% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LossFunctions.R
\name{loss_LKL_math}
\alias{loss_LKL_math}
\title{Laurae's Kullback-Leibler Error (math function)}
\usage{
loss_LKL_math(x, y)
}
\arguments{
\item{x}{The \code{predictions}.}

\item{y}{The \code{label}.}
}
\value{
The Laurae's Kullback-Leibler Error per value.
}
\description{
This function computes the Laurae's Kullback-Leibler Error loss per value provided \code{x, y} (preds, labels) values.
}
\details{
This loss function is strictly positive, therefore defined in \code{\]0, +Inf\[}. It penalizes lower values more heavily, and as such is a good fit for typical problems requiring fine tuning when undercommitting on the predictions. Compared to Laurae's Poisson loss function, Laurae's Kullback-Leibler loss has much higher loss. This loss function is experimental.

Loss Formula : \eqn{(y_true - y_pred) * log(y_true / y_pred)}

Gradient Formula : \eqn{-((y_true - y_pred)/y_pred + log(y_true) - log(y_pred))}

Hessian Formula : \eqn{((y_true - y_pred)/y_pred + 2)/y_pred}
}
\examples{
\dontrun{
SymbolicLoss(fc = loss_LKL_math, fc_ref = loss_MSE_math, xmin = 1, xmax = 100, y = rep(30, 21))
SymbolicLoss(fc = loss_LKL_math, fc_ref = loss_Poisson_math, xmin = 1, xmax = 100, y = rep(30, 21))
}

}

