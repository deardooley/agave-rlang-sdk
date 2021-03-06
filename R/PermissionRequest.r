# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PermissionRequest Class
#'
#' A permission request for a given user on the given resource
#'
#' @field username The name of the user for this permission object.
#' @field permission 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PermissionRequest <- R6::R6Class(
  'PermissionRequest',
  public = list(
    `username` = NULL,
    `permission` = NULL,
    initialize = function(`username`, `permission`){
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!missing(`permission`)) {
        stopifnot(R6::is.R6(`permission`))
        self$`permission` <- `permission`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      PermissionRequestObject <- list()
      if (!is.null(self$`username`)) {
        PermissionRequestObject[['username']] <- self$`username`
      }
      else {
        PermissionRequestObject[['username']] <- NULL
      }
      if (!is.null(self$`permission`)) {
        PermissionRequestObject[['permission']] <- self$`permission`$toJSON()
      }
      else {
        PermissionRequestObject[['permission']] <- NULL
      }

      PermissionRequestObject
    },
    fromJSON = function(PermissionRequestObject) {
      if (is.character(PermissionRequestObject)) {
        PermissionRequestObject <- jsonlite::fromJSON(PermissionRequestJson)
      }

      if ("result" %in% names(PermissionRequestObject)) {
        PermissionRequestObject <- PermissionRequestObject$result
      }

      if (!is.null(PermissionRequestObject$`username`)) {
        self$`username` <- PermissionRequestObject$`username`
      }
      if (!is.null(PermissionRequestObject$`permission`)) {
        permissionObject <- PermissionType$new()
        permissionObject$fromJSON(jsonlite::toJSON(PermissionRequestObject$permission, auto_unbox = TRUE))
        self$`permission` <- permissionObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "username": %s,
           "permission": %s
        }',
        ifelse( is.null(self$`username`),"null",paste0(c('"', self$`username`, '"'))),
        self$`permission`$toJSON()
      )
    },
    fromJSONString = function(PermissionRequestJson) {
      PermissionRequestObject <- jsonlite::fromJSON(PermissionRequestJson)
      self::fromJSON(PermissionRequestObject)

    }
  )
)
