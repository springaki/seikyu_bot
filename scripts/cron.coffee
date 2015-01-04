# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('0 * * * * *', () =>
    robot.send { room: "#kumubot" }, "cronテスト"
  )
  cronTest.start()
