# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TransformEncoder Class
#'
#' @field description 
#' @field name 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TransformEncoder <- R6::R6Class(
  'TransformEncoder',
  public = list(
    `description` = NULL,
    `name` = NULL,
    initialize = function(`description`, `name`){
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    toJSON = function() {
      TransformEncoderObject <- list()
      if (!is.null(self$`description`)) {
        TransformEncoderObject[['description']] <- self$`description`
      }
      if (!is.null(self$`name`)) {
        TransformEncoderObject[['name']] <- self$`name`
      }

      TransformEncoderObject
    },
    fromJSON = function(TransformEncoderObject) {
      if (!is.null(TransformEncoderObject$`description`)) {
        self$`description` <- TransformEncoderObject$`description`
      }
      if (!is.null(TransformEncoderObject$`name`)) {
        self$`name` <- TransformEncoderObject$`name`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "description": %s,
           "name": %s
        }',
        self$`description`,
        self$`name`
      )
    },
    fromJSONString = function(TransformEncoderJson) {
      TransformEncoderObject <- jsonlite::fromJSON(TransformEncoderJson)
      self$`description` <- TransformEncoderObject$`description`
      self$`name` <- TransformEncoderObject$`name`
    }
  )
)