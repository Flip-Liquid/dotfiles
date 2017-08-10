##!/bin/sh

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

# $1 is the windows-formatted path
function get_fp_win () {
    local path_str="$1"
    local bash_path=$( echo "$path_str" | sed 's.\\./.g' )
    bash_path=$( echo "$bash_path" | cut -c3- )
    bash_path="/mnt/c$bash_path"
    echo "$bash_path"
}

function pushd_win () {
    local fp=$( get_fp_win $1 )
    pushd $fp
}

function cd_win (){
    local fp=$( get_fp_win $1 )
    cd $fp
}
alias sublime='sblm'
alias chrm='chrome'
