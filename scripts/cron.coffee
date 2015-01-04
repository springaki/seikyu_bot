# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

cronJob = require('cron').CronJob

module.exports = (robot) ->
#  cronTest = new cronJob('0 10 1,20 * *', () =>
  cronTest = new cronJob('0-59/5 * * * *', () =>
    envelope = room: "#kumubot"
#    robot.send envelope, "請求書を作成してください。"
    robot.send envelope, "cronテスト"
  )
  cronTest.start()
