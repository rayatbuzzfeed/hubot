# Description:
#   return a buzzfeed realtime stats
#
# Commands:
#   hubot realtime <query> - return a google analytics stats for query
#

module.exports = (robot) ->
  robot.respond /realtime? (.*)/i, (msg) ->
    gaCallback msg, msg.match[1] 

  robot.respond /realtime$/i, (msg) ->
    gaCallback msg, "buzzfeed"


gaCallback = (msg, query) ->
  msg.http('http://nagios.buzzfeed.com/cgi-bin/stats-ga')
    .get() (err, res, body) ->
       results = JSON.parse(body)
       if results?.length > 0
        for r in results
          domain = r.domain.replace(/BuzzFeed /,"")
          if domain == "buzzfeed.com"
            domain = "buzzfeed"
          if domain.toLowerCase() == query.toLowerCase()
            msg.send "stats for " + r.domain + ": " + r.value

