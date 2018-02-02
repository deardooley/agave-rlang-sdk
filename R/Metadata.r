# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Metadata Class
#'
#' 
#'
#' @field associationIds UUIDs of associated Agave entities, including the Data to which this Metadata belongs.
#' @field created A timestamp indicating when this Metadata was created in the metadata store.
#' @field internalUsername The name of the Internal User, if any, who owns this metadata.
#' @field lastUpdated A timestamp indicating when this Metadata was last updated in the metadata store.
#' @field name The name of this metadata
#' @field owner The API user who owns this Metadata.
#' @field uuid The UUID for this Metadata.
#' @field value A free text or JSON string containing the metadata stored for the given associationIds
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Metadata <- R6::R6Class(
  'Metadata',
  public = list(
    `associationIds` = NULL,
    `created` = NULL,
    `internalUsername` = NULL,
    `lastUpdated` = NULL,
    `name` = NULL,
    `owner` = NULL,
    `uuid` = NULL,
    `value` = NULL,
    initialize = function(`associationIds`, `created`, `internalUsername`, `lastUpdated`, `name`, `owner`, `uuid`, `value`){
      if (!missing(`associationIds`)) {
        stopifnot(is.list(`associationIds`), length(`associationIds`) != 0)
        lapply(`associationIds`, function(x) stopifnot(is.character(x)))
        self$`associationIds` <- `associationIds`
      }
      if (!missing(`created`)) {
        stopifnot(is.character(`created`), length(`created`) == 1)
        self$`created` <- `created`
      }
      if (!missing(`internalUsername`)) {
        stopifnot(is.character(`internalUsername`), length(`internalUsername`) == 1)
        self$`internalUsername` <- `internalUsername`
      }
      if (!missing(`lastUpdated`)) {
        stopifnot(is.character(`lastUpdated`), length(`lastUpdated`) == 1)
        self$`lastUpdated` <- `lastUpdated`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`owner`)) {
        stopifnot(is.character(`owner`), length(`owner`) == 1)
        self$`owner` <- `owner`
      }
      if (!missing(`uuid`)) {
        stopifnot(is.character(`uuid`), length(`uuid`) == 1)
        self$`uuid` <- `uuid`
      }
      if (!missing(`value`)) {
        stopifnot(is.character(`value`), length(`value`) == 1)
        self$`value` <- `value`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      MetadataObject <- list()
      if (!is.null(self$`associationIds`)) {
        MetadataObject[['associationIds']] <- self$`associationIds`
      }
      else {
        MetadataObject[['associationIds']] <- NULL
      }
      if (!is.null(self$`created`)) {
        MetadataObject[['created']] <- self$`created`
      }
      else {
        MetadataObject[['created']] <- NULL
      }
      if (!is.null(self$`internalUsername`)) {
        MetadataObject[['internalUsername']] <- self$`internalUsername`
      }
      else {
        MetadataObject[['internalUsername']] <- NULL
      }
      if (!is.null(self$`lastUpdated`)) {
        MetadataObject[['lastUpdated']] <- self$`lastUpdated`
      }
      else {
        MetadataObject[['lastUpdated']] <- NULL
      }
      if (!is.null(self$`name`)) {
        MetadataObject[['name']] <- self$`name`
      }
      else {
        MetadataObject[['name']] <- NULL
      }
      if (!is.null(self$`owner`)) {
        MetadataObject[['owner']] <- self$`owner`
      }
      else {
        MetadataObject[['owner']] <- NULL
      }
      if (!is.null(self$`uuid`)) {
        MetadataObject[['uuid']] <- self$`uuid`
      }
      else {
        MetadataObject[['uuid']] <- NULL
      }
      if (!is.null(self$`value`)) {
        MetadataObject[['value']] <- self$`value`
      }
      else {
        MetadataObject[['value']] <- NULL
      }

      MetadataObject
    },
    fromJSON = function(MetadataObject) {
      if (is.character(MetadataObject)) {
        MetadataObject <- jsonlite::fromJSON(MetadataJson)
      }

      if ("result" %in% names(MetadataObject)) {
        MetadataObject <- MetadataObject$result
      }

      if (!is.null(MetadataObject$`associationIds`)) {
        self$`associationIds` <- MetadataObject$`associationIds`
      }
      if (!is.null(MetadataObject$`created`)) {
        self$`created` <- MetadataObject$`created`
      }
      if (!is.null(MetadataObject$`internalUsername`)) {
        self$`internalUsername` <- MetadataObject$`internalUsername`
      }
      if (!is.null(MetadataObject$`lastUpdated`)) {
        self$`lastUpdated` <- MetadataObject$`lastUpdated`
      }
      if (!is.null(MetadataObject$`name`)) {
        self$`name` <- MetadataObject$`name`
      }
      if (!is.null(MetadataObject$`owner`)) {
        self$`owner` <- MetadataObject$`owner`
      }
      if (!is.null(MetadataObject$`uuid`)) {
        self$`uuid` <- MetadataObject$`uuid`
      }
      if (!is.null(MetadataObject$`value`)) {
        self$`value` <- MetadataObject$`value`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "associationIds": [%s],
           "created": %s,
           "internalUsername": %s,
           "lastUpdated": %s,
           "name": %s,
           "owner": %s,
           "uuid": %s,
           "value": %s
        }',
        lapply(self$`associationIds`, function(x) paste(paste0('"', x, '"'), sep=",")),
        ifelse( is.null(self$`created`),"null",paste0(c('"', self$`created`, '"'))),
        ifelse( is.null(self$`internalUsername`),"null",paste0(c('"', self$`internalUsername`, '"'))),
        ifelse( is.null(self$`lastUpdated`),"null",paste0(c('"', self$`lastUpdated`, '"'))),
        ifelse( is.null(self$`name`),"null",paste0(c('"', self$`name`, '"'))),
        ifelse( is.null(self$`owner`),"null",paste0(c('"', self$`owner`, '"'))),
        ifelse( is.null(self$`uuid`),"null",paste0(c('"', self$`uuid`, '"'))),
        ifelse( is.null(self$`value`),"null",paste0(c('"', self$`value`, '"')))
      )
    },
    fromJSONString = function(MetadataJson) {
      MetadataObject <- jsonlite::fromJSON(MetadataJson)
      self::fromJSON(MetadataObject)

    }
  )
)
