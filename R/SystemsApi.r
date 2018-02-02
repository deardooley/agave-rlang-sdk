# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Agave Systems API operations
#' @description
#' SystemsApi Class
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
#' systems <- SystemsApi$new( apiClient = ApiClient$new(), cache = AgaveCache$new() )
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' `addExecutionSystem` Add a new execution system
#'
#' **Usage**
#'
#' ```
#` systemss$addExecutionSystem$$listSystems(body, naked, )
#` ```
#'
#'
#' `addStorageSystem` Add  a storage system
#'
#' **Usage**
#'
#' ```
#` systemss$addStorageSystem$$listSystems(body, naked, )
#` ```
#'
#'
#' `addSystemCredential` Add an internal user&#39;s credential on a system. This applies both to storage and, if applicable, login credentials.
#'
#' **Usage**
#'
#' ```
#` systemss$addSystemCredential$$listSystems(systemId, body, naked, )
#` ```
#'
#'
#' `addSystemRole` Adds a role on the system for the given user
#'
#' **Usage**
#'
#' ```
#` systemss$addSystemRole$$listSystems(systemId, body, naked, )
#` ```
#'
#'
#' `clearSystemAuthCredentials` Deletes all credentials registered to a system.
#'
#' **Usage**
#'
#' ```
#` systemss$clearSystemAuthCredentials$$listSystems(systemId, naked, )
#` ```
#'
#'
#' `clearSystemAuthCredentialsForInternalUser` Deletes all internal user credentials registered to a system.
#'
#' **Usage**
#'
#' ```
#` systemss$clearSystemAuthCredentialsForInternalUser$$listSystems(systemId, internalUsername, naked, )
#` ```
#'
#'
#' `clearSystemRoles` Deletes all roles on a system.
#'
#' **Usage**
#'
#' ```
#` systemss$clearSystemRoles$$listSystems(systemId, naked, )
#` ```
#'
#'
#' `deleteSystem` Delete a system.
#'
#' **Usage**
#'
#' ```
#` systemss$deleteSystem$$listSystems(systemId, naked, )
#` ```
#'
#'
#' `deleteSystemAuthCredentialForInternalUser` Deletes the internal user credentials for the given credential type on a system.
#'
#' **Usage**
#'
#' ```
#` systemss$deleteSystemAuthCredentialForInternalUser$$listSystems(systemId, internalUsername, credentialType, naked, )
#` ```
#'
#'
#' `deleteSystemRole` Deletes all roles for a user on a system.
#'
#' **Usage**
#'
#' ```
#` systemss$deleteSystemRole$$listSystems(systemId, username, naked, )
#` ```
#'
#'
#' `getSystemCredential` Get the internal user credential of the given type on the system.
#'
#' **Usage**
#'
#' ```
#` systemss$getSystemCredential$$listSystems(systemId, internalUsername, credentialType, naked, search, )
#` systemss$getSystemCredential$$listSystems(search=list("foo"="bar"))
#` ```
#'
#'
#' `getSystemDetails` Find information about an individual system.
#'
#' **Usage**
#'
#' ```
#` systemss$getSystemDetails$$listSystems(systemId, naked, search, )
#` systemss$getSystemDetails$$listSystems(search=list("foo"="bar"))
#` ```
#'
#'
#' `getSystemRole` Get a specific user role on this system.
#'
#' **Usage**
#'
#' ```
#` systemss$getSystemRole$$listSystems(systemId, username, naked, )
#` ```
#'
#'
#' `invokeSystemAction` Perform a management action on the system.
#'
#' **Usage**
#'
#' ```
#` systemss$invokeSystemAction$$listSystems(systemId, body, naked, )
#` ```
#'
#'
#' `listCredentialsForInternalUser` Get a list of all internal users and their credentials on this system.
#'
#' **Usage**
#'
#' ```
#` systemss$listCredentialsForInternalUser$$listSystems(systemId, internalUsername, search, )
#` systemss$listCredentialsForInternalUser$$listSystems(search=list("foo"="bar"))
#` ```
#'
#'
#' `listSystemCredentials` Get a list of all internal user credentials on this system.
#'
#' **Usage**
#'
#' ```
#` systemss$listSystemCredentials$$listSystems(systemId, naked, limit, offset, search, )
#` systemss$listSystemCredentials$$listSystems(search=list("foo"="bar"))
#` ```
#'
#'
#' `listSystemRoles` Get a list of all users and their roles on this system.
#'
#' **Usage**
#'
#' ```
#` systemss$listSystemRoles$$listSystems(systemId, naked, limit, offset, search, )
#` systemss$listSystemRoles$$listSystems(search=list("foo"="bar"))
#` ```
#'
#'
#' `listSystems` Show all systems available to the user.
#'
#' **Usage**
#'
#' ```
#` systemss$listSystems$$listSystems(naked, offset, type, default, public, limit, search, )
#` systemss$listSystems$$listSystems(search=list("foo"="bar"))
#` ```
#'
#'
#' `updateSystem` Update a system description
#'
#' **Usage**
#'
#' ```
#` systemss$updateSystem$$listSystems(systemId, body, naked, )
#` ```
#'
#'
#' `updateSystemCredential` Update an internal user credential on a system.
#'
#' **Usage**
#'
#' ```
#` systemss$updateSystemCredential$$listSystems(systemId, internalUsername, body, naked, )
#` ```
#'
#'
#' `updateSystemCredentialOfType` Add or update a credential of the given type on a system.
#'
#' **Usage**
#'
#' ```
#` systemss$updateSystemCredentialOfType$$listSystems(systemId, internalUsername, credentialType, body, naked, )
#` ```
#'
#'
#' `updateSystemRole` Update a user role on a system.
#'
#' **Usage**
#'
#' ```
#` systemss$updateSystemRole$$listSystems(systemId, username, body, naked, )
#` ```
#'
#' }
#'
#' @name SystemsApi
#' @seealso  [rAgave::ApiClient] [rAgave::Agave] [rAgave::ExecutionSystem][rAgave::MultipleSystemRoleResponse][rAgave::StorageSystem][rAgave::System][rAgave::SystemAction][rAgave::SystemAuthConfig][rAgave::SystemCredential][rAgave::SystemCredentialsResponse][rAgave::SystemRequest][rAgave::SystemRole][rAgave::SystemRoleRequest][rAgave::SystemSummary]
#' @export
SystemsApi <- R6::R6Class(
  'SystemsApi',
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
    addExecutionSystem = function(body, naked,  ...){
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

      urlPath <- "/systems/v2/"
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
    addStorageSystem = function(body, naked,  ...){
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

      urlPath <- "/systems/v2"
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
    addSystemCredential = function(systemId, body, naked,  ...){
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

      urlPath <- "/systems/v2/{systemId}/credentials"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

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
    addSystemRole = function(systemId, body, naked,  ...){
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

      urlPath <- "/systems/{systemId}/roles"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

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
    clearSystemAuthCredentials = function(systemId, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/systems/v2/{systemId}/credentials"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      # Send the response to the common filtering method to marshal the
      # response into the format requested by the user in the Agave global
      # configuration, API class instance, or individual method invocation.
      private$formatResponse(resp, args);

    },
    clearSystemAuthCredentialsForInternalUser = function(systemId, internalUsername, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/systems/v2/{systemId}/credentials/{internalUsername}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      if (!missing(`internalUsername`)) {
        urlPath <- gsub(paste0("\\{", "internalUsername", "\\}"), `internalUsername`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      # Send the response to the common filtering method to marshal the
      # response into the format requested by the user in the Agave global
      # configuration, API class instance, or individual method invocation.
      private$formatResponse(resp, args);

    },
    clearSystemRoles = function(systemId, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/systems/v2/{systemId}/roles"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      # Send the response to the common filtering method to marshal the
      # response into the format requested by the user in the Agave global
      # configuration, API class instance, or individual method invocation.
      private$formatResponse(resp, args);

    },
    deleteSystem = function(systemId, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/systems/v2/{systemId}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      # Send the response to the common filtering method to marshal the
      # response into the format requested by the user in the Agave global
      # configuration, API class instance, or individual method invocation.
      private$formatResponse(resp, args);

    },
    deleteSystemAuthCredentialForInternalUser = function(systemId, internalUsername, credentialType, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/systems/v2/{systemId}/credentials/{internalUsername}/{credentialType}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      if (!missing(`internalUsername`)) {
        urlPath <- gsub(paste0("\\{", "internalUsername", "\\}"), `internalUsername`, urlPath)
      }

      if (!missing(`credentialType`)) {
        urlPath <- gsub(paste0("\\{", "credentialType", "\\}"), `credentialType`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      # Send the response to the common filtering method to marshal the
      # response into the format requested by the user in the Agave global
      # configuration, API class instance, or individual method invocation.
      private$formatResponse(resp, args);

    },
    deleteSystemRole = function(systemId, username, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/systems/v2/{systemId}/roles/{username}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      if (!missing(`username`)) {
        urlPath <- gsub(paste0("\\{", "username", "\\}"), `username`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      # Send the response to the common filtering method to marshal the
      # response into the format requested by the user in the Agave global
      # configuration, API class instance, or individual method invocation.
      private$formatResponse(resp, args);

    },
    getSystemCredential = function(systemId, internalUsername, credentialType, naked, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/systems/v2/{systemId}/credentials/{internalUsername}/{credentialType}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      if (!missing(`internalUsername`)) {
        urlPath <- gsub(paste0("\\{", "internalUsername", "\\}"), `internalUsername`, urlPath)
      }

      if (!missing(`credentialType`)) {
        urlPath <- gsub(paste0("\\{", "credentialType", "\\}"), `credentialType`, urlPath)
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
    getSystemDetails = function(systemId, naked, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/systems/v2/{systemId}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
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
    getSystemRole = function(systemId, username, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/systems/v2/{systemId}/roles/{username}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      if (!missing(`username`)) {
        urlPath <- gsub(paste0("\\{", "username", "\\}"), `username`, urlPath)
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
    invokeSystemAction = function(systemId, body, naked,  ...){
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

      urlPath <- "/systems/v2/{systemId}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      resp <- private$apiClient$callApi(url = paste0(private$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      # Send the response to the common filtering method to marshal the
      # response into the format requested by the user in the Agave global
      # configuration, API class instance, or individual method invocation.
      private$formatResponse(resp, args);

    },
    listCredentialsForInternalUser = function(systemId, internalUsername, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      urlPath <- "/systems/v2/{systemId}/credentials/{internalUsername}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      if (!missing(`internalUsername`)) {
        urlPath <- gsub(paste0("\\{", "internalUsername", "\\}"), `internalUsername`, urlPath)
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
    listSystemCredentials = function(systemId, naked, limit, offset, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      urlPath <- "/systems/v2/{systemId}/credentials"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
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
    listSystemRoles = function(systemId, naked, limit, offset, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      urlPath <- "/systems/v2/{systemId}/roles"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
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
    listSystems = function(naked, offset, type, default, public, limit, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`type`)) {
        queryParams['type'] <- type
      }

      if (!missing(`default`)) {
        queryParams['default'] <- default
      }

      if (!missing(`public`)) {
        queryParams['public'] <- public
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      if (!missing(`limit`)) {
        queryParams['limit'] <- limit
      }

      if (!missing(`offset`)) {
        queryParams['offset'] <- offset
      }

      urlPath <- "/systems/v2/"
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
    updateSystem = function(systemId, body, naked,  ...){
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

      urlPath <- "/systems/v2/{systemId}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

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
    updateSystemCredential = function(systemId, internalUsername, body, naked,  ...){
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

      urlPath <- "/systems/v2/{systemId}/credentials/{internalUsername}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      if (!missing(`internalUsername`)) {
        urlPath <- gsub(paste0("\\{", "internalUsername", "\\}"), `internalUsername`, urlPath)
      }

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
    updateSystemCredentialOfType = function(systemId, internalUsername, credentialType, body, naked,  ...){
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

      urlPath <- "/systems/v2/{systemId}/credentials/{internalUsername}/{credentialType}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      if (!missing(`internalUsername`)) {
        urlPath <- gsub(paste0("\\{", "internalUsername", "\\}"), `internalUsername`, urlPath)
      }

      if (!missing(`credentialType`)) {
        urlPath <- gsub(paste0("\\{", "credentialType", "\\}"), `credentialType`, urlPath)
      }

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
    updateSystemRole = function(systemId, username, body, naked,  ...){
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

      urlPath <- "/systems/v2/{systemId}/roles/{username}"
      if (!missing(`systemId`)) {
        urlPath <- gsub(paste0("\\{", "systemId", "\\}"), `systemId`, urlPath)
      }

      if (!missing(`username`)) {
        urlPath <- gsub(paste0("\\{", "username", "\\}"), `username`, urlPath)
      }

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

    }
  )
)
