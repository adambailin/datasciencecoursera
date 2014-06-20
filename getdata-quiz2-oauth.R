#Oauth application client ID and secret
#
#Client ID
#0b0a625aad57fece0e9d
#Client Secret
#removed
library(jsonlite)
library(httr)
library(httpuv)

# see github tutorial here: https://github.com/hadley/httr/blob/master/demo/oauth2-github.r
oauth_endpoints("github")
myapp = oauth_app("github",
                  key="0b0a625aad57fece0e9d", secret="removed")

github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

req <- GET("https://api.github.com/users/jtleek/repos", config(token = github_token))
stop_for_status(req)

#turn the JSON data into a nice data frame
jsonData<-fromJSON(toJSON(content(req)))
print(jsonData[jsonData$url=="https://api.github.com/repos/jtleek/datasharing","created_at"])
