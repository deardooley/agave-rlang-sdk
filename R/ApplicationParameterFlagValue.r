# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApplicationParameterFlagValue Class
#'
#' An ApplicationParameter representing a flag value
#'
#' @field defaultValue The default value for this parameter. The type will be determined by the value.type field.
#' @field enumValues An array of enumerated object values.
#' @field enquote Whether the argument value should be surrounded by quotation marks before injection into the wrapper template at runtime
#' @field order The order in which this parameter should be printed when generating an execution command for forked execution. This will also be the order in which paramters are returned in the response json.
#' @field required Is this parameter required? If visible is false, this must be true.
#' @field type The type of this parameter value. (Acceptable values are: \&quot;string\&quot;, \&quot;number\&quot;, \&quot;enumeration\&quot;, \&quot;bool\&quot;, \&quot;flag\&quot;)
#' @field validator The regular expression used to validate this parameter value. For enumerations, separate values with |
#' @field visible Should this parameter be visible? If not, there must be a default and it will be required.
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
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      ApplicationParameterFlagValueObject <- list()
      if (!is.null(self$`defaultValue`)) {
        ApplicationParameterFlagValueObject[['defaultValue']] <- self$`defaultValue`
      }
      else {
        ApplicationParameterFlagValueObject[['defaultValue']] <- NULL
      }
      if (!is.null(self$`enumValues`)) {
        ApplicationParameterFlagValueObject[['enumValues']] <- self$`enumValues`
      }
      else {
        ApplicationParameterFlagValueObject[['enumValues']] <- NULL
      }
      if (!is.null(self$`enquote`)) {
        ApplicationParameterFlagValueObject[['enquote']] <- self$`enquote`
      }
      else {
        ApplicationParameterFlagValueObject[['enquote']] <- NULL
      }
      if (!is.null(self$`order`)) {
        ApplicationParameterFlagValueObject[['order']] <- self$`order`
      }
      else {
        ApplicationParameterFlagValueObject[['order']] <- NULL
      }
      if (!is.null(self$`required`)) {
        ApplicationParameterFlagValueObject[['required']] <- self$`required`
      }
      else {
        ApplicationParameterFlagValueObject[['required']] <- NULL
      }
      if (!is.null(self$`type`)) {
        ApplicationParameterFlagValueObject[['type']] <- self$`type`
      }
      else {
        ApplicationParameterFlagValueObject[['type']] <- NULL
      }
      if (!is.null(self$`validator`)) {
        ApplicationParameterFlagValueObject[['validator']] <- self$`validator`
      }
      else {
        ApplicationParameterFlagValueObject[['validator']] <- NULL
      }
      if (!is.null(self$`visible`)) {
        ApplicationParameterFlagValueObject[['visible']] <- self$`visible`
      }
      else {
        ApplicationParameterFlagValueObject[['visible']] <- NULL
      }

      ApplicationParameterFlagValueObject
    },
    fromJSON = function(ApplicationParameterFlagValueObject) {
      if (is.character(ApplicationParameterFlagValueObject)) {
        ApplicationParameterFlagValueObject <- jsonlite::fromJSON(ApplicationParameterFlagValueJson)
      }

      if ("result" %in% names(ApplicationParameterFlagValueObject)) {
        ApplicationParameterFlagValueObject <- ApplicationParameterFlagValueObject$result
      }

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
        ifelse( is.null(self$`defaultValue`),"null",paste0(c('"', self$`defaultValue`, '"'))),
        ifelse( is.null(self$`enumValues`),"null",paste0(c('"', self$`enumValues`, '"'))),
        ifelse( is.null(self$`enquote`),"null",paste0(c('"', self$`enquote`, '"'))),
        ifelse( is.null(self$`order`),"null",paste0(c('"', self$`order`, '"'))),
        ifelse( is.null(self$`required`),"null",paste0(c('"', self$`required`, '"'))),
        ifelse( is.null(self$`type`),"null",paste0(c('"', self$`type`, '"'))),
        ifelse( is.null(self$`validator`),"null",paste0(c('"', self$`validator`, '"'))),
        ifelse( is.null(self$`visible`),"null",paste0(c('"', self$`visible`, '"')))
      )
    },
    fromJSONString = function(ApplicationParameterFlagValueJson) {
      ApplicationParameterFlagValueObject <- jsonlite::fromJSON(ApplicationParameterFlagValueJson)
      self::fromJSON(ApplicationParameterFlagValueObject)

    }
  )
)
