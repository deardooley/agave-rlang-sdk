# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' JobStatusType Class
#'
#' 
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JobStatusType <- R6::R6Class(
  'JobStatusType',
  public = list(
    initialize = function(){
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      JobStatusTypeObject <- list()

      JobStatusTypeObject
    },
    fromJSON = function(JobStatusTypeObject) {
      if (is.character(JobStatusTypeObject)) {
        JobStatusTypeObject <- jsonlite::fromJSON(JobStatusTypeJson)
      }

      if ("result" %in% names(JobStatusTypeObject)) {
        JobStatusTypeObject <- JobStatusTypeObject$result
      }

    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(JobStatusTypeJson) {
      JobStatusTypeObject <- jsonlite::fromJSON(JobStatusTypeJson)
      self::fromJSON(JobStatusTypeObject)

    }
  )
)
