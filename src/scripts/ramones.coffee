# Description:
#  return a Ramone fact
#
# Commands:
#   hubot ramones facts - return a random Ramones fact

facts = [
  "The Ramones were an American rock band that formed in Forest Hills, Queens, New York in 1974 and is often cited as the first punk rock group."
  "On September 15, 2004, Johnny Ramone died in his Los Angeles home after a five year battle with prostate cancer."
  "In 2003 Johnny was named the #16th greatest guitarist of all time by Rolling Stone Magazine.band the Ramones"
  "Despite achieving only limited commercial success, the band was a major influence on the punk rock movement both in the United States and the United Kingdom."
  "The Ramones were ranked #26 on Rolling Stone magazine's The Immortals - The 100 Greatest Artists of All Time."
  "All of the band members adopted pseudonyms ending with the surname \"Ramone\", though none of them were actually related."
  "Joey Ramone died of lymphoma at the New York-Presbyterian Hospital on April 15, 2001."
  "They performed 2,263 concerts, touring virtually nonstop for 22 years."
  "The Ramones's hit \"I Wanna Be Sedated\" was ranked #75 on VH1's 100 Best Songs of the Past 25 Years."
  "In 2002, the Ramones were ranked the second-greatest band of all time by Spin magazine, trailing only The Beatles."
  "The Ramones's two albums 1976's The Ramones was ranked #33 and 1977's Rocket to Russia was ranked #105 on Rolling Stone magazine's The 500 Greatest Albums of All Time."
  "On March 18, 2002, the Ramones—including the three founders and drummers Marky and Tommy Ramone—were inducted into the Rock and Roll Hall of Fame."
  "The Ramones's hit \"I Wanna Be Sedated\" was ranked #71 on Rolling Stone magazine & MTV's 100 Greatest Pop Songs."
  "The Ramones's 1976 album The Ramones was ranked #54 on VH1's 100 Greatest Albums."
  "The Ramones's music video \"Psycho Therapy\" was ranked #74 on Rolling Stone magazine's The 100 Top Music Videos."
  "The Ramones were ranked #88 on VH1's 100 Greatest Artists of Rock & Roll."
  "Joey and Johnny Ramone are the only members to have never been replaced."
  "They were inducted into the Rock and Roll Hall of Fame in 2002."
  "The Ramones are #17 on VH1's 100 Greatest Artist of Hard Rock."
  "The Ramones are often referred to as the \"Godfathers of Punk\"."
  "The bass player of the band, Douglas Colvin (aka. DeeDee Ramone) died of an apparent overdose on June 6th, 2002."
]

module.exports = (robot) ->
  robot.hear /ramones/i, (msg) ->
    msg.send msg.random facts


