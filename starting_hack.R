library(rtweet)

creds <- read.csv("twitter.config")
creds$vars <- as.character(creds$vars)

token <- create_token(app = "jake learns data science", 
                      consumer_key = creds$vars[1], 
                      consumer_secret = creds$vars[2], 
                      access_token = creds$vars[3], 
                      access_secret = creds$vars[4])

trend_opts <- trends_available(token)
as.data.frame(trend_opts[trend_opts$name == "Philadelphia",])


trends <- get_trends(woeid = "23424977", token = token)
as.data.frame(trends)

# USA: 23424977
# NYC: 2459115
# Philly: 2471217