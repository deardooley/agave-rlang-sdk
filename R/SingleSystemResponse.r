# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SingleSystemResponse Class
#'
#' 
#'
#' @field message success or failure
#' @field result 
#' @field status success or failure
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SingleSystemResponse <- R6::R6Class(
  'SingleSystemResponse',
  public = list(
    `message` = NULL,
    `result` = NULL,
    `status` = NULL,
    initialize = function(`message`, `result`, `status`){
      if (!missing(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`result`)) {
        stopifnot(R6::is.R6(`result`))
        self$`result` <- `result`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      SingleSystemResponseObject <- list()
      if (!is.null(self$`message`)) {
        SingleSystemResponseObject[['message']] <- self$`message`
      }
      else {
        SingleSystemResponseObject[['message']] <- NULL
      }
      if (!is.null(self$`result`)) {
        SingleSystemResponseObject[['result']] <- self$`result`$toJSON()
      }
      else {
        SingleSystemResponseObject[['result']] <- NULL
      }
      if (!is.null(self$`status`)) {
        SingleSystemResponseObject[['status']] <- self$`status`
      }
      else {
        SingleSystemResponseObject[['status']] <- NULL
      }

      SingleSystemResponseObject
    },
    fromJSON = function(SingleSystemResponseObject) {
      if (is.character(SingleSystemResponseObject)) {
        SingleSystemResponseObject <- jsonlite::fromJSON(SingleSystemResponseJson)
      }

      if ("result" %in% names(SingleSystemResponseObject)) {
        SingleSystemResponseObject <- SingleSystemResponseObject$result
      }

      if (!is.null(SingleSystemResponseObject$`message`)) {
        self$`message` <- SingleSystemResponseObject$`message`
      }
      if (!is.null(SingleSystemResponseObject$`result`)) {
        resultObject <- System$new()
        resultObject$fromJSON(jsonlite::toJSON(SingleSystemResponseObject$result, auto_unbox = TRUE))
        self$`result` <- resultObject
      }
      if (!is.null(SingleSystemResponseObject$`status`)) {
        self$`status` <- SingleSystemResponseObject$`status`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "message": %s,
           "result": %s,
           "status": %s
        }',
        ifelse( is.null(self$`message`),"null",paste0(c('"', self$`message`, '"'))),
        self$`result`$toJSON(),
        ifelse( is.null(self$`status`),"null",paste0(c('"', self$`status`, '"')))
      )
    },
    fromJSONString = function(SingleSystemResponseJson) {
      SingleSystemResponseObject <- jsonlite::fromJSON(SingleSystemResponseJson)
      self::fromJSON(SingleSystemResponseObject)

    }
  )
)
