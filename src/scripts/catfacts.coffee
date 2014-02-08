# Description:
#   Retrieves random cat facts.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot cat fact - Reply back with random cat fact.
#
# Author:
#   scottmeyer

module.exports = (robot) ->
	robot.respond /cat fact/i, (msg) ->
		msg.http('http://catfacts-api.appspot.com/api/facts?number=1')
            .get() (error, response, body) ->
                # passes back the complete reponse
                response = JSON.parse(body)
                if response.success == "true"
                	msg.send response.facts[0]
                else
                	msg.send "Unable to get cat facts right now."
