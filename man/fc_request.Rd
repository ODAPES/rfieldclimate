% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fieldclimate.R
\name{fc_headers}
\alias{fc_headers}
\alias{fc_request}
\title{Create authentication headers}
\usage{
fc_headers(
  method = c("GET", "PUT", "POST", "DELETE"),
  path = NULL,
  public_key = Sys.getenv("FC_PUBLIC_KEY"),
  private_key = Sys.getenv("FC_PRIVATE_KEY")
)

fc_request(
  method = c("GET", "PUT", "POST", "DELETE"),
  path = NULL,
  body = NULL,
  public_key = Sys.getenv("FC_PUBLIC_KEY"),
  private_key = Sys.getenv("FC_PRIVATE_KEY"),
  verbose = FALSE
)
}
\arguments{
\item{method}{request method}

\item{path}{request path (required)}

\item{public_key}{public key. Read by default from env variable \code{FC_PUBLIC_KEY}}

\item{private_key}{private key. Read by default from env variable \code{FC_PRIVATE_KEY}}

\item{body}{request body named list. Will be form encoded.}

\item{verbose}{logical, should the request be printed?}
}
\description{
authentication is done via hmac, see \code{\link[=fc_headers]{fc_headers()}}.
}
\examples{
fc_headers(path = "/user", public_key = "invalid", private_key = "invalid")
\dontrun{
fc_request("GET", "/user")
}
}
\seealso{
https://api.fieldclimate.com/v2/docs/#authentication-hmac
}
