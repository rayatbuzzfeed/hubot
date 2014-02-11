# Description:
#   A way to search BuzzFeed List
#
# Commands:
#   hubot buzzfeed <query> - search buzzfeed 

module.exports = (robot) ->
  robot.respond /buzzfeed? (.*)/i, (msg) ->
    buzzfeedMe msg, msg.match[1], (url) ->
      msg.send url


buzzfeedMe = (msg, query, url) ->
  msg.http('http://www.buzzfeed.com/buzzfeed/search_json?q='+ query)
    .get() (err, res, body) ->
      response = JSON.parse(body)
      results = response.response?.results
      if results?.length > 0
        link  = msg.random results
        url  "http://www.buzzfeed.com" + link.campaign_uri

