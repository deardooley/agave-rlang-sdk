# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Tag Class
#'
#' Base tag object
#'
#' @field id uuid of this tag
#' @field name name of tag
#' @field created Date tag was created
#' @field lastUpdated Date tag was last updated
#' @field resources The list of resource uuid associated with this tag
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Tag <- R6::R6Class(
  'Tag',
  public = list(
    `id` = NULL,
    `name` = NULL,
    `created` = NULL,
    `lastUpdated` = NULL,
    `resources` = NULL,
    initialize = function(`id`, `name`, `created`, `lastUpdated`, `resources`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`created`)) {
        stopifnot(is.character(`created`), length(`created`) == 1)
        self$`created` <- `created`
      }
      if (!missing(`lastUpdated`)) {
        stopifnot(is.character(`lastUpdated`), length(`lastUpdated`) == 1)
        self$`lastUpdated` <- `lastUpdated`
      }
      if (!missing(`resources`)) {
        stopifnot(is.list(`resources`), length(`resources`) != 0)
        lapply(`resources`, function(x) stopifnot(R6::is.R6(x)))
        self$`resources` <- `resources`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      TagObject <- list()
      if (!is.null(self$`id`)) {
        TagObject[['id']] <- self$`id`
      }
      else {
        TagObject[['id']] <- NULL
      }
      if (!is.null(self$`name`)) {
        TagObject[['name']] <- self$`name`
      }
      else {
        TagObject[['name']] <- NULL
      }
      if (!is.null(self$`created`)) {
        TagObject[['created']] <- self$`created`
      }
      else {
        TagObject[['created']] <- NULL
      }
      if (!is.null(self$`lastUpdated`)) {
        TagObject[['lastUpdated']] <- self$`lastUpdated`
      }
      else {
        TagObject[['lastUpdated']] <- NULL
      }
      if (!is.null(self$`resources`)) {
        TagObject[['resources']] <- lapply(self$`resources`, function(x) x$toJSON())
      }
      else {
        TagObject[['resources']] <- NULL
      }

      TagObject
    },
    fromJSON = function(TagObject) {
      if (is.character(TagObject)) {
        TagObject <- jsonlite::fromJSON(TagJson)
      }

      if ("result" %in% names(TagObject)) {
        TagObject <- TagObject$result
      }

      if (!is.null(TagObject$`id`)) {
        self$`id` <- TagObject$`id`
      }
      if (!is.null(TagObject$`name`)) {
        self$`name` <- TagObject$`name`
      }
      if (!is.null(TagObject$`created`)) {
        self$`created` <- TagObject$`created`
      }
      if (!is.null(TagObject$`lastUpdated`)) {
        self$`lastUpdated` <- TagObject$`lastUpdated`
      }
      if (!is.null(TagObject$`resources`)) {
        self$`resources` <- lapply(TagObject$`resources`, function(x) {
          resourcesObject <- TagResource$new()
          resourcesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          resourcesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "name": %s,
           "created": %s,
           "lastUpdated": %s,
           "resources": [%s]
        }',
        ifelse( is.null(self$`id`),"null",paste0(c('"', self$`id`, '"'))),
        ifelse( is.null(self$`name`),"null",paste0(c('"', self$`name`, '"'))),
        ifelse( is.null(self$`created`),"null",paste0(c('"', self$`created`, '"'))),
        ifelse( is.null(self$`lastUpdated`),"null",paste0(c('"', self$`lastUpdated`, '"'))),
        lapply(self$`resources`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(TagJson) {
      TagObject <- jsonlite::fromJSON(TagJson)
      self::fromJSON(TagObject)

    }
  )
)
