% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PostitsApi.r
\docType{data}
\name{PostitsApi}
\alias{PostitsApi}
\title{Agave Postits API operations}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
postits <- PostitsApi$new( apiClient = ApiClient$new(), cache = AgaveCache$new() )
}
\description{
PostitsApi Class
}
\details{
The PostIts service is a URL shortening service similar to bit.ly, goo.gl, and t.co. It allows you to create pre-authenticated, disposable URLs to any resource in the Agave Platform. You have control over the lifetime and number of times the URL can be redeemed, and you can expire a PostIt at any time. As with all Science API resources, a full set of events is available for you to track usage and integrate the lifecycle of a PostIt into external applications as needed.

The most common use of PostIts is to create URLs to files and folders you can share with others without having to upload them to a third-party service. For example, using the PostIts service, you can share the output(s) of an experimental run, distribute materials for a class, submit data to a third-party service, and serve up assets for a static website like Agave ToGo.

Other uses cases for the PostIts service include creating “drop” folders to which anyone with the link can upload data, allowing a job to be reproducibly rerun for peer review, publishing metadata for public consumption, publishing a canonical reference to your user profile. The possibilities go on and on. Anytime you need to share your science with your world, PostIts can help you.

Read more about the Postits API in the \href{http://docs.agaveplatform.org/#/postits}{Agave Developer's Guide}
}
\section{Arguments}{

\describe{

\code{apiClient} a \link[rAgave:ApiClient]{rAgave::ApiClient} instance preconfigured to speak to the Agave Platform.

\code{cache} an \link[rAgave:AgaveCache]{rAgave::AgaveCache} instance pointing to the persistent auth cache file on disk.

\code{responseType} the default object type methods of this class should return. Valid values are:
\itemize{
\item \strong{raw}: the raw JSON string response from the API. You may optionally include
\code{pretty=TRUE} in the method call to receive pretty printed JSON.
\item \strong{list}: a standard R list object. This is the default value.
\item \strong{dt}: a data table
}

}
}

\section{Methods}{

\describe{

\code{$addPostit()} Create a new PostIt

\strong{Usage}\preformatted{postits$addPostit$listPostits(body, naked, )
}

\code{$deletePostit()} Immediately invalidates this PostIt URL.

\strong{Usage}\preformatted{postits$deletePostit$listPostits(nonce, naked, )
}

\code{$listPostits()} List existing PostIts

\strong{Usage}\preformatted{postits$listPostits$listPostits(naked, limit, offset, search, )
postits$listPostits$listPostits(search=list("foo"="bar"))
}

}
}

\seealso{
\link[rAgave:ApiClient]{rAgave::ApiClient} \link[rAgave:Agave]{rAgave::Agave} \link[rAgave:PostItRequest]{rAgave::PostIt}
}
\keyword{datasets}
