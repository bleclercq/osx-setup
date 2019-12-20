#!/bin/bash

function progress_bar() {
    local width=80
    local percentage=$1
    shift
    # create a string of spaces, then change them to dots
    printf -v dots "%*s" "$(( $percentage*$width/100 ))" ""; dots=${dots// /.};
    # print those dots on a fixed-width space plus the percentage etc. 
    printf "\r\e[K|%-*s| %3d %% | %s" "$width" "$dots" "$percentage" "$*"; 
}