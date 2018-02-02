# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Term3 Class
#'
#' 
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Term3 <- R6::R6Class(
  'Term3',
  public = list(
    initialize = function(){
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      Term3Object <- list()

      Term3Object
    },
    fromJSON = function(Term3Object) {
      if (is.character(Term3Object)) {
        Term3Object <- jsonlite::fromJSON(Term3Json)
      }

      if ("result" %in% names(Term3Object)) {
        Term3Object <- Term3Object$result
      }

    },
    toJSONString = function() {
       sprintf(
        '{
        }',
      )
    },
    fromJSONString = function(Term3Json) {
      Term3Object <- jsonlite::fromJSON(Term3Json)
      self::fromJSON(Term3Object)

    }
  )
)
