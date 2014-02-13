# Description:
#   return a buzzfeed realtime stats
#
# Configuration:
#   HUBOT_BUZZFEED_GA_URL - ga url
#
# Commands:
#   hubot realtime <query> - return a google analytics stats for query
#
env = process.env

gaUrl = process.env.HUBOT_BUZZFEED_GA_URL

module.exports = (robot) ->
  robot.respond /realtime? (.*)/i, (msg) ->
    gaCallback msg, msg.match[1] 

  robot.respond /realtime$/i, (msg) ->
    gaCallback msg, "buzzfeed"


gaCallback = (msg, query) ->
  return msg.send("HUBOT_BUZZFEED_GA_URL needs to be set") if not env.HUBOT_BUZZFEED_GA_URL 

  msg.http(gaUrl)
    .get() (err, res, body) ->
       results = JSON.parse(body)
       if results?.length > 0
        for r in results
          domain = r.domain.replace(/BuzzFeed /,"")
          if domain == "buzzfeed.com"
            domain = "buzzfeed"
          if domain.toLowerCase() == query.toLowerCase()
            msg.send "stats for " + r.domain + ": " + r.value

