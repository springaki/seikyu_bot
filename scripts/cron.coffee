# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('*/5 * * * *', () =>
    envelope = room: "#kumubot"
    robot.send envelope, "cronテスト"
  )
  cronTest.start()
