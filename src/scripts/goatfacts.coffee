# Description:
#   GoatFacts is the most important thing in your life
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot goat facts - Receive a goat fact

module.exports = (robot) ->

  robot.respond /goat fact/i, (msg) ->
    msg.http("http://goat-facts.herokuapp.com/facts")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).fact

  robot.respond /sheep fact/i, (msg) ->
    msg.http("http://sheep-facts.herokuapp.com/facts")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).fact


