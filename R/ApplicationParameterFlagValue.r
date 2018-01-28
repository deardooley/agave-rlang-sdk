# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApplicationParameterFlagValue Class
#'
#' @field defaultValue 
#' @field enumValues 
#' @field enquote 
#' @field order 
#' @field required 
#' @field type 
#' @field validator 
#' @field visible 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApplicationParameterFlagValue <- R6::R6Class(
  'ApplicationParameterFlagValue',
  public = list(
    `defaultValue` = NULL,
    `enumValues` = NULL,
    `enquote` = NULL,
    `order` = NULL,
    `required` = NULL,
    `type` = NULL,
    `validator` = NULL,
    `visible` = NULL,
    initialize = function(`defaultValue`, `enumValues`, `enquote`, `order`, `required`, `type`, `validator`, `visible`){
      if (!missing(`defaultValue`)) {
        stopifnot(is.character(`defaultValue`), length(`defaultValue`) == 1)
        self$`defaultValue` <- `defaultValue`
      }
      if (!missing(`enumValues`)) {
        stopifnot(is.character(`enumValues`), length(`enumValues`) == 1)
        self$`enumValues` <- `enumValues`
      }
      if (!missing(`enquote`)) {
        self$`enquote` <- `enquote`
      }
      if (!missing(`order`)) {
        stopifnot(is.numeric(`order`), length(`order`) == 1)
        self$`order` <- `order`
      }
      if (!missing(`required`)) {
        self$`required` <- `required`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`validator`)) {
        stopifnot(is.character(`validator`), length(`validator`) == 1)
        self$`validator` <- `validator`
      }
      if (!missing(`visible`)) {
        self$`visible` <- `visible`
      }
    },
    toJSON = function() {
      ApplicationParameterFlagValueObject <- list()
      if (!is.null(self$`defaultValue`)) {
        ApplicationParameterFlagValueObject[['defaultValue']] <- self$`defaultValue`
      }
      if (!is.null(self$`enumValues`)) {
        ApplicationParameterFlagValueObject[['enumValues']] <- self$`enumValues`
      }
      if (!is.null(self$`enquote`)) {
        ApplicationParameterFlagValueObject[['enquote']] <- self$`enquote`
      }
      if (!is.null(self$`order`)) {
        ApplicationParameterFlagValueObject[['order']] <- self$`order`
      }
      if (!is.null(self$`required`)) {
        ApplicationParameterFlagValueObject[['required']] <- self$`required`
      }
      if (!is.null(self$`type`)) {
        ApplicationParameterFlagValueObject[['type']] <- self$`type`
      }
      if (!is.null(self$`validator`)) {
        ApplicationParameterFlagValueObject[['validator']] <- self$`validator`
      }
      if (!is.null(self$`visible`)) {
        ApplicationParameterFlagValueObject[['visible']] <- self$`visible`
      }

      ApplicationParameterFlagValueObject
    },
    fromJSON = function(ApplicationParameterFlagValueObject) {
      if (!is.null(ApplicationParameterFlagValueObject$`defaultValue`)) {
        self$`defaultValue` <- ApplicationParameterFlagValueObject$`defaultValue`
      }
      if (!is.null(ApplicationParameterFlagValueObject$`enumValues`)) {
        self$`enumValues` <- ApplicationParameterFlagValueObject$`enumValues`
      }
      if (!is.null(ApplicationParameterFlagValueObject$`enquote`)) {
        self$`enquote` <- ApplicationParameterFlagValueObject$`enquote`
      }
      if (!is.null(ApplicationParameterFlagValueObject$`order`)) {
        self$`order` <- ApplicationParameterFlagValueObject$`order`
      }
      if (!is.null(ApplicationParameterFlagValueObject$`required`)) {
        self$`required` <- ApplicationParameterFlagValueObject$`required`
      }
      if (!is.null(ApplicationParameterFlagValueObject$`type`)) {
        self$`type` <- ApplicationParameterFlagValueObject$`type`
      }
      if (!is.null(ApplicationParameterFlagValueObject$`validator`)) {
        self$`validator` <- ApplicationParameterFlagValueObject$`validator`
      }
      if (!is.null(ApplicationParameterFlagValueObject$`visible`)) {
        self$`visible` <- ApplicationParameterFlagValueObject$`visible`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "defaultValue": %s,
           "enumValues": %s,
           "enquote": %s,
           "order": %d,
           "required": %s,
           "type": %s,
           "validator": %s,
           "visible": %s
        }',
        self$`defaultValue`,
        self$`enumValues`,
        self$`enquote`,
        self$`order`,
        self$`required`,
        self$`type`,
        self$`validator`,
        self$`visible`
      )
    },
    fromJSONString = function(ApplicationParameterFlagValueJson) {
      ApplicationParameterFlagValueObject <- jsonlite::fromJSON(ApplicationParameterFlagValueJson)
      self$`defaultValue` <- ApplicationParameterFlagValueObject$`defaultValue`
      self$`enumValues` <- ApplicationParameterFlagValueObject$`enumValues`
      self$`enquote` <- ApplicationParameterFlagValueObject$`enquote`
      self$`order` <- ApplicationParameterFlagValueObject$`order`
      self$`required` <- ApplicationParameterFlagValueObject$`required`
      self$`type` <- ApplicationParameterFlagValueObject$`type`
      self$`validator` <- ApplicationParameterFlagValueObject$`validator`
      self$`visible` <- ApplicationParameterFlagValueObject$`visible`
    }
  )
)