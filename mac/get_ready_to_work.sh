WORK_TOOLS=(
  "https://jira.musinsa.com/login.jsp?os_destination=%2Fsecure%2FRapidBoard.jspa%3FrapidView%3D178%26projectKey%3DSYSTEM%26quickFilter%3D634"
  "https://jira.musinsa.com/secure/RapidBoard.jspa?rapidView=225&projectKey=MUFRA&selectedIssue=MUFRA-28&quickFilter=909"
  "https://wiki.musinsa.com/pages/viewpage.action?pageId=1507333"
)

cowsay -f tux Good morning, Chloe!

if [[ -n "$1" ]] && [[ $1 == "moro" ]]; then
  moro hi
fi

fortune -s | cowsay

# Jandi
open -a "Jandi"

# Slack
open -a "Slack"

# Notion
open -a "Notion"

# OpenVPN Connect
open -a  "OpenVPN Connect"

# Groupware
open "http://gw.musinsa.com/gw/uat/uia/egovLoginUsr.do"

# AWS Console
open "https://us-east-1.signin.aws.amazon.com/oauth?SignatureVersion=4&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJMOATPLHVSJ563XQ&X-Amz-Date=2021-02-13T07%3A40%3A26.435Z&X-Amz-Signature=9fb90b99392994cb26172973ec7082f335ca434867f7aedac7e05eeb7243a31d&X-Amz-SignedHeaders=host&client_id=arn%3Aaws%3Aiam%3A%3A015428540659%3Auser%2Fhomepage&code_challenge=aGCGgqAZI0hgbuk_CleRUXi8Q9AdlE7_7y-ccAHqATg&code_challenge_method=SHA-256&nc2=h_ct&redirect_uri=https%3A%2F%2Fconsole.aws.amazon.com%2Fconsole%2Fhome%3Fnc2%3Dh_ct%26src%3Dheader-signin%26state%3DhashArgs%2523%26isauthcode%3Dtrue&response_type=code&src=header-signin&state=hashArgs%23"

# Jira & Confluence
open -na "Google Chrome" --args --new-window ${WORK_TOOLS[@]}
