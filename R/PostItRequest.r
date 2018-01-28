# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PostItRequest Class
#'
#' @field url 
#' @field internalUsername 
#' @field method 
#' @field lifetime 
#' @field maxUses 
#' @field noauth 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PostItRequest <- R6::R6Class(
  'PostItRequest',
  public = list(
    `url` = NULL,
    `internalUsername` = NULL,
    `method` = NULL,
    `lifetime` = NULL,
    `maxUses` = NULL,
    `noauth` = NULL,
    initialize = function(`url`, `internalUsername`, `method`, `lifetime`, `maxUses`, `noauth`){
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`internalUsername`)) {
        stopifnot(is.character(`internalUsername`), length(`internalUsername`) == 1)
        self$`internalUsername` <- `internalUsername`
      }
      if (!missing(`method`)) {
        stopifnot(R6::is.R6(`method`))
        self$`method` <- `method`
      }
      if (!missing(`lifetime`)) {
        stopifnot(is.numeric(`lifetime`), length(`lifetime`) == 1)
        self$`lifetime` <- `lifetime`
      }
      if (!missing(`maxUses`)) {
        stopifnot(is.numeric(`maxUses`), length(`maxUses`) == 1)
        self$`maxUses` <- `maxUses`
      }
      if (!missing(`noauth`)) {
        self$`noauth` <- `noauth`
      }
    },
    toJSON = function() {
      PostItRequestObject <- list()
      if (!is.null(self$`url`)) {
        PostItRequestObject[['url']] <- self$`url`
      }
      if (!is.null(self$`internalUsername`)) {
        PostItRequestObject[['internalUsername']] <- self$`internalUsername`
      }
      if (!is.null(self$`method`)) {
        PostItRequestObject[['method']] <- self$`method`$toJSON()
      }
      if (!is.null(self$`lifetime`)) {
        PostItRequestObject[['lifetime']] <- self$`lifetime`
      }
      if (!is.null(self$`maxUses`)) {
        PostItRequestObject[['maxUses']] <- self$`maxUses`
      }
      if (!is.null(self$`noauth`)) {
        PostItRequestObject[['noauth']] <- self$`noauth`
      }

      PostItRequestObject
    },
    fromJSON = function(PostItRequestObject) {
      if (!is.null(PostItRequestObject$`url`)) {
        self$`url` <- PostItRequestObject$`url`
      }
      if (!is.null(PostItRequestObject$`internalUsername`)) {
        self$`internalUsername` <- PostItRequestObject$`internalUsername`
      }
      if (!is.null(PostItRequestObject$`method`)) {
        methodObject <- PostItRequestMethod$new()
        methodObject$fromJSON(jsonlite::toJSON(PostItRequestObject$method, auto_unbox = TRUE))
        self$`method` <- methodObject
      }
      if (!is.null(PostItRequestObject$`lifetime`)) {
        self$`lifetime` <- PostItRequestObject$`lifetime`
      }
      if (!is.null(PostItRequestObject$`maxUses`)) {
        self$`maxUses` <- PostItRequestObject$`maxUses`
      }
      if (!is.null(PostItRequestObject$`noauth`)) {
        self$`noauth` <- PostItRequestObject$`noauth`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "url": %s,
           "internalUsername": %s,
           "method": %s,
           "lifetime": %d,
           "maxUses": %d,
           "noauth": %s
        }',
        self$`url`,
        self$`internalUsername`,
        self$`method`$toJSON(),
        self$`lifetime`,
        self$`maxUses`,
        self$`noauth`
      )
    },
    fromJSONString = function(PostItRequestJson) {
      PostItRequestObject <- jsonlite::fromJSON(PostItRequestJson)
      self$`url` <- PostItRequestObject$`url`
      self$`internalUsername` <- PostItRequestObject$`internalUsername`
      PostItRequestMethodObject <- PostItRequestMethod$new()
      self$`method` <- PostItRequestMethodObject$fromJSON(jsonlite::toJSON(PostItRequestObject$method, auto_unbox = TRUE))
      self$`lifetime` <- PostItRequestObject$`lifetime`
      self$`maxUses` <- PostItRequestObject$`maxUses`
      self$`noauth` <- PostItRequestObject$`noauth`
    }
  )
)