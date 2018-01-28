# Agave Platform Science API
# 
# Power your digital lab and reduce the time from theory to discovery using the Agave Science-as-a-Service API Platform. Agave provides hosted services that allow researchers to manage data, conduct experiments, and publish and share results from anywhere at any time.
# 
# OpenAPI spec version: 2.1.11
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SystemRequest Class
#'
#' @field description 
#' @field environment 
#' @field executionType 
#' @field id 
#' @field login 
#' @field maxSystemJobs 
#' @field maxSystemJobsPerUser 
#' @field name 
#' @field queues 
#' @field scheduler 
#' @field scratchDir 
#' @field site 
#' @field startupScript 
#' @field status 
#' @field storage 
#' @field type 
#' @field workDir 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SystemRequest <- R6::R6Class(
  'SystemRequest',
  public = list(
    `description` = NULL,
    `environment` = NULL,
    `executionType` = NULL,
    `id` = NULL,
    `login` = NULL,
    `maxSystemJobs` = NULL,
    `maxSystemJobsPerUser` = NULL,
    `name` = NULL,
    `queues` = NULL,
    `scheduler` = NULL,
    `scratchDir` = NULL,
    `site` = NULL,
    `startupScript` = NULL,
    `status` = NULL,
    `storage` = NULL,
    `type` = NULL,
    `workDir` = NULL,
    initialize = function(`description`, `environment`, `executionType`, `id`, `login`, `maxSystemJobs`, `maxSystemJobsPerUser`, `name`, `queues`, `scheduler`, `scratchDir`, `site`, `startupScript`, `status`, `storage`, `type`, `workDir`){
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`environment`)) {
        stopifnot(is.character(`environment`), length(`environment`) == 1)
        self$`environment` <- `environment`
      }
      if (!missing(`executionType`)) {
        stopifnot(R6::is.R6(`executionType`))
        self$`executionType` <- `executionType`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`login`)) {
        stopifnot(R6::is.R6(`login`))
        self$`login` <- `login`
      }
      if (!missing(`maxSystemJobs`)) {
        stopifnot(is.numeric(`maxSystemJobs`), length(`maxSystemJobs`) == 1)
        self$`maxSystemJobs` <- `maxSystemJobs`
      }
      if (!missing(`maxSystemJobsPerUser`)) {
        stopifnot(is.numeric(`maxSystemJobsPerUser`), length(`maxSystemJobsPerUser`) == 1)
        self$`maxSystemJobsPerUser` <- `maxSystemJobsPerUser`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`queues`)) {
        stopifnot(is.list(`queues`), length(`queues`) != 0)
        lapply(`queues`, function(x) stopifnot(R6::is.R6(x)))
        self$`queues` <- `queues`
      }
      if (!missing(`scheduler`)) {
        stopifnot(R6::is.R6(`scheduler`))
        self$`scheduler` <- `scheduler`
      }
      if (!missing(`scratchDir`)) {
        stopifnot(is.character(`scratchDir`), length(`scratchDir`) == 1)
        self$`scratchDir` <- `scratchDir`
      }
      if (!missing(`site`)) {
        stopifnot(is.character(`site`), length(`site`) == 1)
        self$`site` <- `site`
      }
      if (!missing(`startupScript`)) {
        stopifnot(is.character(`startupScript`), length(`startupScript`) == 1)
        self$`startupScript` <- `startupScript`
      }
      if (!missing(`status`)) {
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`storage`)) {
        stopifnot(R6::is.R6(`storage`))
        self$`storage` <- `storage`
      }
      if (!missing(`type`)) {
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
      }
      if (!missing(`workDir`)) {
        stopifnot(is.character(`workDir`), length(`workDir`) == 1)
        self$`workDir` <- `workDir`
      }
    },
    toJSON = function() {
      SystemRequestObject <- list()
      if (!is.null(self$`description`)) {
        SystemRequestObject[['description']] <- self$`description`
      }
      if (!is.null(self$`environment`)) {
        SystemRequestObject[['environment']] <- self$`environment`
      }
      if (!is.null(self$`executionType`)) {
        SystemRequestObject[['executionType']] <- self$`executionType`$toJSON()
      }
      if (!is.null(self$`id`)) {
        SystemRequestObject[['id']] <- self$`id`
      }
      if (!is.null(self$`login`)) {
        SystemRequestObject[['login']] <- self$`login`$toJSON()
      }
      if (!is.null(self$`maxSystemJobs`)) {
        SystemRequestObject[['maxSystemJobs']] <- self$`maxSystemJobs`
      }
      if (!is.null(self$`maxSystemJobsPerUser`)) {
        SystemRequestObject[['maxSystemJobsPerUser']] <- self$`maxSystemJobsPerUser`
      }
      if (!is.null(self$`name`)) {
        SystemRequestObject[['name']] <- self$`name`
      }
      if (!is.null(self$`queues`)) {
        SystemRequestObject[['queues']] <- lapply(self$`queues`, function(x) x$toJSON())
      }
      if (!is.null(self$`scheduler`)) {
        SystemRequestObject[['scheduler']] <- self$`scheduler`$toJSON()
      }
      if (!is.null(self$`scratchDir`)) {
        SystemRequestObject[['scratchDir']] <- self$`scratchDir`
      }
      if (!is.null(self$`site`)) {
        SystemRequestObject[['site']] <- self$`site`
      }
      if (!is.null(self$`startupScript`)) {
        SystemRequestObject[['startupScript']] <- self$`startupScript`
      }
      if (!is.null(self$`status`)) {
        SystemRequestObject[['status']] <- self$`status`$toJSON()
      }
      if (!is.null(self$`storage`)) {
        SystemRequestObject[['storage']] <- self$`storage`$toJSON()
      }
      if (!is.null(self$`type`)) {
        SystemRequestObject[['type']] <- self$`type`$toJSON()
      }
      if (!is.null(self$`workDir`)) {
        SystemRequestObject[['workDir']] <- self$`workDir`
      }

      SystemRequestObject
    },
    fromJSON = function(SystemRequestObject) {
      if (!is.null(SystemRequestObject$`description`)) {
        self$`description` <- SystemRequestObject$`description`
      }
      if (!is.null(SystemRequestObject$`environment`)) {
        self$`environment` <- SystemRequestObject$`environment`
      }
      if (!is.null(SystemRequestObject$`executionType`)) {
        executionTypeObject <- SystemExecutionType$new()
        executionTypeObject$fromJSON(jsonlite::toJSON(SystemRequestObject$executionType, auto_unbox = TRUE))
        self$`executionType` <- executionTypeObject
      }
      if (!is.null(SystemRequestObject$`id`)) {
        self$`id` <- SystemRequestObject$`id`
      }
      if (!is.null(SystemRequestObject$`login`)) {
        loginObject <- SystemLoginConfig$new()
        loginObject$fromJSON(jsonlite::toJSON(SystemRequestObject$login, auto_unbox = TRUE))
        self$`login` <- loginObject
      }
      if (!is.null(SystemRequestObject$`maxSystemJobs`)) {
        self$`maxSystemJobs` <- SystemRequestObject$`maxSystemJobs`
      }
      if (!is.null(SystemRequestObject$`maxSystemJobsPerUser`)) {
        self$`maxSystemJobsPerUser` <- SystemRequestObject$`maxSystemJobsPerUser`
      }
      if (!is.null(SystemRequestObject$`name`)) {
        self$`name` <- SystemRequestObject$`name`
      }
      if (!is.null(SystemRequestObject$`queues`)) {
        self$`queues` <- lapply(SystemRequestObject$`queues`, function(x) {
          queuesObject <- BatchQueue$new()
          queuesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          queuesObject
        })
      }
      if (!is.null(SystemRequestObject$`scheduler`)) {
        schedulerObject <- BatchSchedulerType$new()
        schedulerObject$fromJSON(jsonlite::toJSON(SystemRequestObject$scheduler, auto_unbox = TRUE))
        self$`scheduler` <- schedulerObject
      }
      if (!is.null(SystemRequestObject$`scratchDir`)) {
        self$`scratchDir` <- SystemRequestObject$`scratchDir`
      }
      if (!is.null(SystemRequestObject$`site`)) {
        self$`site` <- SystemRequestObject$`site`
      }
      if (!is.null(SystemRequestObject$`startupScript`)) {
        self$`startupScript` <- SystemRequestObject$`startupScript`
      }
      if (!is.null(SystemRequestObject$`status`)) {
        statusObject <- SystemStatusType$new()
        statusObject$fromJSON(jsonlite::toJSON(SystemRequestObject$status, auto_unbox = TRUE))
        self$`status` <- statusObject
      }
      if (!is.null(SystemRequestObject$`storage`)) {
        storageObject <- SystemStorageConfig$new()
        storageObject$fromJSON(jsonlite::toJSON(SystemRequestObject$storage, auto_unbox = TRUE))
        self$`storage` <- storageObject
      }
      if (!is.null(SystemRequestObject$`type`)) {
        typeObject <- SystemType$new()
        typeObject$fromJSON(jsonlite::toJSON(SystemRequestObject$type, auto_unbox = TRUE))
        self$`type` <- typeObject
      }
      if (!is.null(SystemRequestObject$`workDir`)) {
        self$`workDir` <- SystemRequestObject$`workDir`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "description": %s,
           "environment": %s,
           "executionType": %s,
           "id": %s,
           "login": %s,
           "maxSystemJobs": %d,
           "maxSystemJobsPerUser": %d,
           "name": %s,
           "queues": [%s],
           "scheduler": %s,
           "scratchDir": %s,
           "site": %s,
           "startupScript": %s,
           "status": %s,
           "storage": %s,
           "type": %s,
           "workDir": %s
        }',
        self$`description`,
        self$`environment`,
        self$`executionType`$toJSON(),
        self$`id`,
        self$`login`$toJSON(),
        self$`maxSystemJobs`,
        self$`maxSystemJobsPerUser`,
        self$`name`,
        lapply(self$`queues`, function(x) paste(x$toJSON(), sep=",")),
        self$`scheduler`$toJSON(),
        self$`scratchDir`,
        self$`site`,
        self$`startupScript`,
        self$`status`$toJSON(),
        self$`storage`$toJSON(),
        self$`type`$toJSON(),
        self$`workDir`
      )
    },
    fromJSONString = function(SystemRequestJson) {
      SystemRequestObject <- jsonlite::fromJSON(SystemRequestJson)
      self$`description` <- SystemRequestObject$`description`
      self$`environment` <- SystemRequestObject$`environment`
      SystemExecutionTypeObject <- SystemExecutionType$new()
      self$`executionType` <- SystemExecutionTypeObject$fromJSON(jsonlite::toJSON(SystemRequestObject$executionType, auto_unbox = TRUE))
      self$`id` <- SystemRequestObject$`id`
      SystemLoginConfigObject <- SystemLoginConfig$new()
      self$`login` <- SystemLoginConfigObject$fromJSON(jsonlite::toJSON(SystemRequestObject$login, auto_unbox = TRUE))
      self$`maxSystemJobs` <- SystemRequestObject$`maxSystemJobs`
      self$`maxSystemJobsPerUser` <- SystemRequestObject$`maxSystemJobsPerUser`
      self$`name` <- SystemRequestObject$`name`
      self$`queues` <- lapply(SystemRequestObject$`queues`, function(x) BatchQueue$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      BatchSchedulerTypeObject <- BatchSchedulerType$new()
      self$`scheduler` <- BatchSchedulerTypeObject$fromJSON(jsonlite::toJSON(SystemRequestObject$scheduler, auto_unbox = TRUE))
      self$`scratchDir` <- SystemRequestObject$`scratchDir`
      self$`site` <- SystemRequestObject$`site`
      self$`startupScript` <- SystemRequestObject$`startupScript`
      SystemStatusTypeObject <- SystemStatusType$new()
      self$`status` <- SystemStatusTypeObject$fromJSON(jsonlite::toJSON(SystemRequestObject$status, auto_unbox = TRUE))
      SystemStorageConfigObject <- SystemStorageConfig$new()
      self$`storage` <- SystemStorageConfigObject$fromJSON(jsonlite::toJSON(SystemRequestObject$storage, auto_unbox = TRUE))
      SystemTypeObject <- SystemType$new()
      self$`type` <- SystemTypeObject$fromJSON(jsonlite::toJSON(SystemRequestObject$type, auto_unbox = TRUE))
      self$`workDir` <- SystemRequestObject$`workDir`
    }
  )
)