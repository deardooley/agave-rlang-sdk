# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Clients operations
#' @description swagger.Clients
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
    authCache = NULL
  ),
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient, cache) {
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
      
      if (missing(cache)) {
        cache <- AgaveCache$new()
      }
      
      private$authCache <- cache
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
      resp <- httr::POST(url = paste0(self$apiClient$basePath, urlPath),
                         queryParams = queryParams,
                         httr::add_headers(self$apiClient$defaultHeaders),
                         body = body,
                         encode = "form",
                         ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Client$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        if (updateCache) {
          private$authCache$setClient(returnObject)
        }
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }
      
    },
    add_client_api_subscription = function(client_name, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      
      if (!missing(`body`)) {
        body <- `body`$toJSON()
      } else {
        body <- NULL
      }
      
      urlPath <- "/clients/v2/{clientName}/subscriptions"
      if (!missing(`client_name`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `client_name`, urlPath)
      }
      
      resp <- httr::POST(url = paste0(self$apiClient$basePath, urlPath),
                         queryParams = queryParams,
                         httr::add_headers(self$apiClient$defaultHeaders),
                         encode = "form",
                         body = body,
                         ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- SingleSubscriptionResponse$new()
        result <- returnObject$fromJSON(httr::content(resp))
        Response$new(returnObject$result, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }
      
    },
    clear_client_api_subscriptions = function(client_name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      
      urlPath <- "/clients/v2/{clientName}/subscriptions"
      if (!missing(`client_name`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `client_name`, urlPath)
      }
      
      resp <- httr::DELETE(url = paste0(self$apiClient$basePath, urlPath),
                           queryParams = queryParams,
                           httr::add_headers(self$apiClient$defaultHeaders),
                           body = body,
                           ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- EmptyClientResponse$new()
        result <- returnObject$fromJSON(httr::content(resp))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }
      
    },
    delete_client = function(client_name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      
      urlPath <- "/clients/v2/{clientName}"
      if (!missing(`client_name`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `client_name`, urlPath)
      }
      
      resp <- httr::DELETE(url = paste0(self$apiClient$basePath, urlPath),
                           queryParams = queryParams,
                           httr::add_headers(self$apiClient$defaultHeaders),
                           ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- EmptyClientResponse$new()
        result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }
    },
    get_client = function(client_name, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      
      urlPath <- "/clients/v2/{clientName}"
      if (!missing(`client_name`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `client_name`, urlPath)
      }
      
      resp <- httr::GET(url = paste0(self$apiClient$basePath, urlPath),
                        queryParams = queryParams,
                        httr::add_headers(self$apiClient$defaultHeaders),
                        ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- Client$new()
        result <- returnObject$fromJSON(httr::content(resp))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }
    },
    list_client_api_subscriptions = function(client_name, limit, offset, ...){
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
      if (!missing(`client_name`)) {
        urlPath <- gsub(paste0("\\{", "clientName", "\\}"), `client_name`, urlPath)
      }
      
      resp <- httr::GET(url = paste0(self$apiClient$basePath, urlPath),
                        queryParams = queryParams,
                        httr::add_headers(self$apiClient$defaultHeaders),
                        ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- MultipleSubscriptionResponse$new()
        result <- returnObject$fromJSON(httr::content(resp))
        Response$new(returnObject$result, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }
      
    },
    list_clients = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()
      
      urlPath <- "/clients/v2/"
      resp <- httr::GET(url = paste0(self$apiClient$basePath, urlPath),
                        queryParams = queryParams,
                        httr::add_headers(self$apiClient$defaultHeaders),
                        ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- MultipleClientResponse$new()
        result <- returnObject$fromJSON(httr::content(resp))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }
      
    }
  )
)