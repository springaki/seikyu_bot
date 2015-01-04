# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  job = new cronJob(
    cronTime: "0 * * * * *"
    onTick: ->
      robot.send { room: "#general" }, "cronテストA"
      robot.send { room: "#kumubot" }, "cronテストB"
      return
    start: true
  )


