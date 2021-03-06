# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' TransformRequest Class
#'
#' 
#'
#' @field nativeFormat The original file type of the file. If not given, the file type is assumed to be raw.
#' @field url The uri to which the transformed file will be staged.
#' @field callbackUrl The URI to notify when the transfer is complete. This can be an email address or http URL. If a URL is given, a GET will be made to this address. URL templating is supported. Valid template values are: ${NAME}, ${SOURCE_FORMAT}, ${DEST_FORMAT}, ${STATUS}
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TransformRequest <- R6::R6Class(
  'TransformRequest',
  public = list(
    `nativeFormat` = NULL,
    `url` = NULL,
    `callbackUrl` = NULL,
    initialize = function(`nativeFormat`, `url`, `callbackUrl`){
      if (!missing(`nativeFormat`)) {
        stopifnot(is.character(`nativeFormat`), length(`nativeFormat`) == 1)
        self$`nativeFormat` <- `nativeFormat`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`callbackUrl`)) {
        stopifnot(is.character(`callbackUrl`), length(`callbackUrl`) == 1)
        self$`callbackUrl` <- `callbackUrl`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      TransformRequestObject <- list()
      if (!is.null(self$`nativeFormat`)) {
        TransformRequestObject[['nativeFormat']] <- self$`nativeFormat`
      }
      else {
        TransformRequestObject[['nativeFormat']] <- NULL
      }
      if (!is.null(self$`url`)) {
        TransformRequestObject[['url']] <- self$`url`
      }
      else {
        TransformRequestObject[['url']] <- NULL
      }
      if (!is.null(self$`callbackUrl`)) {
        TransformRequestObject[['callbackUrl']] <- self$`callbackUrl`
      }
      else {
        TransformRequestObject[['callbackUrl']] <- NULL
      }

      TransformRequestObject
    },
    fromJSON = function(TransformRequestObject) {
      if (is.character(TransformRequestObject)) {
        TransformRequestObject <- jsonlite::fromJSON(TransformRequestJson)
      }

      if ("result" %in% names(TransformRequestObject)) {
        TransformRequestObject <- TransformRequestObject$result
      }

      if (!is.null(TransformRequestObject$`nativeFormat`)) {
        self$`nativeFormat` <- TransformRequestObject$`nativeFormat`
      }
      if (!is.null(TransformRequestObject$`url`)) {
        self$`url` <- TransformRequestObject$`url`
      }
      if (!is.null(TransformRequestObject$`callbackUrl`)) {
        self$`callbackUrl` <- TransformRequestObject$`callbackUrl`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "nativeFormat": %s,
           "url": %s,
           "callbackUrl": %s
        }',
        ifelse( is.null(self$`nativeFormat`),"null",paste0(c('"', self$`nativeFormat`, '"'))),
        ifelse( is.null(self$`url`),"null",paste0(c('"', self$`url`, '"'))),
        ifelse( is.null(self$`callbackUrl`),"null",paste0(c('"', self$`callbackUrl`, '"')))
      )
    },
    fromJSONString = function(TransformRequestJson) {
      TransformRequestObject <- jsonlite::fromJSON(TransformRequestJson)
      self::fromJSON(TransformRequestObject)

    }
  )
)
