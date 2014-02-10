# Description:
#   SheepFacts is the most important thing in your life
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot sheep facts - Receive a sheep fact

module.exports = (robot) ->

  robot.respond /sheep fact/i, (msg) ->
    msg.http("http://sheep-facts.herokuapp.com/facts")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).fact


