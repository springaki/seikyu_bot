# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
  cronTest = new cronJob('* * * * *', () =>
    envelope = room: "#general"
    robot.send envelope, "cronテスト"
  )
  cronTest.start()
