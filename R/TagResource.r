# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TagResource Class
#'
#' Resource to which a tag has been associated
#'
#' @field id uuid of the API resource
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TagResource <- R6::R6Class(
  'TagResource',
  public = list(
    `id` = NULL,
    initialize = function(`id`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      TagResourceObject <- list()
      if (!is.null(self$`id`)) {
        TagResourceObject[['id']] <- self$`id`
      }
      else {
        TagResourceObject[['id']] <- NULL
      }

      TagResourceObject
    },
    fromJSON = function(TagResourceObject) {
      if (is.character(TagResourceObject)) {
        TagResourceObject <- jsonlite::fromJSON(TagResourceJson)
      }

      if ("result" %in% names(TagResourceObject)) {
        TagResourceObject <- TagResourceObject$result
      }

      if (!is.null(TagResourceObject$`id`)) {
        self$`id` <- TagResourceObject$`id`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s
        }',
        ifelse( is.null(self$`id`),"null",paste0(c('"', self$`id`, '"')))
      )
    },
    fromJSONString = function(TagResourceJson) {
      TagResourceObject <- jsonlite::fromJSON(TagResourceJson)
      self::fromJSON(TagResourceObject)

    }
  )
)
