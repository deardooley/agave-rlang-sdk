# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
#
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' The Tenants API is a readonly discovery service to assist in the location,
#' configuration, and activation of Agave tenants.  The Tenants API contains
#' the canonical source of information for tenant baseUrl and identifiers,
#' which are both used to bootstrap the Agave tooling.
#'
#' @title Tenants operations
#' @description
#' TenantsApi Class
#'
#' The Tenants API is a readonly discovery service for Agave tenants.
#'
#' @section Methods:
#' \describe{
#'
#' `$getTenantDetails(codeOrUuid)` gets detailed description for an individual
#' tenant by either code or uuid.
#'
#' **Usage**
#'
#' ```
#' tenants$getTenantDetails(codeOrUuid="agave.prod")
#' ```
#'
#' `$listTenants()` List all active tenants with optional pagination;
#'
#' **Usage**
#'
#' ```
#' tenants$listTenants()
#' ```
#'
#' }
#'
#' @importFrom R6 R6Class
#' @name TenantsApi
#' @seealso [rAgave::Tenant] [rAgave::ClientsApi] [rAgave::Client]
#' @export
TenantsApi <- R6::R6Class(
  'TenantsApi',
  private = list(
    userAgent = "Agave-SDK/0.2.0/r",
    apiClient = NULL,
    responseType = "list",
    formatResponse = function(resp, args=list()) {

      # read the args from the unnamed request args
      if ("responseType" %in% names(args)) {
        responseType <- args$responseType
      }
      else {
        responseType <- NULL
      }

      if (is.null(responseType) || nchar(responseType) == 0) {
        responseType <- private$responseType
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
    initialize = function(apiClient, responseType){
      if (!missing(apiClient)) {
        private$apiClient <- apiClient
      }
      else {
        tenantDiscoveryUrl <- Sys.getenv("AGAVE_TENANT_BASE_URL")
        if (is.null(tenantDiscoveryUrl) || nchar(tenantDiscoveryUrl) == 0) {
          private$apiClient <- ApiClient$new()
        }
        else {
          private$apiClient <- ApiClient$new(tenantDiscoveryUrl)
        }
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
    getDetails = function(codeOrUuid, filter, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`filter`)) {
        queryParams['filter'] <- filter
      }

      urlPath <- "/tenants/{codeOrUuid}"
      if (!missing(`codeOrUuid`)) {
        urlPath <- gsub(paste0("\\{", "codeOrUuid", "\\}"), `codeOrUuid`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        logger.debug(jsonlite::toJSON(httr::content(resp,stringsAsFactors = FALSE), auto_unbox=TRUE, null="null", na="null"))

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

        if (responseType == "raw") {
          # check for the undeclared pretty attibute to pretty-print the json response
          prettyPrint <- ("pretty" %in% names(args) && isTRUE(args$pretty))
          jsonlite::toJSON(httr::content(resp, stringsAsFactors = FALSE), auto_unbox=TRUE, null="null", na="null", pretty=prettyPrint)
        }
        else {
          # check for a non-naked response
          jsonResp <- httr::content(resp)
          if ("result" %in% names(jsonResp)) {
            jsonResp <- jsonResp$result
          }

          # workaround for the tenants api returning back
          # an array on a resource request.
          if (length(jsonResp) > 0) {
            colNames <- names(jsonResp)

            # future proof fix for response bug.
            # lookup properties of object. if null, it's a list. if not null, it's an object
            if (is.null(colNames)) {
              jsonResp <- jsonResp[[1]]
            }
          }

          if (responseType == "df") {
            # convert object to single data frame
            as.data.frame(jsonResp)
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
    },
    list = function(filter, limit, offset, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`filter`)) {
        queryParams['filter'] <- filter
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      urlPath <- "/tenants"
      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      private$formatResponse(resp, args)
    }
  )
)
