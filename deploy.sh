set timeout 1000
set email "$env(METEOR_EMAIL)"
set password "$env(METEOR_PASSWORD)"

cd app

spawn meteor deploy $env(METEOR_DEPLOY_URL)

#puts $command
expect -- "*Email:"
send "$email\n"
expect -- "*assword:"
send -- "$password\n"
expect -- "*Now serving at $env(METEOR_DEPLOY_URL)"
