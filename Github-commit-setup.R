install.packages("usethis")
library(usethis)
use_git_config(user.name = "tehreemf306-hash", user.email = "tehreemf306@gmail.com")
create_github_token()
install.packages("gitcreds")  # Just in case you don't have it yet
library(gitcreds)            # This "opens" the package
gitcreds_set()               # Now the function will work
use_github()
# 2. Connect this folder to your GitHub account
usethis::use_github()