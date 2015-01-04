# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  robot.enter ->
    new cronJob
      cronTime: "* * * * * *"
      start: true
      timeZone: "Asia/Tokyo"
      onTick: ->
        robot.send { room: "#test" }, "cronテスト"
