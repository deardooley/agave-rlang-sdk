# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SystemLoginProtocolType Class
#'
#' 
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SystemLoginProtocolType <- R6::R6Class(
  'SystemLoginProtocolType',
  public = list(
    initialize = function(){
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      SystemLoginProtocolTypeObject <- list()

      SystemLoginProtocolTypeObject
    },
    fromJSON = function(SystemLoginProtocolTypeObject) {
      if (is.character(SystemLoginProtocolTypeObject)) {
        SystemLoginProtocolTypeObject <- jsonlite::fromJSON(SystemLoginProtocolTypeJson)
      }

      if ("result" %in% names(SystemLoginProtocolTypeObject)) {
        SystemLoginProtocolTypeObject <- SystemLoginProtocolTypeObject$result
      }

    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(SystemLoginProtocolTypeJson) {
      SystemLoginProtocolTypeObject <- jsonlite::fromJSON(SystemLoginProtocolTypeJson)
      self::fromJSON(SystemLoginProtocolTypeObject)

    }
  )
)
