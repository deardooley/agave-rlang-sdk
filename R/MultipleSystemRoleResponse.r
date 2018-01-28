# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MultipleSystemRoleResponse Class
#'
#' @field message 
#' @field result 
#' @field status 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MultipleSystemRoleResponse <- R6::R6Class(
  'MultipleSystemRoleResponse',
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
        stopifnot(is.list(`result`), length(`result`) != 0)
        lapply(`result`, function(x) stopifnot(R6::is.R6(x)))
        self$`result` <- `result`
      }
      if (!missing(`status`)) {
        stopifnot(is.character(`status`), length(`status`) == 1)
        self$`status` <- `status`
      }
    },
    toJSON = function() {
      MultipleSystemRoleResponseObject <- list()
      if (!is.null(self$`message`)) {
        MultipleSystemRoleResponseObject[['message']] <- self$`message`
      }
      if (!is.null(self$`result`)) {
        MultipleSystemRoleResponseObject[['result']] <- lapply(self$`result`, function(x) x$toJSON())
      }
      if (!is.null(self$`status`)) {
        MultipleSystemRoleResponseObject[['status']] <- self$`status`
      }

      MultipleSystemRoleResponseObject
    },
    fromJSON = function(MultipleSystemRoleResponseObject) {
      if (!is.null(MultipleSystemRoleResponseObject$`message`)) {
        self$`message` <- MultipleSystemRoleResponseObject$`message`
      }
      if (!is.null(MultipleSystemRoleResponseObject$`result`)) {
        self$`result` <- lapply(MultipleSystemRoleResponseObject$`result`, function(x) {
          resultObject <- SystemRoleRequest$new()
          resultObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          resultObject
        })
      }
      if (!is.null(MultipleSystemRoleResponseObject$`status`)) {
        self$`status` <- MultipleSystemRoleResponseObject$`status`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "message": %s,
           "result": [%s],
           "status": %s
        }',
        self$`message`,
        lapply(self$`result`, function(x) paste(x$toJSON(), sep=",")),
        self$`status`
      )
    },
    fromJSONString = function(MultipleSystemRoleResponseJson) {
      MultipleSystemRoleResponseObject <- jsonlite::fromJSON(MultipleSystemRoleResponseJson)
      self$`message` <- MultipleSystemRoleResponseObject$`message`
      self$`result` <- lapply(MultipleSystemRoleResponseObject$`result`, function(x) SystemRoleRequest$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`status` <- MultipleSystemRoleResponseObject$`status`
    }
  )
)