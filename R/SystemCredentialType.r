# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SystemCredentialType Class
#'
#' 
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SystemCredentialType <- R6::R6Class(
  'SystemCredentialType',
  public = list(
    initialize = function(){
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      SystemCredentialTypeObject <- list()

      SystemCredentialTypeObject
    },
    fromJSON = function(SystemCredentialTypeObject) {
      if (is.character(SystemCredentialTypeObject)) {
        SystemCredentialTypeObject <- jsonlite::fromJSON(SystemCredentialTypeJson)
      }

      if ("result" %in% names(SystemCredentialTypeObject)) {
        SystemCredentialTypeObject <- SystemCredentialTypeObject$result
      }

    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(SystemCredentialTypeJson) {
      SystemCredentialTypeObject <- jsonlite::fromJSON(SystemCredentialTypeJson)
      self::fromJSON(SystemCredentialTypeObject)

    }
  )
)
