# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('* * * * *', () =>
    robot.send {room: "#general"}, "cronテスト", null, true, "Asia/Tokyo"
  )
  cronTest.start()
