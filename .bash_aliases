#function to deal with the annoying sublime errors
#Send annoying .output logs to /dev/null
function sblm
{
    nohup /opt/sublime/sublime-text $1 >/dev/null 2>&1 &
} 

#Call my sublime function
alias sublime="sblm"
