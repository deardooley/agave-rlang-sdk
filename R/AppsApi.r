# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' An app, in the context of Agave, is an executable code available for invocation through the Agave Jobs service on a specific execution system. Put another way, an app is a piece of code that you can run on a specific system. If a single code needs to be run on multiple systems, each combination of app and system needs to be defined as an app.
#' 
#' Apps are language agnostic and may or may not carry with them their own dependencies. (More on bundling your app in a moment.) Any code that can be forked at the command line or submitted to a batch scheduler can be registered as an Agave app and run through the Jobs service.
#' 
#' The Apps service is the central registry for all Agave apps. The Apps service provides permissions, validation, archiving, and revision information about each app in addition to the usual discovery capability. The rest of this tutorial explains in detail how to register an app to the Apps service, how to manage and share apps, and what the different application scopes mean.
#'
#' Read more about the Apps API in the [Agave Developer's Guide](http://docs.agaveplatform.org/#/apps)
#'
#' @title Agave Apps API operations
#' @description
#' AppsApi Class
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
#' apps <- AppsApi$new( apiClient = ApiClient$new(), cache = AgaveCache$new() )
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' `$addApp()` Register and update new applications.
#'
#' **Usage**
#'
#' ```
#' apps$addApp$listApps(naked, body, )
#' ```
#'
#'
#' `$addAppPermission()` Grant a user permission for an application.
#'
#' **Usage**
#'
#' ```
#' apps$addAppPermission$listApps(appId, body, naked, )
#' ```
#'
#'
#' `$clearAppPermissions()` Deletes all permissions on an application.
#'
#' **Usage**
#'
#' ```
#' apps$clearAppPermissions$listApps(appId, naked, )
#' ```
#'
#'
#' `$deleteApp()` Deletes an application.
#'
#' **Usage**
#'
#' ```
#' apps$deleteApp$listApps(appId, naked, )
#' ```
#'
#'
#' `$deleteAppPermission()` Deletes all permissions for the given user on an application.
#'
#' **Usage**
#'
#' ```
#' apps$deleteAppPermission$listApps(appId, username, naked, )
#' ```
#'
#'
#' `$getAppDetails()` Get details of an application by its unique id.
#'
#' **Usage**
#'
#' ```
#' apps$getAppDetails$listApps(appId, naked, search, )
#' apps$getAppDetails$listApps(search=list("foo"="bar"))
#' ```
#'
#'
#' `$getAppPermission()` Get a specific user permission for an application.
#'
#' **Usage**
#'
#' ```
#' apps$getAppPermission$listApps(appId, username, filter, naked, )
#' ```
#'
#'
#' `$getAppSubmissionForm()` Get a submission form for the named application.
#'
#' **Usage**
#'
#' ```
#' apps$getAppSubmissionForm$listApps(appId, naked, search, )
#' apps$getAppSubmissionForm$listApps(search=list("foo"="bar"))
#' ```
#'
#'
#' `$invokeAppAction()` Edit an application.
#'
#' **Usage**
#'
#' ```
#' apps$invokeAppAction$listApps(appId, body, naked, )
#' ```
#'
#'
#' `$listAppHistory()` List the event history of this app
#'
#' **Usage**
#'
#' ```
#' apps$listAppHistory$listApps(naked, appId, status, created, limit, offset, search, )
#' apps$listAppHistory$listApps(search=list("foo"="bar"))
#' ```
#'
#'
#' `$listAppPermissions()` Get the permission for this application.
#'
#' **Usage**
#'
#' ```
#' apps$listAppPermissions$listApps(appId, filter, naked, limit, offset, search, )
#' apps$listAppPermissions$listApps(search=list("foo"="bar"))
#' ```
#'
#'
#' `$listApps()` List apps
#'
#' **Usage**
#'
#' ```
#' apps$listApps$listApps(public, name, executionSystem, tags, filter, naked, limit, offset, search, )
#' apps$listApps$listApps(search=list("foo"="bar"))
#' ```
#'
#'
#' `$updateApp()` Update an application.
#'
#' **Usage**
#'
#' ```
#' apps$updateApp$listApps(appId, body, naked, )
#' ```
#'
#'
#' `$updateAppPermission()` Add or update a user permission for an application.
#'
#' **Usage**
#'
#' ```
#' apps$updateAppPermission$listApps(appId, username, body, naked, )
#' ```
#'
#' }
#'
#' @name AppsApi
#' @seealso  [rAgave::ApiClient] [rAgave::Agave] [rAgave::Application][rAgave::ApplicationAction][rAgave::ApplicationSummary][rAgave::HistoryEvent][rAgave::Permission]
#' @export
AppsApi <- R6::R6Class(
  'AppsApi',
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
    addApp = function(naked, body,  ...){
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

      urlPath <- "/apps/v2/"
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
    addAppPermission = function(appId, body, naked,  ...){
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

      urlPath <- "/apps/v2/{appId}/pems"
      if (!missing(`appId`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `appId`, urlPath)
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
    clearAppPermissions = function(appId, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}/pems"
      if (!missing(`appId`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `appId`, urlPath)
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
    deleteApp = function(appId, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}"
      if (!missing(`appId`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `appId`, urlPath)
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
    deleteAppPermission = function(appId, username, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}/pems/{username}"
      if (!missing(`appId`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `appId`, urlPath)
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
    getAppDetails = function(appId, naked, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}"
      if (!missing(`appId`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `appId`, urlPath)
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
    getAppPermission = function(appId, username, filter, naked,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`filter`)) {
        queryParams['filter'] <- filter
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}/pems/{username}"
      if (!missing(`appId`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `appId`, urlPath)
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
    getAppSubmissionForm = function(appId, naked, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`naked`)) {
        queryParams['naked'] <- naked
      }

      urlPath <- "/apps/v2/{appId}/form"
      if (!missing(`appId`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `appId`, urlPath)
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
    invokeAppAction = function(appId, body, naked,  ...){
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

      urlPath <- "/apps/v2/{appId}"
      if (!missing(`appId`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `appId`, urlPath)
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
    listAppHistory = function(naked, appId, status, created, limit, offset, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`status`)) {
        queryParams['status'] <- status
      }

      if (!missing(`created`)) {
        queryParams['created'] <- created
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

      urlPath <- "/apps/v2/{appId}/history"
      if (!missing(`appId`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `appId`, urlPath)
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
    listAppPermissions = function(appId, filter, naked, limit, offset, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`filter`)) {
        queryParams['filter'] <- filter
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

      urlPath <- "/apps/v2/{appId}/pems"
      if (!missing(`appId`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `appId`, urlPath)
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
    listApps = function(public, name, executionSystem, tags, filter, naked, limit, offset, search,  ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(search)) {
        queryParams <- search
      }

      if (!missing(`public`)) {
        queryParams['public'] <- public
      }

      if (!missing(`name`)) {
        queryParams['name'] <- name
      }

      if (!missing(`executionSystem`)) {
        queryParams['executionSystem'] <- executionSystem
      }

      if (!missing(`tags`)) {
        queryParams['tags'] <- tags
      }

      if (!missing(`filter`)) {
        queryParams['filter'] <- filter
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

      urlPath <- "/apps/v2/"
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
    updateApp = function(appId, body, naked,  ...){
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

      urlPath <- "/apps/v2/{appId}"
      if (!missing(`appId`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `appId`, urlPath)
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
    updateAppPermission = function(appId, username, body, naked,  ...){
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

      urlPath <- "/apps/v2/{appId}/pems/{username}"
      if (!missing(`appId`)) {
        urlPath <- gsub(paste0("\\{", "appId", "\\}"), `appId`, urlPath)
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
