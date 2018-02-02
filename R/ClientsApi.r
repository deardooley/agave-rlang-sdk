# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Clients operations
#' @description rAgave.Clients
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' add_client
#'
#'
#' add_client_api_subscription
#'
#'
#' clear_client_api_subscriptions
#'
#'
#' delete_client
#'
#'
#' get_client
#'
#'
#' list_client_api_subscriptions
#'
#'
#' list_clients
#'
#' }
#'
#' @export
ClientsApi <- R6::R6Class(
  'ClientsApi',
  private = list(
    authCache = NULL,
    apiClient = NULL,
    userAgent = "Agave-SDK/0.2.0/r",
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

          if (responseType == "df" && length(jsonResp) > 0) {
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
    initialize = function(apiClient, cache, responseType) {
      if (!missing(apiClient)) {
        private$apiClient <- apiClient
      }
      else {
        private$apiClient <- ApiClient$new()
      }

      if (missing(cache)) {
        cache <- AgaveCache$new()
      }

      private$authCache <- cache

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
    add_client = function(body, updateCache, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (missing(updateCache)) {
        updateCache <- TRUE
      }
      else {
        updateCache <- isTRUE(updateCache)
      }

      if (!missing(`body`)) {
        if (!is.list(`body`)) {
          body <- `body`$toJSON()
        }
      } else {
        body <- NULL
      }

      urlPath <- "/clients/v2/"
      resp <- httr::POST(url = paste0(private$apiClient$basePath, urlPath),
                         queryParams = queryParams,
                         httr::add_headers(private$apiClient$defaultHeaders),
                         body = body,
                         encode = "form",
                         ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        if (updateCache) {
          returnObject <- Client$new()
          result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
          private$authCache$setClient(returnObject)
        }
      }

      private$formatResponse(resp, args)
    },
    add_client_api_subscription = function(clientName, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSON()
      } else {
        body <- NULL
      }

      urlPath <- "/clients/v2/{clientName}/subscriptions"
      if (!missing(`clientName`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `clientName`, urlPath)
      }

      resp <- httr::POST(url = paste0(private$apiClient$basePath, urlPath),
                         queryParams = queryParams,
                         httr::add_headers(private$apiClient$defaultHeaders),
                         encode = "form",
                         body = body,
                         ...)

      private$formatResponse(resp, args)
    },
    clear_client_api_subscriptions = function(clientName, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/clients/v2/{clientName}/subscriptions"
      if (!missing(`clientName`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `clientName`, urlPath)
      }

      resp <- httr::DELETE(url = paste0(private$apiClient$basePath, urlPath),
                           queryParams = queryParams,
                           httr::add_headers(private$apiClient$defaultHeaders),
                           body = body,
                           ...)

      private$formatResponse(resp, args)
    },
    delete_client = function(clientName, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/clients/v2/{clientName}"
      if (!missing(`clientName`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `clientName`, urlPath)
      }

      resp <- httr::DELETE(url = paste0(private$apiClient$basePath, urlPath),
                           queryParams = queryParams,
                           httr::add_headers(private$apiClient$defaultHeaders),
                           ...)

      private$formatResponse(resp, args)
    },
    get_client = function(clientName, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/clients/v2/{clientName}"
      if (!missing(`clientName`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `clientName`, urlPath)
      }

      resp <- httr::GET(url = paste0(private$apiClient$basePath, urlPath),
                        queryParams = queryParams,
                        httr::add_headers(private$apiClient$defaultHeaders),
                        ...)

      private$formatResponse(resp, args)
    },
    list_client_api_subscriptions = function(clientName, limit, offset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      urlPath <- "/clients/v2/{clientName}/subscriptions"
      if (!missing(`clientName`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `clientName`, urlPath)
      }

      resp <- httr::GET(url = paste0(private$apiClient$basePath, urlPath),
                        queryParams = queryParams,
                        httr::add_headers(private$apiClient$defaultHeaders),
                        ...)

      private$formatResponse(resp, args)
    },
    list_clients = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/clients/v2/"
      resp <- httr::GET(url = paste0(private$apiClient$basePath, urlPath),
                        queryParams = queryParams,
                        httr::add_headers(private$apiClient$defaultHeaders),
                        ...)

      private$formatResponse(resp, args)
    }
  )
)
