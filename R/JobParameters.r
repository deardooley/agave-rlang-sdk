# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' JobParameters Class
#'
#' 
#'
#' @field parameter1 One or more parameters identified in the description of the app you&#39;re running. 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobParameters <- R6::R6Class(
  'JobParameters',
  public = list(
    `parameter1` = NULL,
    initialize = function(`parameter1`){
      if (!missing(`parameter1`)) {
        stopifnot(is.character(`parameter1`), length(`parameter1`) == 1)
        self$`parameter1` <- `parameter1`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      JobParametersObject <- list()
      if (!is.null(self$`parameter1`)) {
        JobParametersObject[['parameter1']] <- self$`parameter1`
      }
      else {
        JobParametersObject[['parameter1']] <- NULL
      }

      JobParametersObject
    },
    fromJSON = function(JobParametersObject) {
      if (is.character(JobParametersObject)) {
        JobParametersObject <- jsonlite::fromJSON(JobParametersJson)
      }

      if ("result" %in% names(JobParametersObject)) {
        JobParametersObject <- JobParametersObject$result
      }

      if (!is.null(JobParametersObject$`parameter1`)) {
        self$`parameter1` <- JobParametersObject$`parameter1`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "parameter1": %s
        }',
        ifelse( is.null(self$`parameter1`),"null",paste0(c('"', self$`parameter1`, '"')))
      )
    },
    fromJSONString = function(JobParametersJson) {
      JobParametersObject <- jsonlite::fromJSON(JobParametersJson)
      self::fromJSON(JobParametersObject)

    }
  )
)
