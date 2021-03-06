#Author: Stephen Linnell
#Date 2-27-16
#This script runs generic linear models on the categories for the oscars

rm(list = ls())

##Begin Best Picture Analysis
##Read in History Data
bph = read.csv("/Users/SteverMac/Oscars/scraper/bpdata.csv")
##read in the nominees for 2017
BP2017 = read.csv("/Users/SteverMac/Oscars/scraper/2017bpdata.csv")
summary(bph)
#generic linear model
bp.win = glm(bph$oscarwin ~ bph$noms + bph$wins + bph$imdbscore + bph$metascore + bph$globewin, family = binomial)
#predict on each nominee from 2017
predict(bp.win, BP2017, type="response")


#Begin Actor Data
##Actor History
adh = read.csv("/Users/SteverMac/Oscars/scraper/actordata.csv")
#Load 2017 Nominees
Ad2017 = read.csv("/Users/SteverMac/Oscars/scraper/2017actor.csv")
#generic linear model
ad.win =  glm(adh$oscarwin ~ adh$noms + adh$wins + adh$globewin, family = binomial)
#predict on each nominee data from 2017
predict(ad.win, AD2017, type="response")

##Actress Data
ash = read.csv("/Users/SteverMac/Oscars/scraper/actressdata.csv")
AS2017 = read.csv("/Users/SteverMac/Oscars/scraper/actress2017.csv")
as.win =  glm(ash$oscarwin ~ ash$noms + ash$wins + ash$globewin, family = binomial)
predict(as.win, AS2017, type="response")

#Director History
dhd = read.csv("/Users/SteverMac/Documents/Oscars/scraper/bddata.csv")
BD2017 = read.csv("/Users/SteverMac/Documents/Oscars/scraper/bddata2017.csv")
D.win =  glm(dhd$oscarwin ~ dhd$noms + dhd$wins + dhd$globewin, family = binomial)
predict(a.win, BD2017, type="response")

