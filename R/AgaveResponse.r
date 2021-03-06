# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' AgaveResponse Class
#'
#' This is the wrapper within which all API responses are returned.
#'
#' @field message success or failure
#' @field status success or failure
#' @field version The current api version
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AgaveResponse <- R6::R6Class(
  'AgaveResponse',
  public = list(
    `message` = NULL,
    `status` = NULL,
    `version` = NULL,
    initialize = function(`message`, `status`, `version`){
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
      if (!missing(`version`)) {
        stopifnot(is.character(`version`), length(`version`) == 1)
        self$`version` <- `version`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      AgaveResponseObject <- list()
      if (!is.null(self$`message`)) {
        AgaveResponseObject[['message']] <- self$`message`
      }
      else {
        AgaveResponseObject[['message']] <- NULL
      }
      if (!is.null(self$`status`)) {
        AgaveResponseObject[['status']] <- self$`status`
      }
      else {
        AgaveResponseObject[['status']] <- NULL
      }
      if (!is.null(self$`version`)) {
        AgaveResponseObject[['version']] <- self$`version`
      }
      else {
        AgaveResponseObject[['version']] <- NULL
      }

      AgaveResponseObject
    },
    fromJSON = function(AgaveResponseObject) {
      if (is.character(AgaveResponseObject)) {
        AgaveResponseObject <- jsonlite::fromJSON(AgaveResponseJson)
      }

      if ("result" %in% names(AgaveResponseObject)) {
        AgaveResponseObject <- AgaveResponseObject$result
      }

      if (!is.null(AgaveResponseObject$`message`)) {
        self$`message` <- AgaveResponseObject$`message`
      }
      if (!is.null(AgaveResponseObject$`status`)) {
        self$`status` <- AgaveResponseObject$`status`
      }
      if (!is.null(AgaveResponseObject$`version`)) {
        self$`version` <- AgaveResponseObject$`version`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "message": %s,
           "status": %s,
           "version": %s
        }',
        ifelse( is.null(self$`message`),"null",paste0(c('"', self$`message`, '"'))),
        ifelse( is.null(self$`status`),"null",paste0(c('"', self$`status`, '"'))),
        ifelse( is.null(self$`version`),"null",paste0(c('"', self$`version`, '"')))
      )
    },
    fromJSONString = function(AgaveResponseJson) {
      AgaveResponseObject <- jsonlite::fromJSON(AgaveResponseJson)
      self::fromJSON(AgaveResponseObject)

    }
  )
)
