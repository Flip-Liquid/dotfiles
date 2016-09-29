#function to deal with the annoying sublime errors
#Send annoying .output logs to /dev/null
function sublime
{
    nohup /opt/sublime_text/sublime_text $1 >/dev/null 2>&1 &
} 
function chrm
{
	nohup google-chrome --disable-gpu $1 >/dev/null 2>&1 &
}

#Call my sublime function
alias sublime='sblm'
alias chrm='chrome'
