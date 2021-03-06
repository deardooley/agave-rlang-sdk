# Agave Platform Science API
#
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
#
# Agave Platform version: 2.2.14
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SystemAuthConfig Class
#'
#' 
#'
#' @field credential The credential used to authenticate to the remote system. Depending on the authentication protocol of the remote system, this could be an OAuth Token, X.509 certificate, Kerberose token, or an private key..
#' @field internalUsername The username of the internal user associated with this credential.
#' @field password The password on the remote system used to authenticate.
#' @field publicKey The public ssh key used to authenticate to the remote system.
#' @field privateKey The public ssh key used to authenticate to the remote system..
#' @field server 
#' @field type 
#' @field username The local username on the remote system used to authenticate.
#' @field caCerts A public URL to the location of the trusted CA certs to use with this credential.
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SystemAuthConfig <- R6::R6Class(
  'SystemAuthConfig',
  public = list(
    `credential` = NULL,
    `internalUsername` = NULL,
    `password` = NULL,
    `publicKey` = NULL,
    `privateKey` = NULL,
    `server` = NULL,
    `type` = NULL,
    `username` = NULL,
    `caCerts` = NULL,
    initialize = function(`credential`, `internalUsername`, `password`, `publicKey`, `privateKey`, `server`, `type`, `username`, `caCerts`){
      if (!missing(`credential`)) {
        stopifnot(is.character(`credential`), length(`credential`) == 1)
        self$`credential` <- `credential`
      }
      if (!missing(`internalUsername`)) {
        stopifnot(is.character(`internalUsername`), length(`internalUsername`) == 1)
        self$`internalUsername` <- `internalUsername`
      }
      if (!missing(`password`)) {
        stopifnot(is.character(`password`), length(`password`) == 1)
        self$`password` <- `password`
      }
      if (!missing(`publicKey`)) {
        stopifnot(is.character(`publicKey`), length(`publicKey`) == 1)
        self$`publicKey` <- `publicKey`
      }
      if (!missing(`privateKey`)) {
        stopifnot(is.character(`privateKey`), length(`privateKey`) == 1)
        self$`privateKey` <- `privateKey`
      }
      if (!missing(`server`)) {
        stopifnot(R6::is.R6(`server`))
        self$`server` <- `server`
      }
      if (!missing(`type`)) {
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
      }
      if (!missing(`username`)) {
        stopifnot(is.character(`username`), length(`username`) == 1)
        self$`username` <- `username`
      }
      if (!missing(`caCerts`)) {
        stopifnot(is.character(`caCerts`), length(`caCerts`) == 1)
        self$`caCerts` <- `caCerts`
      }
    },
    asJSON = function() {
      self$toJSON()
    },
    toJSON = function() {
      SystemAuthConfigObject <- list()
      if (!is.null(self$`credential`)) {
        SystemAuthConfigObject[['credential']] <- self$`credential`
      }
      else {
        SystemAuthConfigObject[['credential']] <- NULL
      }
      if (!is.null(self$`internalUsername`)) {
        SystemAuthConfigObject[['internalUsername']] <- self$`internalUsername`
      }
      else {
        SystemAuthConfigObject[['internalUsername']] <- NULL
      }
      if (!is.null(self$`password`)) {
        SystemAuthConfigObject[['password']] <- self$`password`
      }
      else {
        SystemAuthConfigObject[['password']] <- NULL
      }
      if (!is.null(self$`publicKey`)) {
        SystemAuthConfigObject[['publicKey']] <- self$`publicKey`
      }
      else {
        SystemAuthConfigObject[['publicKey']] <- NULL
      }
      if (!is.null(self$`privateKey`)) {
        SystemAuthConfigObject[['privateKey']] <- self$`privateKey`
      }
      else {
        SystemAuthConfigObject[['privateKey']] <- NULL
      }
      if (!is.null(self$`server`)) {
        SystemAuthConfigObject[['server']] <- self$`server`$toJSON()
      }
      else {
        SystemAuthConfigObject[['server']] <- NULL
      }
      if (!is.null(self$`type`)) {
        SystemAuthConfigObject[['type']] <- self$`type`$toJSON()
      }
      else {
        SystemAuthConfigObject[['type']] <- NULL
      }
      if (!is.null(self$`username`)) {
        SystemAuthConfigObject[['username']] <- self$`username`
      }
      else {
        SystemAuthConfigObject[['username']] <- NULL
      }
      if (!is.null(self$`caCerts`)) {
        SystemAuthConfigObject[['caCerts']] <- self$`caCerts`
      }
      else {
        SystemAuthConfigObject[['caCerts']] <- NULL
      }

      SystemAuthConfigObject
    },
    fromJSON = function(SystemAuthConfigObject) {
      if (is.character(SystemAuthConfigObject)) {
        SystemAuthConfigObject <- jsonlite::fromJSON(SystemAuthConfigJson)
      }

      if ("result" %in% names(SystemAuthConfigObject)) {
        SystemAuthConfigObject <- SystemAuthConfigObject$result
      }

      if (!is.null(SystemAuthConfigObject$`credential`)) {
        self$`credential` <- SystemAuthConfigObject$`credential`
      }
      if (!is.null(SystemAuthConfigObject$`internalUsername`)) {
        self$`internalUsername` <- SystemAuthConfigObject$`internalUsername`
      }
      if (!is.null(SystemAuthConfigObject$`password`)) {
        self$`password` <- SystemAuthConfigObject$`password`
      }
      if (!is.null(SystemAuthConfigObject$`publicKey`)) {
        self$`publicKey` <- SystemAuthConfigObject$`publicKey`
      }
      if (!is.null(SystemAuthConfigObject$`privateKey`)) {
        self$`privateKey` <- SystemAuthConfigObject$`privateKey`
      }
      if (!is.null(SystemAuthConfigObject$`server`)) {
        serverObject <- SystemAuthConfigServer$new()
        serverObject$fromJSON(jsonlite::toJSON(SystemAuthConfigObject$server, auto_unbox = TRUE))
        self$`server` <- serverObject
      }
      if (!is.null(SystemAuthConfigObject$`type`)) {
        typeObject <- SystemLoginAuthenticationType$new()
        typeObject$fromJSON(jsonlite::toJSON(SystemAuthConfigObject$type, auto_unbox = TRUE))
        self$`type` <- typeObject
      }
      if (!is.null(SystemAuthConfigObject$`username`)) {
        self$`username` <- SystemAuthConfigObject$`username`
      }
      if (!is.null(SystemAuthConfigObject$`caCerts`)) {
        self$`caCerts` <- SystemAuthConfigObject$`caCerts`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "credential": %s,
           "internalUsername": %s,
           "password": %s,
           "publicKey": %s,
           "privateKey": %s,
           "server": %s,
           "type": %s,
           "username": %s,
           "caCerts": %s
        }',
        ifelse( is.null(self$`credential`),"null",paste0(c('"', self$`credential`, '"'))),
        ifelse( is.null(self$`internalUsername`),"null",paste0(c('"', self$`internalUsername`, '"'))),
        ifelse( is.null(self$`password`),"null",paste0(c('"', self$`password`, '"'))),
        ifelse( is.null(self$`publicKey`),"null",paste0(c('"', self$`publicKey`, '"'))),
        ifelse( is.null(self$`privateKey`),"null",paste0(c('"', self$`privateKey`, '"'))),
        self$`server`$toJSON(),
        self$`type`$toJSON(),
        ifelse( is.null(self$`username`),"null",paste0(c('"', self$`username`, '"'))),
        ifelse( is.null(self$`caCerts`),"null",paste0(c('"', self$`caCerts`, '"')))
      )
    },
    fromJSONString = function(SystemAuthConfigJson) {
      SystemAuthConfigObject <- jsonlite::fromJSON(SystemAuthConfigJson)
      self::fromJSON(SystemAuthConfigObject)

    }
  )
)
