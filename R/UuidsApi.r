# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Agave Uuids API operations
#' @description
#' UuidsApi Class
#'
#' 
#'
#' @section Arguments:
#' \describe{
#'
#' `apiClient` a [rAgave::ApiClient] instance preconfigured to speak to the Agave Platform.
#'
#' `cache` an [rAgave::AgaveCache] instance pointing to the persistent auth cache file on disk.
#'
#' `responseType` the default object type methods of this class should return. Valid values are:
#' * **raw**: the raw JSON string response from the API. You may optionally include
#'   `pretty=TRUE` in the method call to receive pretty printed JSON.
#' * **list**: a standard R list object. This is the default value.
#' * **dt**: a data table
#'
#' }
#'
#' @usage
#' uuids <- UuidsApi$new( apiClient = ApiClient$new(), cache = AgaveCache$new() )
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' `createUuid` Generate a new UUID for a given resource type
#'
#' **Usage**
#'
#' ```
#` uuidss$createUuid$$listUuids(body, naked, )
#` ```
#'
#'
#' `resolveUuid` Resolve one or more UUID to their resource URL and type
#'
#' **Usage**
#'
#' ```
#` uuidss$resolveUuid$$listUuids(uuid, naked, expand, )
#` ```
#'
#'
#' `resolveUuids` Resolve one or more UUID to their resource URL and type
#'
#' **Usage**
#'
#' ```
#` uuidss$resolveUuids$$listUuids(naked, uuids, limit, offset, expand, search, )
#` uuidss$resolveUuids$$listUuids(search=list("foo"="bar"))
#` ```
#'
#' }
#'
#' @name UuidsApi
#' @seealso  [rAgave::ApiClient] [rAgave::Agave] [rAgave::UUIDRequest][rAgave::UUIDResolution][rAgave::UUIDSummary]
#' @export
UuidsApi <- R6::R6Class(
  'UuidsApi',
  private = list(
    userAgent = "Agave-SDK/0.2.0/r",
    apiClient = NULL,
    responseType = "list",
    formatResponse = function(resp, args=list()) {

      # read the args from the unnamed request args
      if ("responseType" %in% names(args)) {
        responseType = args$responseType
      }
      else {
        responseType = NULL
      }

      if (is.null(responseType) || nchar(responseType) == 0) {
        responseType = private$responseType
      }

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp,stringsAsFactors = FALSE), auto_unbox=TRUE, null="null", na="null"))

        if (responseType == "raw") {
          # check for the undeclared pretty attibute to pretty-print the json response
          prettyPrint <- ("pretty" %in% names(args) && isTRUE(args$pretty))
          jsonlite::toJSON(httr::content(resp, stringsAsFactors = FALSE), auto_unbox=TRUE, null="null", na="null", pretty=prettyPrint)
        }
        else {
          jsonResp <- httr::content(resp)
          if ("result" %in% names(jsonResp)) {
            jsonResp <- jsonResp$result
          }

          if ((responseType == "df" || responseType == "dataframe") && length(jsonResp) > 0) {
            # lookup properties of object. if null, it's a list. if not null, it's an object
            colNames <- names(jsonResp)
            if (is.null(colNames)) {
              # convert to a list of dataframes
              do.call("rbind", lapply(jsonResp, as.data.frame, col.names=factor(names(jsonResp[[1]]))))
            }
            else {
              # convert object to single data frame
              as.data.frame(jsonResp)
            }
          }
          else {
            jsonResp
          }
        }
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        logger.warn(jsonlite::toJSON(httr::content(resp, "text", encoding="UTF-8"), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        logger.warn(jsonlite::toJSON(httr::content(resp, "text", encoding="UTF-8"), auto_unbox=TRUE, null="null", na="null"))
        httr::content(resp)
      }
    }
  ),
  public = list(
    initialize = function(apiClient, responseType){
      if (!missing(apiClient)) {
        private$apiClient <- apiClient
      }
      else {
        private$apiClient <- ApiClient$new()
      }

      # user can override the global representation in which resources
      # responses from this API are returned in when calling methods of
      # this class. The same responseType attribute may be passed to any
      # public method to override individual calls as well.
      if (missing(responseType) || is.null(responseType) || nchar(responseType) == 0) {
        # we ignore and use the default
      }
      else if (responseType != "raw" && responseType != "list" && responseType != "df") {
        stop("Invalid responseType. Please specify one of: raw, list, df")
      }
      else {
        # set the response type to the class default to be used
        # whenever it is not explicitly set on a request
        private$responseType = responseType
      }
    },
    createUuid = function(body, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`body`)) {
        if (!is.list(`body`)) {
          body <- `body`$toJSON()
        }
      } else {
        body <- NULL
      }

      urlPath <- "/uuids/v2/"
      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      # Send the response to the common filtering method to marshal the
      # response into the format requested by the user in the Agave global
      # configuration, API class instance, or individual method invocation.
      private$formatResponse(resp, args);

    },
    resolveUuid = function(uuid, naked, expand,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`expand`)) {
        queryParams['expand'] <- expand
      }

      urlPath <- "/uuids/v2/{uuid}"
      if (!missing(`uuid`)) {
        urlPath <- gsub(paste0("\\{", "uuid", "\\}"), `uuid`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      # Send the response to the common filtering method to marshal the
      # response into the format requested by the user in the Agave global
      # configuration, API class instance, or individual method invocation.
      private$formatResponse(resp, args);

    },
    resolveUuids = function(naked, uuids, limit, offset, expand, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`uuids`)) {
        queryParams['uuids'] <- uuids
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`expand`)) {
        queryParams['expand'] <- expand
      }

      urlPath <- "/uuids/v2/"
      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      # Send the response to the common filtering method to marshal the
      # response into the format requested by the user in the Agave global
      # configuration, API class instance, or individual method invocation.
      private$formatResponse(resp, args);

    }
  )
)
