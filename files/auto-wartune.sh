#!/bin/bash
# GNU GPL v.2
# Copyright (C) 2014 cmoang (temporary nickname)
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

# used commands
# current silver = 13
# current gold = 87
# free gain the following days = 13
# nin
# free silver = 26
# 
# # MYSTERYSHOP:
# have to spend 8*45 
# gold = 25
# total gold = 25+87 = 112
# 
# have to spend 8*45
# 
# #NO MYSTERYSHOP
# gold = 16
# total gold = 16+87=103
# have to spend 17*45 balens


# wilds-test-image-211-8.png --- ALAUK
# xprop_command=`which xprop`
# xdotool_command=`which xdotool`
# xte_command=`which xte`
# visgrep_command=`which visgrep`
# xwd_command=`which xwd`
# xwdtopnm_command=`which xwdtopnm`
# pnmtopng_command=`which pnmtopng`
# xwininfo_command=`which xwininfo`

# world boss go to boss while dead: x:1160 y:557 
 
# # IP=$(eval echo $`echo ${server}`_IP);
# visgrep="hi"
# # echo \$${visgrep}_$1
# eval $visgrep${1}="5"
# echo "$visgrep$1"
# echo $hiwartune_test_search_and_click
# http://www.humbug.in/2010/bash-tricks-create-variables-dynamically-using-some-eval-magic/#.UZKf2UAW2Q4

# a=foo
# b=bar
# foobar=barfoo
# barfoo=nonsense
# nonsense="sed 's/barfoo/barstool/g'"
# 
# echo $a$b
# eval echo \$$a$b
# eval eval echo \\$\$$a$b
# eval echo "\$$a$b | $nonsense"

# wildsX=18
# wildsY=8

function wilds_cartograph() {
function wilds_cartograph_follow_hero() {
for i in {1..35}; do
# echo "$i\c"

click_coordinates_fast 1508 270 # Hero
sleep .5
echo -e "Picture-$i.\c"
scrot wilds_cartograph_$wildsX-$wildsY-$i.png
sleep 4.5
done
}

# wildsX=18
# wildsY=8
# to
# wildsX=585
# wildsY=10
# 
# wilds_cartograph_set_coordinates $wildsX $wildsY
# 
# 
# wildsX=580
# wildsY=30
# wilds_cartograph_set_coordinates $wildsX $wildsY
# sleep 10
# date
# 
# wildsX=10
# wildsY=30
# wilds_cartograph_set_coordinates $wildsX $wildsY
# wilds_cartograph_follow_hero
# 
# date

# date
# 
# wildsX=10
# wildsY=50
# wilds_cartograph_set_coordinates $wildsX $wildsY; sleep 10
# 
# wildsX=580
# wildsY=50
# wilds_cartograph_set_coordinates $wildsX $wildsY
# wilds_cartograph_follow_hero
# 
# wildsX=580
# wildsY=75
# wilds_cartograph_set_coordinates $wildsX $wildsY; sleep 10
# 
# wildsX=15
# wildsY=75
# wilds_cartograph_set_coordinates $wildsX $wildsY
# wilds_cartograph_follow_hero



wildsY=100
wilds_cartograph_set_coordinates $wildsX $wildsY; sleep 10

wildsX=580
wilds_cartograph_set_coordinates $wildsX $wildsY
wilds_cartograph_follow_hero



wildsY=125
wilds_cartograph_set_coordinates $wildsX $wildsY; sleep 10

wildsX=10
wilds_cartograph_set_coordinates $wildsX $wildsY
wilds_cartograph_follow_hero


wildsY=150
wilds_cartograph_set_coordinates $wildsX $wildsY; sleep 10

wildsX=600
wilds_cartograph_set_coordinates $wildsX $wildsY
wilds_cartograph_follow_hero


wildsY=175
wilds_cartograph_set_coordinates $wildsX $wildsY; sleep 10

wildsX=1
wilds_cartograph_set_coordinates $wildsX $wildsY
wilds_cartograph_follow_hero


# wildsY=200
# wilds_cartograph_set_coordinates $wildsX $wildsY; sleep 10
# 
# wildsX=600
# wilds_cartograph_set_coordinates $wildsX $wildsY
# wilds_cartograph_follow_hero






}

function wilds_cartograph_set_coordinates {
xdotool mousemove 1505 237 click 1; #for focus window?
sleep 1
xdotool mousemove 1481 238;
xdotool click --repeat 2 1;
sleep 1s
xdotool type $1
sleep 1s
xdotool mousemove 1505 237;
xdotool click --repeat 2 1;
sleep 1s
xdotool type $2
xdotool key Return
sleep 1s; echo center
wilds_click_center
}

function wilds_move_map {
xdotool mousemove 1481 238;
xdotool click --repeat 2 1;
xdotool type $wildsX
xdotool mousemove 1505 237;
xdotool click --repeat 2 1;
xdotool type $wildsY
xdotool key Return
sleep 1s

wilds_click_center
# echo start sleeping
sleep 20
# echo end sleeping
echo -e "Picture\c"
scrot wilds-test-image-$wildsX-$wildsY.png; 
# convert -crop 940x758+530+330 wilds-test-image-$wildsX-$wildsY.png{,}
}

# scrot wilds_test_attack.png; convert -crop 940x758+530+330 wilds_test_attack.png{,}

function wilds_click_center() {
click_coordinates_fast 862 580
}

# 1 line of x = 15m

function wilds_map_move_along_x {
wildsX=18
wildsY=8
while [ $wildsX -le 585 ]; do
wildsX=`expr $wildsX + 14`
wilds_move_map
# [[ $wildsX = "15" ]] && [[ $wildsY = "8" ]] && sleep 3s
done
}


function wilds_map_move_along_y {
while [ $wildsY -le 591 ]; do
wilds_map_move_along_x
wildsY=`expr $wildsY + 14`
wildsX=15
sleep 2s
wilds_move_map
done
}


function wilds_monsters() {
start at 18,8
}

# declare -A visgrep=()

function search_and_click_fast() {
### Duration = 5 sec ###
sleep .1s
scrot "$1.png" && visgrep[$1]=$( visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1  | head -1)
[[ "${visgrep[$1]}" == ?(+|-)+([0-9]) ]]  && xdotool mousemove `visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1-2 | head -1` && sleep .2s && xdotool click 1; sleep .2s
}

function search_and_click() {
### Duration = 5 sec ###
sleep 1s
scrot "$1.png" && visgrep[$1]=$( visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1  | head -1)
[[ "${visgrep[$1]}" == ?(+|-)+([0-9]) ]]  && xdotool mousemove `visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1-2 | head -1` && sleep 2s && xdotool click 1; sleep 2s
}

function sylph_search_and_click() {
### Duration = 5 sec ###
# sleep 1s
scrot "$1.png" && temp=$(visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g"| cut -d' ' -f 1-2 | head -1)
# echo $temp
 [[ $(echo $temp | cut -d' ' -f 1) != "" ]] && click_coordinates $(eval echo $temp) && sleep 6 #for i in {1..8}; do sleep 1; echo $i; done
# scrot "$1.png" && visgrep[$1]=$( visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1 )
# [[ "${visgrep[$1]}" == ?(+|-)+([0-9]) ]] && xdotool mousemove `visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1-2` && sleep 2s && xdotool click 1; sleep 2s
}

function sylph_search_and_click_exact() {
### Duration = 5 sec ###
# sleep 1s
scrot "$1.png" && temp=$(visgrep -t 1 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g"| cut -d' ' -f 1-2 | head -1)
# echo $temp
 [[ $(echo $temp | cut -d' ' -f 1) != "" ]] && click_coordinates $(eval echo $temp) && sleep 6 #for i in {1..8}; do sleep 1; echo $i; done
# scrot "$1.png" && visgrep[$1]=$( visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1 )
# [[ "${visgrep[$1]}" == ?(+|-)+([0-9]) ]] && xdotool mousemove `visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1-2` && sleep 2s && xdotool click 1; sleep 2s
}

function sylph_search_and_click_exact_plus_coordinates() {
### Duration = 5 sec ###
# sleep 1s
scrot "$1.png" && temp=$(visgrep -t 10 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g"| cut -d' ' -f 1-2 | head -1)
# echo $temp
[[ $(echo $temp | cut -d' ' -f 1) != "" ]] && click_coordinates $(echo $(expr $(echo $temp|cut -d' ' -f1) + 00)) $(echo $(expr $(echo $temp|cut -d' ' -f2) + 80)) 
sleep 6 

}

function sylph_search_and_click_vague_plus_coordinates() {
### Duration = 5 sec ###
# sleep 1s
scrot "$1.png" && temp=$(visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g"| cut -d' ' -f 1-2 | head -1)
# echo $temp
[[ $(echo $temp | cut -d' ' -f 1) != "" ]] && click_coordinates $(echo $(expr $(echo $temp|cut -d' ' -f1) + 00)) $(echo $(expr $(echo $temp|cut -d' ' -f2) + 80)) 
sleep 6 

}


function sylph_search_and_click_vague() {
### Duration = 5 sec ###
# sleep 1s
scrot "$1.png" && temp=$(visgrep -t 1000000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g"| cut -d' ' -f 1-2 | head -1)
# echo $temp
 [[ $(echo $temp | cut -d' ' -f 1) != "" ]] && click_coordinates $(eval echo $temp) && sleep 6 #for i in {1..8}; do sleep 1; echo $i; done
# scrot "$1.png" && visgrep[$1]=$( visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1 )
# [[ "${visgrep[$1]}" == ?(+|-)+([0-9]) ]] && xdotool mousemove `visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1-2` && sleep 2s && xdotool click 1; sleep 2s
}



function search_and_double_click() {
### Duration = 5 sec ###
sleep 1s
scrot "$1.png" && visgrep[$1]=$( visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1 )
[[ "${visgrep[$1]}" == ?(+|-)+([0-9]) ]] && xdotool mousemove `visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1-2` && sleep 2s && xdotool click --repeat 2 1; sleep 2s
}

function search_only() {
### Duration = 5 sec ###
# sleep .5s
scrot "$1.png" && visgrep[$1]=$( visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1 )
# echo ${visgrep[$1]}
# alternatives to is number? 
# [[ -n "${visgrep[$1]}" ]] && echo founds it
# [[ "${visgrep[$1]}" != "" ]] && echo found it
# `visgrep "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1-2`
[[ "${visgrep[$1]}" == ?(+|-)+([0-9]) ]] && echo 1 #&& xdotool mousemove `visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1-2`
}

function search_only_true() {
### Duration = 5 sec ###
# sleep .5s
scrot "$1.png" && visgrep[$1]=$( visgrep -t 10 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1 )
# echo ${visgrep[$1]}
# alternatives to is number? 
# [[ -n "${visgrep[$1]}" ]] && echo founds it
# [[ "${visgrep[$1]}" != "" ]] && echo found it
# `visgrep "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1-2`
[[ "${visgrep[$1]}" == ?(+|-)+([0-9]) ]] && echo -n ""
}

function search_only_false() {
### Duration = 5 sec ###
# sleep .5s
scrot "$1.png" && visgrep[$1]=$( visgrep -t 10 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1 )
# echo ${visgrep[$1]}
# alternatives to is number? 
# [[ -n "${visgrep[$1]}" ]] && echo founds it
# [[ "${visgrep[$1]}" != "" ]] && echo found it
# `visgrep "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1-2`
[[ "${visgrep[$1]}" != ?(+|-)+([0-9]) ]] && echo -n ""
}

function search_only_wilds() {

scrot "$1.png" && visgrep[$1]=$( visgrep -t $2 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1 )
[[ "${visgrep[$1]}" == ?(+|-)+([0-9]) ]] && echo 1 
}

function search_and_wait() {
### Duration = 5 sec ###
sleep 3s
scrot "$1.png" 
visgrep[$1]=$( visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1 )
# echo ${visgrep[$1]}
# alternatives to is number? 
# [[ -n "${visgrep[$1]}" ]] && echo founds it
# [[ "${visgrep[$1]}" != "" ]] && echo found it
# `visgrep "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1-2`
while [[ "${visgrep[$1]}" == "" ]]; do
echo not found so sleeping
sleep 3s
scrot "$1.png" 
visgrep[$1]=$( visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1 )
done
echo found
search_and_click wilds_attack
# [[ "${visgrep[$1]}" == ?(+|-)+([0-9]) ]] && echo 1 && xdotool mousemove `visgrep -t 1000 "$1.png" "$1.pat" "$1.pat" | sed "s/,/ /g" | cut -d' ' -f 1-2`
}




function sylph_close_windows {
### Duration = 5 sec ###
# scrot wartune-close-window_scrot.png; sleep 2s
# visgrep_close_window_large=`visgrep -t 1000 wartune-close-window_scrot.png wartune-close-window.pat wartune-close-window.pat | sed "s/,/ /g" | cut -d' ' -f 1`
# [ "$visgrep_close_window_large" != "" ] && xdotool mousemove `visgrep -t 1000 wartune-close-window_scrot.png wartune-close-window.pat wartune-close-window.pat | sed "s/,/ /g" | cut -d' ' -f 1-2`; sleep 1s
# [ "$visgrep_close_window_large" != "" ] && xdotool click 1; sleep 2s
# visgrep_close_window_small=`visgrep -t 1000 wartune-close-window_small.png wartune-close-window_small.pat wartune-close-window.pat | sed "s/,/ /g" | cut -d' ' -f 1`
# [ "$visgrep_close_window_small" != "" ] && xdotool mousemove `visgrep -t 1000 wartune-close-window_scrot.png wartune-close-window.pat wartune-close-window.pat | sed "s/,/ /g" | cut -d' ' -f 1-2`; sleep 1s
# [ "$visgrep_close_window_small" != "" ] && xdotool click 1; sleep 2s
search_and_click sylph_close_window_large_button
search_and_click close_window_button_inventory
# search_and_click sylph_close_window_large_button
}


function close_windows {
### Duration = 5 sec ###
scrot wartune-close-window_scrot.png; sleep 2s
visgrep_close_window_large=`visgrep -t 1000 wartune-close-window_scrot.png wartune-close-window.pat wartune-close-window.pat | sed "s/,/ /g" | cut -d' ' -f 1`
[ "$visgrep_close_window_large" != "" ] && xdotool mousemove `visgrep -t 1000 wartune-close-window_scrot.png wartune-close-window.pat wartune-close-window.pat | sed "s/,/ /g" | cut -d' ' -f 1-2`; sleep 1s
[ "$visgrep_close_window_large" != "" ] && xdotool click 1; sleep 2s
# visgrep_close_window_small=`visgrep -t 1000 wartune-close-window_small.png wartune-close-window_small.pat wartune-close-window.pat | sed "s/,/ /g" | cut -d' ' -f 1`
# [ "$visgrep_close_window_small" != "" ] && xdotool mousemove `visgrep -t 1000 wartune-close-window_scrot.png wartune-close-window.pat wartune-close-window.pat | sed "s/,/ /g" | cut -d' ' -f 1-2`; sleep 1s
# [ "$visgrep_close_window_small" != "" ] && xdotool click 1; sleep 2s
}

function go_to_wartune_rtwo {
### Duration = 85 sec ###
declare -g last_refresh_time=$(date +%s)
declare -g next_refresh_time=$(expr $last_refresh_time + 3600)

xdotool mousemove 281 65; sleep 1s
xdotool click --repeat 1 1; sleep 1s
xdotool key ctrl+a; sleep 1s
xdotool type 'wartune.r2games.com/game/play/?server=6818'; sleep 1s; 
xdotool key Return; sleep 2s
# scrot wartune-wetlands-leave-this-page.png; sleep 3s
search_and_click rtwo_leave_this_page
# xdotool mousemove `visgrep -t 1000 wartune-wetlands-leave-this-page.png rtwo_leave_this_page.pat rtwo_leave_this_page.pat | sed "s/,/ /g" | cut -d' ' -f 1-2`; sleep 8s
sleep 40
xdotool mousemove 1054 484; xdotool click 1; #classwars
sylph_close_windows
}

function sylph_go_to_wartune_rtwo {
### Duration = 85 sec ###
declare -g last_refresh_time=$(date +%s)
declare -g next_refresh_time=$(expr $last_refresh_time + 3600)

xdotool mousemove 281 65; sleep 1s
xdotool click --repeat 1 1; sleep 1s
xdotool key ctrl+a; sleep 1s
xdotool type 'wartune.r2games.com/game/play/?server=6818'; sleep 1s; 
xdotool key Return; sleep 2s
# scrot wartune-wetlands-leave-this-page.png; sleep 3s
search_and_click rtwo_leave_this_page
# xdotool mousemove `visgrep -t 1000 wartune-wetlands-leave-this-page.png rtwo_leave_this_page.pat rtwo_leave_this_page.pat | sed "s/,/ /g" | cut -d' ' -f 1-2`; sleep 8s
sleep 60
xdotool mousemove 1050 484; xdotool click 1; #classwars
sylph_close_windows
sylph_go_to_normal_city
}

function sylph_go_to_farming_pans {
### Duration = 85 sec ###
declare -g last_refresh_time=$(date +%s)
declare -g next_refresh_time=$(expr $last_refresh_time + 3600)

xdotool mousemove 281 65; sleep 1s
xdotool click --repeat 1 1; sleep 1s
xdotool key ctrl+a; sleep 1s
xdotool type 'wartune.r2games.com/game/play/?server=6818'; sleep 1s; 
xdotool key Return; sleep 2s
# scrot wartune-wetlands-leave-this-page.png; sleep 3s
search_and_click rtwo_leave_this_page
# xdotool mousemove `visgrep -t 1000 wartune-wetlands-leave-this-page.png rtwo_leave_this_page.pat rtwo_leave_this_page.pat | sed "s/,/ /g" | cut -d' ' -f 1-2`; sleep 8s
sleep 60
xdotool mousemove 1054 484; xdotool click 1; #classwars
sylph_close_windows
# sylph_go_to_normal_city
}

function sylph_go_to_normal_city {
search_and_click sylph_City
}



function wheel_of_fate {
click_coordinates 1097 971
sleep 3
search_and_click inventory_equipment
sleep 3
search_and_click wheel_of_fate_icon
sleep 3
search_and_click wheel_of_fate_spin
sleep 15
sylph_close_windows
}


# Select farm vault
function select_vault {
### Duration = 1 sec ###
xdotool mousemove 1393 968; sleep .5s
xdotool click 1; sleep .5s
}

# Select FIRST position seed: kyanite - 1h

function select_first_seed_position {
### Duration = 1 sec ###
xdotool mousemove 1429 577; sleep .5s
xdotool click 1; sleep .5s
}

# Select SECOND position seed: exp - 1h

function select_second_seed_position {
### Duration = 1 sec ###
xdotool mousemove 1478 583; sleep .5s
xdotool click 1; sleep .5s
}

# Select THIRD position seed: exp - 1h

function select_third_seed_position {
### Duration = 1 sec ###
xdotool mousemove 1527 577; sleep .5s
xdotool click 1; sleep .5s
}

# Field clicks

function click_on_first_field {
### Duration = 1.11 sec ###
xdotool mousemove 673 620; sleep .555s
xdotool click 1; sleep .555s
}

function click_on_second_field {
### Duration = 1.11 sec ###
xdotool mousemove 747 563; sleep .555s
xdotool click 1; sleep .555s
}

function click_on_third_field {
### Duration = 1.11 sec ###
xdotool mousemove 816 496; sleep .555s
xdotool click 1; sleep .555s
}

function click_on_fourth_field {
### Duration = 1.11 sec ###
xdotool mousemove 775 690; sleep .555s
xdotool click 1; sleep .555s
}

function click_on_fifth_field {
### Duration = 1.11 sec ###
xdotool mousemove 847 621; sleep .555s
xdotool click 1; sleep .555s
}

function click_on_sixth_field {
### Duration = 1.11 sec ###
xdotool mousemove 937 581; sleep .555s
xdotool click 1; sleep .555s
}

function click_on_seventh_field {
### Duration = 1.11 sec ###
xdotool mousemove 898 760; sleep .555s
xdotool click 1; sleep .555s
}

function click_on_eighth_field {
### Duration = 1.11 sec ###
xdotool mousemove 967 707; sleep .555s
xdotool click 1; sleep .555s
}

function click_on_ninth_field {
### Duration = 1.11 sec ###
xdotool mousemove 1060 644; sleep .555s
xdotool click 1; sleep .555s
}

#reject invitation positions (not sure about coords); sleep 2s
#xdotool mousemove 1108 654 ; sleep 2s

# sleep 10s
# 
# open_chrome_and_go_to_wartune_address
# 
# enter_wetlands_server
# 
# sleep 40s

# go_to_farm


# # Plant seeds
function plant_seeds_fast {
### Duration = 30 sec ###
declare -g last_plant_time=$(date +%s)

declare -g next_harvest_time=$(expr $last_plant_time + 3200)

search_and_click farm_vault ### Duration = 5 sec ###
#search_and_click farm_experience_seed ### Duration = 5 sec ###
#  search_and_click farm_gold_seed ### Duration = 5 sec ###
# sylph_search_and_click farm_kyanite_special_seed ### Duration = 5 sec ###
sylph_search_and_click farm_kyanite_seed ### Duration = 5 sec ###
click_on_first_field ### Duration = 10 sec for all fields ###
#search_and_click farm_experience_seed ### Duration = 5 sec ###
search_and_click farm_gold_seed ### Duration = 5 sec ###
click_on_second_field
click_on_third_field #farm_experience_seed ### Duration = 5 sec ###
click_on_fourth_field
click_on_fifth_field
click_on_sixth_field
click_on_seventh_field
click_on_eighth_field
click_on_ninth_field
}


# Collect seeds
function click_fields {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 10 sec ###
click_on_first_field; ### Duration = 1.11 sec ###

click_on_second_field;

click_on_third_field;

click_on_fourth_field;

click_on_fifth_field;

click_on_sixth_field;

click_on_seventh_field;

click_on_eighth_field;

click_on_ninth_field;
}

# Go to city
function go_to_city {
echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 10 sec ###
sylph_close_windows
search_and_click go_to_city; sleep 2s
# search_and_click go_to_city_confirm; sleep 2s
search_and_click go_to_city_confirm_new; sleep 2s

}

function go_to_city_fast {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 5 sec ###
sylph_close_windows
search_and_click go_to_city; sleep 2s
search_and_click go_to_city_confirm; sleep 2s
}


# Go to farm
function go_to_farm {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 20 sec ###
go_to_city ### Duration = 10 sec ###
# confirm occasional question
# xdotool mousemove 808 733; sleep 1s
# xdotool click 1; sleep 5s
# search_and_click go_to_farm
xdotool mousemove 1317 278; sleep 1s
xdotool click 1; sleep 3s
}

function go_to_farm_fast { ### Total Sylph Duration  = 0m 29 sec ###
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
search_and_click sylph_Old_City
# sylph_go_to_cloud_city
# search_and_click go_to_city
# search_and_click go_to_city_confirm

search_and_click go_to_city; sleep 2s
search_and_click go_to_city_confirm; sleep 2s
search_and_click sylph_Old_City
sylph_close_windows
# search_and_click go_to_farm; sleep 2s
xdotool mousemove 1313 257; sleep 1s
xdotool click 1; sleep 3s

# ### Duration = 15 sec ###
# go_to_city_fast ### Duration = 5 sec ###
# # confirm occasional question
# xdotool mousemove 808 733; sleep 1s
# xdotool click 1; sleep 3s
# xdotool mousemove 1468 779; sleep 1s
# xdotool click 1; sleep 5s
}

# Go to altar
function go_to_altar_fast {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 20 sec ###
search_and_click sylph_Old_City
# sylph_go_to_cloud_city
# search_and_click go_to_city
# search_and_click go_to_city_confirm

search_and_click go_to_city; sleep 2s
search_and_click go_to_city_confirm; sleep 2s
search_and_click sylph_Old_City
sylph_close_windows
# confirm occasional question
click_coordinates 883 482; sleep 5s
# xdotool click 1; sleep 2s
# altar
click_coordinates 998 598; sleep 5s # this clicks meadows
# altar of longing
# click_coordinates 982 819; sleep 5s
click_coordinates 300 566; sleep 10s # this clicks lower left statue
# xdotool click 1; sleep 2s
# statue
# click_coordinates 1122 408; sleep 5s
# xdotool click 1; sleep 2s
# begin cultivation
click_coordinates 825 615
# xdotool click 1; sleep 3s
}

function go_to_altar {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 60 sec ###
search_and_click go_to_city
# go_to_city ### Duration = 10 sec ###
# confirm occasional question
search_and_click go_to_city_confirm
# xdotool mousemove 808 733; sleep 5s
# xdotool click 1; sleep 5s
# altar
search_and_click go_to_altar
# xdotool mousemove 998 598; sleep 5s
# xdotool click 1; sleep 5s
# altar of longing
search_and_click go_to_altar_of_longing
xdotool mousemove 1360 504; sleep 5s
xdotool click 1; sleep 5s
# statue
# search_and_click go_to_altar_divine_statue
# sleep 5s
# xdotool mousemove 1122 408; sleep 5s
# xdotool click 1; sleep 5s
# begin cultivation
search_and_click go_to_altar_begin
# xdotool mousemove 936 737; sleep 5s
# xdotool click 1; sleep 5s
}

function click_coordinates() {
xdotool mousemove $1 $2; sleep 1s; xdotool click 1; sleep 1s
}

function click_coordinates_fast() {
xdotool mousemove $1 $2; sleep .2s; xdotool click 1; sleep .21s
}

function click_coordinates_not_so_fast() {
xdotool mousemove $1 $2; sleep .5s; xdotool click 1; sleep .5s
}

function go_to_duels {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 20 sec ###
search_and_click go_to_city
search_and_click go_to_city_confirm; sleep 2s
# search_and_click go_to_arena
# sylph_go_to_cloud_city
# click_coordinates 1127 512
# sleep 20
# click_coordinates 786 674
# sleep 5
# click_coordinates 999 766
# search_and_click go_to_duels
click_coordinates 189 322
}

function duel_with_one_player {
click_coordinates 1163 742
sleep 1
click_coordinates 1163 742
# click_coordinates 1163 742
sleep 2
click_coordinates 1163 742
#echo 2
# duel_attacks; 
# sleep 25s # 85s if overnight!!!
battle_mode_duels 
}

function duel_with_best_player() {  ### REMEMBER TO REFRESH AFTER THAT, COZ OF POSSIBLE SCREEN MOVEMENT!!!
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 20 sec + 40 sec per round ###
go_to_duels ### Duration = 20 sec ###
last=$1
sleep 2
for i in $(eval echo "{1..$last}")
do
if [[ $(search_only arena_challenger_lobby) != 1 ]]; then
sylph_close_windows
click_coordinates 189 322
sleep 2
fi
echo time $i
duel_with_one_player
sleep 3
done
sleep 3
sylph_close_windows
# sylph_close_windows
# echo $1
}

function do_duels_if_necessary {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 20 sec + 100 sec per round ###
duel_time=$(eval date | cut -d' ' -f 4 | cut -d : -f 1)
if [ $duel_time = 07 ] || [ $duel_time = 07 ] || [ $duel_time = 07 ]; then
duel_with_best_player 17 ### 11m 40sec for 17 rounds

elif [ $duel_time = 08 ] || [ $duel_time = 09 ] || [ $duel_time = 09 ]; then
do_catacombs

sleep 20s # to reach sleeping 10m 5s

else
echo "Not duel or catacombs time"

echo sleeping 10m 5s

sleep 10m 5s ### --- 52m 40 sec 

inspect_friend_farms ### > 3m 40sec

# go_to_altar ### 60 sec --- 1m 21.6 sec
# sleep 10m ### 10m --- 11m 21.6 sec
fi
}

# function do_catacombs_if_necessary {
# # echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
# ### Duration = 20 sec + 100 sec per round ###
# duel_time=$(eval date | cut -d' ' -f 4 | cut -d : -f 1)
# if [ $duel_time = 08 ] || [ $duel_time = 09 ] || [ $duel_time = 09 ]; then
# do_catacombs # sleep 8m 70s
# 
# # sleep $((10*60 + 42 - 100 * $last))s # check to see if NEGATIVE!!!
# else
# 
# echo "Not catacombs time"
# 
# echo sleeping 14m 5s
# 
# sleep 14m 5s ### --- 52m 40 sec 
# 
# inspect_friend_farms ### > 3m 40sec
# 
# # go_to_altar ### 60 sec --- 1m 21.6 sec
# # sleep 10m ### 10m --- 11m 21.6 sec
# fi
# }
function guild_contribution_with_specific_amount() {
### Duration = ??? sec ###
search_and_click guild_button
search_and_click guild_contribution

xdotool type $1
xdotool type 000
# xdotool type $1 000 ### IF YOU DON'T WANT TO CONTRIBUTE ALL THE RESERVES!
search_and_click guild_contribute
for i in {1..2}; do sylph_close_windows; done

}

function guild_contribution() {
function guild_contribution_amount {
scrot guild_current_gold.png; convert -crop 65x14+223+174 guild_current_gold.png{,}
# scrot guild_current_gold.png; convert -crop 59x14+187+205 guild_current_gold.png{,} #before update
mogrify -type Grayscale guild_current_gold.png
tesseract guild_current_gold.png guild_current_gold -psm 8
# echo $(<guild_current_gold.txt)
current_gold=$(echo $(<guild_current_gold.txt) | sed "s/[^0-9]//g")
if [[ $current_gold -gt 1000 ]]; then 
xdotool type $(expr $current_gold / 1000) 000
fi
}

### Duration = ??? sec ###
search_and_click guild_button
search_and_click guild_contribution

guild_contribution_amount
# xdotool type $1 000 ### IF YOU DON'T WANT TO CONTRIBUTE ALL THE RESERVES!
search_and_click guild_contribute
for i in {1..2}; do sylph_close_windows; done

}

function skills_talent_upgrade {
click_coordinates 1255 973
sleep 4
click_coordinates 514 710
sleep 4
click_coordinates 1059 703
sylph_close_windows
}

function blessing_wheel {
search_and_click blessing_wheel_go_to

search_and_click blessing_wheel_spin
# search_and_click blessing_wheel_kyanite_checkbox
search_and_click blessing_wheel_kyanite_ok
search_and_click go_to_city_confirm
search_and_click blessing_wheel_spin
echo second checkbox begin
search_and_click blessing_wheel_kyanite_checkbox
search_and_click blessing_wheel_kyanite_ok
for i in {1..20}
do
# echo run $i
search_and_click blessing_wheel_spin
sleep 2
xdotool mousemove 100 100
sleep 2
xdotool mousemove 833 694
sleep 2
xdotool click 1
#search_and_click blessing_wheel_spinhovered
sleep 10
done
sylph_close_windows
sylph_close_windows
sylph_close_windows
}

function guild_blessing {
### Duration = 5 sec ###
search_and_click guild_button
search_and_click guild_territory
search_and_click guild_altar


for i in {1..25}
do 
search_and_click guild_blessing_spin
sleep 2s
search_and_click guild_blessing_confirm
sleep 15s
xdotool mousemove 924 257;
# search_only guild_blessing_collect; xdotool click 1
done
xdotool mousemove 729 632; xdotool click 1
for i in {1..3}; do sylph_close_windows; done

}

function guild_go_to_chamber {
### Duration = ??? sec ###
search_and_click guild_button
click_coordinates 1137 566
# search_and_click guild_chamber
sleep 5
for i in {1..4}
do
xdotool mousemove 774 243; xdotool click 1; sleep 5s



# scrot guild_toa.png

# cp guild_toa{,.`date +%H-%M-%S---%d-%m`}.png

done
search_and_click guild_toa_crystal
search_and_click guild_toa_energize
}

function sylph_go_to_cloud_city {
search_and_click sylph_Cloud_City
sleep 5
search_and_click sylph_cloud_city_map_button
sleep 5
}
# Bounty hall
function complete_bounties { ### Total Sylph Duration without quests = 1m 52 sec ###
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`

scrot wartune-bounties-window.png

#cp wartune-bounties-window{,.`date +%H-%M-%S---%d-%m`}.png

function go_to_bounties { ### Duration = 20 sec ###
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
sylph_close_windows

search_and_click go_to_city
search_and_click go_to_city_confirm
sylph_go_to_cloud_city
sleep 5s
# go_to_city ### Duration = 10 sec ###
# confirm occasional question
# xdotool mousemove 808 733; sleep 2s
# xdotool click 1; sleep 3s
# search_and_click go_to_bounties
click_coordinates 1102 371
sleep 45
# xdotool click 1; sleep 3s
}

# Complete now 
function bounties_complete_now_old { ### Duration = 10 sec ###

# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
scrot wartune-complete-now.png; sleep 2s
visgrep_complete_now=`visgrep -t 1000 wartune-complete-now.png wartune-complete-now.pat wartune-complete-now.pat | sed "s/,/ /g" | cut -d' ' -f 1`
if [ "$visgrep_complete_now" != "" ]; then
xdotool mousemove 1269 830 ; sleep 2s
xdotool click 1; sleep 2s
# Close window after "complete now"
sylph_close_windows
else
sleep 8s
fi
}
function bounties_complete_now { ### Duration = 10 sec ###

# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
scrot wartune-complete-now.png; sleep 2s
# visgrep_complete_now=`visgrep -t 1000 wartune-complete-now.png wartune-complete-now.pat wartune-complete-now.pat | sed "s/,/ /g" | cut -d' ' -f 1`
# if [ "$visgrep_complete_now" != "" ]; then
# xdotool mousemove 1564 324 ; sleep 2s
# xdotool click 1; sleep 2s
# Close window after "complete now"
# close_windows
# else
# sleep 8s
# fi
}


# Do bounty
function do_proper_bounty() { ### Total Duration = 12 sec ###

### Duration = 2 sec ###
if [ $1 -eq 1 ]; then
xdotool mousemove 1056 490; # sleep 1s
xdotool click 1; sleep 1s
elif [ $1 -eq 2 ]; then
xdotool mousemove 1054 546; # sleep 1s
xdotool click 1; sleep 1s
elif [ $1 -eq 3 ]; then
xdotool mousemove 1063 608; # sleep 1s
xdotool click 1; sleep 1s
elif [ $1 -eq 4 ]; then
xdotool mousemove 1056 666; # sleep 1s
xdotool click 1; sleep 1s 
else 
 echo 'dont know the value!!!'
 sleep 2s
fi
# search_and_click bounties_complete_now_new
# echo running the former complete now
# bounties_complete_now ### Duration = 10 sec ###
search_and_click sylph_complete_bounty
search_and_click sylph_complete_bounty
search_and_click sylph_complete_bounty
search_and_click sylph_complete_bounty
search_and_click sylph_complete_bounty
search_and_click sylph_complete_bounty
search_and_click sylph_complete_bounty
}



function bounties_ocr { ### Duration = 15 sec ###

# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
# scrot wartune-bounty-1.png; convert -crop 50x22+1074+600 wartune-bounty-1.png{,}; sleep 1
# scrot wartune-bounty-1.png; convert -crop 50x22+962+466 wartune-bounty-1.png{,}; sleep 1
# scrot wartune-bounty-2.png; convert -crop 50x22+962+527 wartune-bounty-2.png{,}; sleep 1 
# scrot wartune-bounty-3.png; convert -crop 50x22+962+588 wartune-bounty-3.png{,}; sleep 1
# scrot wartune-bounty-4.png; convert -crop 50x22+962+649 wartune-bounty-4.png{,}; sleep 1

scrot wartune-bounty-1.png; convert -crop 50x22+962+480 wartune-bounty-1.png{,}; sleep 1
scrot wartune-bounty-2.png; convert -crop 50x22+962+540 wartune-bounty-2.png{,}; sleep 1 
scrot wartune-bounty-3.png; convert -crop 50x22+962+601 wartune-bounty-3.png{,}; sleep 1
scrot wartune-bounty-4.png; convert -crop 50x22+962+661 wartune-bounty-4.png{,}; sleep 1
#for i in {1..4}
# do
# cp wartune-bounty-$i.png{,.`date +%H-%M-%S---%d-%m`}
# done

mogrify -type Grayscale wartune-bounty-?.png ; sleep 2
tesseract wartune-bounty-1.png wartune-bounty-1 ; sleep 1.25s
tesseract wartune-bounty-2.png wartune-bounty-2 ; sleep 1.25s
tesseract wartune-bounty-3.png wartune-bounty-3 ; sleep 1.25s
tesseract wartune-bounty-4.png wartune-bounty-4 ; sleep 1.25s
bounty_1=$(<wartune-bounty-1.txt) ; sleep 1
bounty_2=$(<wartune-bounty-2.txt) ; sleep 1
bounty_3=$(<wartune-bounty-3.txt) ; sleep 1
bounty_4=$(<wartune-bounty-4.txt) ; sleep 1
bounties=( bounty_1 bounty_2 bounty_3 bounty_4 )
}

function set_total_number_of_bounties_global_variable() {
echo $(expr $1) > global_variable_total_number_of_bounties
}

# date

go_to_bounties ### Duration = 20 sec ###

number_of_bounties=0

sleep 2s

bounties_ocr ### Duration = 15 sec ###

for i in ${bounties[@]}
do 

# echo ${!i:0:1}
case ${!i:0:1} in
3) echo -e "\e[1;32m $i is green\e[0m" ;;
4) echo -e "\e[1;34m $i is blue\e[0m" && number_of_bounties=$(expr $number_of_bounties + 1) ;;
6) echo -e "\e[1;35m $i is purple\e[0m" && number_of_bounties=$(expr $number_of_bounties + 1) ;;
7) echo -e "\e[1;33m $i is yellow\e[0m" && number_of_bounties=$(expr $number_of_bounties + 1) ;;
# B) echo -e "\e[1;33m $i is yellow\e[0m" && number_of_bounties=$(expr $number_of_bounties + 1) ;;
# B) echo -e "\e[1;33m $i is yellow\e[0m" && number_of_bounties=$(expr $number_of_bounties + 1) ;;
# B) echo -e "\e[1;33m $i is yellow\e[0m" && number_of_bounties=$(expr $number_of_bounties + 1) ;;
# B) echo -e "\e[1;33m $i is yellow\e[0m" && number_of_bounties=$(expr $number_of_bounties + 1) ;;
1) echo -e "\e[1;37m $i is white\e[0m" ;;
*) echo -e "\e[1;31m $i is unrecognisable\e[0m" ;;
esac
done

set_total_number_of_bounties_global_variable $number_of_bounties

if [[ $(date +%H) = 01 ]] || [[ $(date +%H) = 02 ]] || [[ $(date +%H) = 03 ]] || [[ $(date +%H) = 04 ]] || [[ $(date +%H) = 05 ]] || [[ $(date +%H) = 06 ]]; then
for i in ${bounties[@]}
do
# if [ ${!i:0:1} = 4 ] || [ ${!i:0:1} = 5 ] || [ ${!i:0:1} = 6 ] || [ ${!i:0:1} = 7 ] || [ ${!i:0:1} = B ] || [ ${!i:0:1} = 9 ]; then # For blue and above
if [ ${!i:0:1} = 4 ] || [ ${!i:0:1} = 5 ] || [ ${!i:0:1} = 6 ] || [ ${!i:0:1} = 7 ] || [ ${!i:0:1} = B ] || [ ${!i:0:1} = 9 ]; then # For purple and above
# if  [ ${!i:0:1} = 5 ] || [ ${!i:0:1} = 6 ] || [ ${!i:0:1} = 7 ] || [ ${!i:0:1} = B ] || [ ${!i:0:1} = 9 ]; then # For purple and above

echo "I am doing it"

do_proper_bounty ${i:7:1} ### Duration = 12 sec ###

number_of_bounties=$(expr $number_of_bounties - 1)

if [ $number_of_bounties -ne 0 ]; then ### Duration 2 sec ###
xdotool mousemove 976 643; sleep 1s
xdotool click 1; sleep 1s
fi
fi
done

else
for i in ${bounties[@]}
do
# if [ ${!i:0:1} = 4 ] || [ ${!i:0:1} = 5 ] || [ ${!i:0:1} = 6 ] || [ ${!i:0:1} = 7 ] || [ ${!i:0:1} = B ] || [ ${!i:0:1} = 9 ]; then # For blue and above
#  if  [ ${!i:0:1} = 4 ] || [ ${!i:0:1} = 5 ] || [ ${!i:0:1} = 6 ] || [ ${!i:0:1} = 7 ] || [ ${!i:0:1} = B ] || [ ${!i:0:1} = 9 ]; then # For purple and above
if  [ ${!i:0:1} = 4 ] || [ ${!i:0:1} = 5 ] || [ ${!i:0:1} = 6 ] || [ ${!i:0:1} = 7 ] || [ ${!i:0:1} = B ] || [ ${!i:0:1} = 9 ]; then # For purple and above

echo "I am doing it"
# 10
do_proper_bounty ${i:7:1} ### Duration = 12 sec ###

number_of_bounties=$(expr $number_of_bounties - 1)

if [ $number_of_bounties -ne 0 ]; then ### Duration 2 sec ###
xdotool mousemove 976 643; sleep 1s
xdotool click 1; sleep 1s
fi
fi
done

fi

echo running additional complete now
# bounties_complete_now
# bounties_complete_now
search_and_click bounties_complete_now_new

sylph_close_windows ### Duration = 5 sec ###

if [ $(<global_variable_total_number_of_bounties) = 0 ]; then
# echo sleeping for 48s
# sleep 48s 
sleep 0
elif [ $(<global_variable_total_number_of_bounties) = 1 ]; then
# echo sleeping for 36s
# sleep 36s
sleep 0
elif [ $(<global_variable_total_number_of_bounties) = 2 ]; then
# echo sleeping for 24s
# sleep 24s
sleep 0
elif [ $(<global_variable_total_number_of_bounties) = 3 ]; then
# echo sleeping for 12s
# sleep 12s
sleep 0
elif [ $(<global_variable_total_number_of_bounties) = 4 ]; then
# echo sleeping for 0s
# sleep 0s
sleep 0
fi
search_and_click sylph_Old_City

}

# Go to catacombs
function catacombs_reset_streak_level() {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
streak_level=$1
initial_streak_level=$streak_level
}

function go_to_catacombs {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 15 sec ###
go_to_city_fast ### Duration = 10 sec ###
# confirm occasional question
xdotool mousemove 808 733; sleep 2s
xdotool click 1; sleep 1s
xdotool mousemove 1198 241; sleep 1s
xdotool click 1; sleep 1s
}

# Uncheck crypt key
function uncheck_crypt_key {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 5 sec ###
xdotool mousemove 1056 771; sleep 3s
xdotool click 1; sleep 2s
}

# Blitz first time
function blitz_first_time {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 5 sec ###
xdotool mousemove 1077 866; sleep 2s
xdotool click 1; sleep 3s
}

# Blitz second time
function blitz_second_time {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 5 sec ###
xdotool mousemove 1082 824; sleep 2s
xdotool click 1; sleep 3s
}

# Streak to lvl: 
# mouse down: x:1169 y:617 
# mouse up: x1092 y:615

function streak_to_level() {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 5 sec ###
xdotool mousemove 1057 481; sleep 1s
xdotool mousedown 1 ; sleep 1s
xdotool mousemove 1023 481; sleep 1s
xdotool mouseup 1 ; sleep 1s
# streak_level=`expr $streak_level + 18`
# if [ $streak_level -gt 80 ]; then
# streak_level = 73
# fi
xdotool type $1; sleep 1s
}

# echo -e "abcdefghijklmnopqrstuvwxyz\r\033[K0123456789"0123456789klmnopqrstuvwxyz
# Click "Start Blitz"
function catacombs_start_blitz {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 5 sec ###
xdotool mousemove 1076 751; sleep 2s
xdotool click 1; sleep 3s
}

function do_proper_catacombs_blitz {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
### Duration = 5 sec ###
# if [ $streak_level = 1 ]; then
blitz_first_time 
# else
# blitz_second_time 
# fi
}

function do_catacombs_first {
### Duration = 40 sec + 30 sec per level ###
# catacombs_reset_streak_level 18
# echo streak level = $streak_level
# go_to_catacombs ### Duration = 15 sec ###
search_and_click go_to_city
search_and_click go_to_city_confirm
search_and_click sylph_Old_City
sleep 5
# search_and_click catacombs
click_coordinates 1066 212
# search_and_click catacombs_uncheck_crypt_key
search_and_click catacombs_blitz
search_and_click catacombs_blitz_secondary
# echo streak level = $streak_level
# uncheck_crypt_key ### Duration = 5 sec ###
# echo streak level = $streak_level
# do_proper_catacombs_blitz ### Duration = 5 sec ###
# echo streak level = $streak_level
streak_to_level 59 ### Duration = 5 sec ###
search_and_click catacombs_blitz_start
sleep 30m
# echo streak level = $streak_level
# catacombs_start_blitz ### Duration = 5 sec + 30 sec per level ###
# echo initial streak level = $initial_streak_level
# echo current streak level = $streak_level
# echo $(($streak_level * 30 - $initial_streak_level * 30))s
# sleep $(( $streak_level * 30 - $initial_streak_level * 30 ))s

# sleep $(( 95 * 30 ))s
# echo done sleep
sylph_close_windows ### Duration = 5 sec ###
search_and_click go_to_city_confirm

# sleep 2m 5s ### to reach 17m 45sec for 30 levels
}

function do_catacombs_second {
### Duration = 40 sec + 30 sec per level ###
# catacombs_reset_streak_level 18
# echo streak level = $streak_level
# go_to_catacombs ### Duration = 15 sec ###
search_and_click go_to_city
search_and_click go_to_city_confirm
search_and_click sylph_Old_City
sleep 5
# search_and_click catacombs
click_coordinates 1066 212
# search_and_click catacombs_uncheck_crypt_key
search_and_click catacombs_blitz
search_and_click catacombs_blitz_secondary
# echo streak level = $streak_level
# uncheck_crypt_key ### Duration = 5 sec ###
# echo streak level = $streak_level
# do_proper_catacombs_blitz ### Duration = 5 sec ###
# echo streak level = $streak_level
# streak_to_level 60 ### Duration = 5 sec ###
streak_to_level 69 ### Duration = 5 sec ###
search_and_click catacombs_blitz_start
# sleep 7m
sleep 24m
# echo streak level = $streak_level
# catacombs_start_blitz ### Duration = 5 sec + 30 sec per level ###
# echo initial streak level = $initial_streak_level
# echo current streak level = $streak_level
# echo $(($streak_level * 30 - $initial_streak_level * 30))s
# sleep $(( $streak_level * 30 - $initial_streak_level * 30 ))s

# sleep $(( 95 * 30 ))s
# echo done sleep
sylph_close_windows ### Duration = 5 sec ###
search_and_click go_to_city_confirm

# sleep 2m 5s ### to reach 17m 45sec for 30 levels
}

function do_catacombs_final {

search_and_click go_to_city
search_and_click go_to_city_confirm
search_and_click sylph_Old_City
# search_and_click catacombs
click_coordinates 1066 212
search_and_click catacombs_continue
sleep 5
click_coordinates 751 650
# search_and_click catacombs_faye
sleep 6
search_and_click wb_afk_button
date
sleep 45
date
click_coordinates 917 725
sleep 5
click_coordinates 1056 697
sleep 5
# search_and_click catacombs_chest
# sleep 
# echo streak level = $streak_level
# catacombs_start_blitz ### Duration = 5 sec + 30 sec per level ###
# echo initial streak level = $initial_streak_level
# echo current streak level = $streak_level
# echo $(($streak_level * 30 - $initial_streak_level * 30))s
# sleep $(( $streak_level * 30 - $initial_streak_level * 30 ))s

# sleep $(( 95 * 30 ))s
# echo done sleep
sylph_close_windows ### Duration = 5 sec ###
search_and_click go_to_city_confirm

# sleep 2m 5s ### to reach 17m 45sec for 30 levels
}


function wilds_gold_mines {
search_and_click go_to_city
search_and_click go_to_city_confirm
search_and_click sylph_Old_City
sleep 5
search_and_click wilds_go_to_wilds
sleep 3
for i in {1..5}; do
search_and_click wilds_go_to_hero
drag_and_drop 520 885 1138 232
click_coordinates 863 550
sleep 5
sylph_search_and_click wilds_gold_mine
sleep 7
search_and_click wilds_gold_mine_attack
sleep 10
done
search_and_click wilds_go_to_city
}
function ppat() {
png2pat $1.png > $1.pat
}


function enemy_coordinates {
scrot test.png
enemy_coordinate_x=$(visgrep test.png wilds_test_attack_color.pat wilds_test_attack_color.pat| sed "s/,/ /g" | cut -d' ' -f 1|head -1)
enemy_coordinate_y=$(visgrep test.png wilds_test_attack_color.pat wilds_test_attack_color.pat| sed "s/,/ /g" | cut -d' ' -f 2|head -1)
echo $enemy_coordinate_x $enemy_coordinate_y 
# xdotool mousemove $enemy_coordinate_x $(( $enemy_coordinate_y)) && xdotool click 1

i=1
sword_existance=""

while [[ $sword_existance = "" ]]; do
xdotool mousemove $enemy_coordinate_x $(( $enemy_coordinate_y + $i * 10 )) && xdotool click 1 && sleep .6s
scrot test_sword.png
sword_existance=$(visgrep test_sword.png wilds_target_sword.pat wilds_target_sword.pat| sed "s/,/ /g" | cut -d' ' -f 2|head -1)
i=$(($i + 1))
done
}


function wilds_map_move_along_y_attack_enemies {
while [ $wildsY -le 591 ]; do
wilds_map_move_along_x_attack_enemies
wildsY=`expr $wildsY + 14`
wildsX=15
sleep 2s
wilds_move_map_attack_enemies
done
}

function wilds_map_move_along_x_attack_enemies {
while [ $wildsX -le 585 ]; do
wildsX=`expr $wildsX + 14`
wilds_move_map_attack_enemies
# [[ $wildsX = "15" ]] && [[ $wildsY = "8" ]] && sleep 3s
done
}

function wilds_move_map_attack_enemies {
xdotool mousemove 1518 186;
xdotool click --repeat 2 1;
xdotool type $wildsX
xdotool mousemove 1546 186;
xdotool click --repeat 2 1;
xdotool type $wildsY
xdotool key Return

sleep 1s

# scrot wilds-test-image-$wildsX-$wildsY.png; convert -crop 940x758+530+330 wilds-test-image-$wildsX-$wildsY.png{,}

# echo taking test snapshot

scrot test.png

enemy_coordinate_x=$(visgrep test.png wilds_test_attack_color.pat wilds_test_attack_color.pat| sed "s/,/ /g" | cut -d' ' -f 1|head -1)
echo $enemy_coordinate_x

if [[ $enemy_coordinate_x != "" ]]; then
enemy_coordinate_y=$(visgrep test.png wilds_test_attack_color.pat wilds_test_attack_color.pat| sed "s/,/ /g" | cut -d' ' -f 2|head -1)
echo $enemy_coordinate_x $enemy_coordinate_y 
# xdotool mousemove $enemy_coordinate_x $(( $enemy_coordinate_y)) && xdotool click 1

if [[ $enemy_coordinate_y -ge 900 ]]; then 
echo i break the while loop
return 1
fi

i=1
sword_existance=""

while [[ $sword_existance = "" ]] && [[ $i -le 5 ]] ; do



xdotool mousemove $(( $enemy_coordinate_x + 45 )) $(( $enemy_coordinate_y + $i * 20 )) && xdotool click 1 && sleep 1s
scrot test_sword.png; sleep .3s
sword_existance=$(visgrep test_sword.png wilds_target_sword.pat wilds_target_sword.pat| sed "s/,/ /g" | cut -d' ' -f 2|head -1)
[[ $sword_existance != "" ]] && break

xdotool mousemove $(( $enemy_coordinate_x + 30 )) $(( $enemy_coordinate_y + $i * 20 )) && xdotool click 1 && sleep 1s
scrot test_sword.png; sleep .3s
sword_existance=$(visgrep test_sword.png wilds_target_sword.pat wilds_target_sword.pat| sed "s/,/ /g" | cut -d' ' -f 2|head -1)
[[ $sword_existance != "" ]] && break

xdotool mousemove $enemy_coordinate_x $(( $enemy_coordinate_y + $i * 20 )) && xdotool click 1 && sleep .6s
scrot test_sword.png; sleep .3s
sword_existance=$(visgrep test_sword.png wilds_target_sword.pat wilds_target_sword.pat| sed "s/,/ /g" | cut -d' ' -f 2|head -1)
[[ $sword_existance != "" ]] && break

xdotool mousemove $(( $enemy_coordinate_x - 15 )) $(( $enemy_coordinate_y + $i * 20 )) && xdotool click 1 && sleep 1s
scrot test_sword.png; sleep .3s
sword_existance=$(visgrep test_sword.png wilds_target_sword.pat wilds_target_sword.pat| sed "s/,/ /g" | cut -d' ' -f 2|head -1)
[[ $sword_existance != "" ]] && break

xdotool mousemove $(( $enemy_coordinate_x - 30 )) $(( $enemy_coordinate_y + $i * 20 )) && xdotool click 1 && sleep 1s
scrot test_sword.png; sleep .3s
sword_existance=$(visgrep test_sword.png wilds_target_sword.pat wilds_target_sword.pat| sed "s/,/ /g" | cut -d' ' -f 2|head -1)
[[ $sword_existance != "" ]] && break

i=$(($i + 1))

done
search_and_wait wilds_attack
battle_mode_spd

while [[ $(search_only sylph_my_avatar) != 1 ]]
do
echo sleeping waiting for avatar
sleep 2s
done

fi


}


function wilds_attack_enemies {
wildsX=200
wildsY=49
wilds_move_map_attack_enemies
wilds_map_move_along_y_attack_enemies
}





function proto {
for i in {1..5}
do 
echo $i
if [ $i = 3 ]; then
break
fi

done
}

function deutero {
for j in {10..15}
do 
echo $j
proto
done
}

function delete_strangers() {
for i in $(eval echo "{1..$1}")
do
echo $i
xdotool mousemove 1383 666 && sleep .3s && xdotool click 1 && sleep .3s
xdotool mousemove 1154 609 && sleep .3s && xdotool click 1 && sleep .3s
xdotool mousemove 848 642 && sleep .3s && xdotool click 1 && sleep .3s
done
}

# STATISTICS: gold
# first <- c(84,84,85,85,86,85,85,85,85,83,85,85,85)
# second <- c(91,91,90,90,90,90,90,90,90,89,90,89,90)
# third <- c(165,165,165,165,166,165,165,165,165,166,165,165,165)



function farm_field_find_gold {
if [[ ${first_color[0]} -ge 52 ]] && [[ ${first_color[0]} -le 72 ]]; then
if [[ ${first_color[1]} -ge 53 ]] && [[ ${first_color[1]} -le 73 ]]; then
if [[ ${first_color[2]} -ge 54 ]] && [[ ${first_color[2]} -le 74 ]]; then
echo 'found gold!!!' 1 ${first_color[*]}
fi
fi
fi

if [[ ${second_color[0]} -ge 52 ]] && [[ ${second_color[0]} -le 72 ]]; then
if [[ ${second_color[1]} -ge 53 ]] && [[ ${second_color[1]} -le 73 ]]; then
if [[ ${second_color[2]} -ge 54 ]] && [[ ${second_color[2]} -le 74 ]]; then
echo 'found gold!!!' 2 ${second_color[*]}
fi
fi
fi

if [[ ${third_color[0]} -ge 52 ]] && [[ ${third_color[0]} -le 72 ]]; then
if [[ ${third_color[1]} -ge 53 ]] && [[ ${third_color[1]} -le 73 ]]; then
if [[ ${third_color[2]} -ge 54 ]] && [[ ${third_color[2]} -le 74 ]]; then
echo 'found gold!!!' 3 ${third_color[*]}
fi
fi
fi

if [[ ${fourth_color[0]} -ge 52 ]] && [[ ${fourth_color[0]} -le 72 ]]; then
if [[ ${fourth_color[1]} -ge 53 ]] && [[ ${fourth_color[1]} -le 73 ]]; then
if [[ ${fourth_color[2]} -ge 54 ]] && [[ ${fourth_color[2]} -le 74 ]]; then
echo 'found gold!!!' 4 ${fourth_color[*]}
fi
fi
fi

if [[ ${fifth_color[0]} -ge 52 ]] && [[ ${fifth_color[0]} -le 72 ]]; then
if [[ ${fifth_color[1]} -ge 53 ]] && [[ ${fifth_color[1]} -le 73 ]]; then
if [[ ${fifth_color[2]} -ge 54 ]] && [[ ${fifth_color[2]} -le 74 ]]; then
echo 'found gold!!!' 5 ${fifth_color[*]}
fi
fi
fi

if [[ ${sixth_color[0]} -ge 52 ]] && [[ ${sixth_color[0]} -le 72 ]]; then
if [[ ${sixth_color[1]} -ge 53 ]] && [[ ${sixth_color[1]} -le 73 ]]; then
if [[ ${sixth_color[2]} -ge 54 ]] && [[ ${sixth_color[2]} -le 74 ]]; then
echo 'found gold!!!' 6 ${sixth_color[*]}
fi
fi
fi

if [[ ${seventh_color[0]} -ge 52 ]] && [[ ${seventh_color[0]} -le 72 ]]; then
if [[ ${seventh_color[1]} -ge 53 ]] && [[ ${seventh_color[1]} -le 73 ]]; then
if [[ ${seventh_color[2]} -ge 54 ]] && [[ ${seventh_color[2]} -le 74 ]]; then
echo 'found gold!!!' 7 ${seventh_color[*]}
fi
fi
fi

if [[ ${eighth_color[0]} -ge 52 ]] && [[ ${eighth_color[0]} -le 72 ]]; then
if [[ ${eighth_color[1]} -ge 53 ]] && [[ ${eighth_color[1]} -le 73 ]]; then
if [[ ${eighth_color[2]} -ge 54 ]] && [[ ${eighth_color[2]} -le 74 ]]; then
echo 'found gold!!!' 8 ${eighth_color[*]} 
fi
fi
fi

# if [[ ${ninth_color[0]} -ge 65 ]] && [[ ${ninth_color[0]} -le 85 ]]; then
# if [[ ${ninth_color[1]} -ge 85 ]] && [[ ${ninth_color[1]} -le 105 ]]; then
# if [[ ${ninth_color[2]} -ge 155 ]] && [[ ${ninth_color[2]} -le 175 ]]; then
# echo 'found gold!!!' 9 ${ninth_color[*]}
# fi
# fi
# fi
}


function farm_field_find_experience {
if [[ ${first_color[0]} -ge 40 ]] && [[ ${first_color[0]} -le 60 ]]; then
if [[ ${first_color[1]} -ge 75 ]] && [[ ${first_color[1]} -le 95 ]]; then
if [[ ${first_color[2]} -ge 100 ]] && [[ ${first_color[2]} -le 120 ]]; then
echo 'found experience!!!' 1 ${first_color[*]}
fi
fi
fi

if [[ ${second_color[0]} -ge 40 ]] && [[ ${second_color[0]} -le 60 ]]; then
if [[ ${second_color[1]} -ge 75 ]] && [[ ${second_color[1]} -le 95 ]]; then
if [[ ${second_color[2]} -ge 100 ]] && [[ ${second_color[2]} -le 120 ]]; then
echo 'found experience!!!' 2 ${second_color[*]}
fi
fi
fi

if [[ ${third_color[0]} -ge 40 ]] && [[ ${third_color[0]} -le 60 ]]; then
if [[ ${third_color[1]} -ge 75 ]] && [[ ${third_color[1]} -le 95 ]]; then
if [[ ${third_color[2]} -ge 100 ]] && [[ ${third_color[2]} -le 120 ]]; then
echo 'found experience!!!' 3 ${third_color[*]}
fi
fi
fi

if [[ ${fourth_color[0]} -ge 40 ]] && [[ ${fourth_color[0]} -le 60 ]]; then
if [[ ${fourth_color[1]} -ge 75 ]] && [[ ${fourth_color[1]} -le 95 ]]; then
if [[ ${fourth_color[2]} -ge 100 ]] && [[ ${fourth_color[2]} -le 120 ]]; then
echo 'found experience!!!' 4 ${fourth_color[*]}
fi
fi
fi

if [[ ${fifth_color[0]} -ge 40 ]] && [[ ${fifth_color[0]} -le 60 ]]; then
if [[ ${fifth_color[1]} -ge 75 ]] && [[ ${fifth_color[1]} -le 95 ]]; then
if [[ ${fifth_color[2]} -ge 100 ]] && [[ ${fifth_color[2]} -le 120 ]]; then
echo 'found experience!!!' 5 ${fifth_color[*]}
fi
fi
fi

if [[ ${sixth_color[0]} -ge 40 ]] && [[ ${sixth_color[0]} -le 60 ]]; then
if [[ ${sixth_color[1]} -ge 75 ]] && [[ ${sixth_color[1]} -le 95 ]]; then
if [[ ${sixth_color[2]} -ge 100 ]] && [[ ${sixth_color[2]} -le 120 ]]; then
echo 'found experience!!!' 6 ${sixth_color[*]}
fi
fi
fi

if [[ ${seventh_color[0]} -ge 40 ]] && [[ ${seventh_color[0]} -le 60 ]]; then
if [[ ${seventh_color[1]} -ge 75 ]] && [[ ${seventh_color[1]} -le 95 ]]; then
if [[ ${seventh_color[2]} -ge 100 ]] && [[ ${seventh_color[2]} -le 120 ]]; then
echo 'found experience!!!' 7 ${seventh_color[*]}
fi
fi
fi

if [[ ${eighth_color[0]} -ge 40 ]] && [[ ${eighth_color[0]} -le 60 ]]; then
if [[ ${eighth_color[1]} -ge 75 ]] && [[ ${eighth_color[1]} -le 95 ]]; then
if [[ ${eighth_color[2]} -ge 100 ]] && [[ ${eighth_color[2]} -le 120 ]]; then
echo 'found experience!!!' 8 ${eighth_color[*]} 
fi
fi
fi

# if [[ ${ninth_color[0]} -ge 40 ]] && [[ ${ninth_color[0]} -le 60 ]]; then
# if [[ ${ninth_color[1]} -ge 75 ]] && [[ ${ninth_color[1]} -le 95 ]]; then
# if [[ ${ninth_color[2]} -ge 100 ]] && [[ ${ninth_color[2]} -le 120 ]]; then
# echo 'found gold!!!' 9 ${ninth_color[*]}
# fi
# fi
# fi
}


function farm_field_find_daru {
if [[ ${first_color[0]} -ge 141 ]] && [[ ${first_color[0]} -le 161 ]]; then
if [[ ${first_color[1]} -ge 88 ]] && [[ ${first_color[1]} -le 113 ]]; then
if [[ ${first_color[2]} -ge 80 ]] && [[ ${first_color[2]} -le 100 ]]; then
echo 'found daru!!!' 1 ${first_color[*]}
fi
fi
fi

if [[ ${second_color[0]} -ge 141 ]] && [[ ${second_color[0]} -le 161 ]]; then
if [[ ${second_color[1]} -ge 88 ]] && [[ ${second_color[1]} -le 113 ]]; then
if [[ ${second_color[2]} -ge 80 ]] && [[ ${second_color[2]} -le 100 ]]; then
echo 'found daru!!!' 2 ${second_color[*]}
fi
fi
fi

if [[ ${third_color[0]} -ge 141 ]] && [[ ${third_color[0]} -le 161 ]]; then
if [[ ${third_color[1]} -ge 88 ]] && [[ ${third_color[1]} -le 113 ]]; then
if [[ ${third_color[2]} -ge 80 ]] && [[ ${third_color[2]} -le 100 ]]; then
echo 'found daru!!!' 3 ${third_color[*]}
fi
fi
fi

if [[ ${fourth_color[0]} -ge 141 ]] && [[ ${fourth_color[0]} -le 161 ]]; then
if [[ ${fourth_color[1]} -ge 88 ]] && [[ ${fourth_color[1]} -le 113 ]]; then
if [[ ${fourth_color[2]} -ge 80 ]] && [[ ${fourth_color[2]} -le 100 ]]; then
echo 'found daru!!!' 4 ${fourth_color[*]}
fi
fi
fi

if [[ ${fifth_color[0]} -ge 141 ]] && [[ ${fifth_color[0]} -le 161 ]]; then
if [[ ${fifth_color[1]} -ge 88 ]] && [[ ${fifth_color[1]} -le 113 ]]; then
if [[ ${fifth_color[2]} -ge 80 ]] && [[ ${fifth_color[2]} -le 100 ]]; then
echo 'found daru!!!' 5 ${fifth_color[*]}
fi
fi
fi

if [[ ${sixth_color[0]} -ge 141 ]] && [[ ${sixth_color[0]} -le 161 ]]; then
if [[ ${sixth_color[1]} -ge 88 ]] && [[ ${sixth_color[1]} -le 113 ]]; then
if [[ ${sixth_color[2]} -ge 80 ]] && [[ ${sixth_color[2]} -le 100 ]]; then
echo 'found daru!!!' 6 ${sixth_color[*]}
fi
fi
fi

if [[ ${seventh_color[0]} -ge 141 ]] && [[ ${seventh_color[0]} -le 161 ]]; then
if [[ ${seventh_color[1]} -ge 88 ]] && [[ ${seventh_color[1]} -le 113 ]]; then
if [[ ${seventh_color[2]} -ge 80 ]] && [[ ${seventh_color[2]} -le 100 ]]; then
echo 'found daru!!!' 7 ${seventh_color[*]}
fi
fi
fi

if [[ ${eighth_color[0]} -ge 141 ]] && [[ ${eighth_color[0]} -le 161 ]]; then
if [[ ${eighth_color[1]} -ge 88 ]] && [[ ${eighth_color[1]} -le 113 ]]; then
if [[ ${eighth_color[2]} -ge 80 ]] && [[ ${eighth_color[2]} -le 100 ]]; then
echo 'found daru!!!' 8 ${eighth_color[*]} 
fi
fi
fi

# if [[ ${ninth_color[0]} -ge 141 ]] && [[ ${ninth_color[0]} -le 161 ]]; then
# if [[ ${ninth_color[1]} -ge 88 ]] && [[ ${ninth_color[1]} -le 113 ]]; then
# if [[ ${ninth_color[2]} -ge 80 ]] && [[ ${ninth_color[2]} -le 100 ]]; then
# echo 'found daru!!!' 9 ${ninth_color[*]}
# fi
# fi
# fi
}

### STATISTICS: KYANITE
# first <- c(101,100,99,100)
# second <- c(89,91,91,91)
# third <- c(38,40,40,40)




function farm_field_find_kyanite {
if [[ ${first_color[0]} -ge 97 ]] && [[ ${first_color[0]} -le 105 ]]; then
if [[ ${first_color[1]} -ge 87 ]] && [[ ${first_color[1]} -le 95 ]]; then
if [[ ${first_color[2]} -ge 36 ]] && [[ ${first_color[2]} -le 44 ]]; then
echo 'found kyanite!!!' "in $1" 1 ${first_color[*]}
fi
fi
fi

if [[ ${second_color[0]} -ge 98 ]] && [[ ${second_color[0]} -le 104 ]]; then
if [[ ${second_color[1]} -ge 87 ]] && [[ ${second_color[1]} -le 95 ]]; then
if [[ ${second_color[2]} -ge 36 ]] && [[ ${second_color[2]} -le 44 ]]; then
echo 'found kyanite!!!' "in $1" 2 ${second_color[*]}
fi
fi
fi

# if [[ ${third_color[0]} -ge 90 ]] && [[ ${third_color[0]} -le 110 ]]; then
# if [[ ${third_color[1]} -ge 81 ]] && [[ ${third_color[1]} -le 101 ]]; then
# if [[ ${third_color[2]} -ge 30 ]] && [[ ${third_color[2]} -le 50 ]]; then
# echo 'found kyanite!!!' "in $1" 3 ${third_color[*]}
# fi
# fi
# fi

# if [[ ${fourth_color[0]} -ge 90 ]] && [[ ${fourth_color[0]} -le 110 ]]; then
# if [[ ${fourth_color[1]} -ge 81 ]] && [[ ${fourth_color[1]} -le 101 ]]; then
# if [[ ${fourth_color[2]} -ge 30 ]] && [[ ${fourth_color[2]} -le 50 ]]; then
# echo 'found kyanite!!!' "in $1" 4 ${fourth_color[*]}
# fi
# fi
# fi
# 
# if [[ ${fifth_color[0]} -ge 90 ]] && [[ ${fifth_color[0]} -le 110 ]]; then
# if [[ ${fifth_color[1]} -ge 81 ]] && [[ ${fifth_color[1]} -le 101 ]]; then
# if [[ ${fifth_color[2]} -ge 30 ]] && [[ ${fifth_color[2]} -le 50 ]]; then
# echo 'found kyanite!!!' "in $1" 5 ${fifth_color[*]}
# fi
# fi
# fi
# 
# if [[ ${sixth_color[0]} -ge 90 ]] && [[ ${sixth_color[0]} -le 110 ]]; then
# if [[ ${sixth_color[1]} -ge 81 ]] && [[ ${sixth_color[1]} -le 101 ]]; then
# if [[ ${sixth_color[2]} -ge 30 ]] && [[ ${sixth_color[2]} -le 50 ]]; then
# echo 'found kyanite!!!' "in $1" 6 ${sixth_color[*]}
# fi
# fi
# fi
# 
# if [[ ${seventh_color[0]} -ge 90 ]] && [[ ${seventh_color[0]} -le 110 ]]; then
# if [[ ${seventh_color[1]} -ge 81 ]] && [[ ${seventh_color[1]} -le 101 ]]; then
# if [[ ${seventh_color[2]} -ge 30 ]] && [[ ${seventh_color[2]} -le 50 ]]; then
# echo 'found kyanite!!!' "in $1" 7 ${seventh_color[*]}
# fi
# fi
# fi
# 
# if [[ ${eighth_color[0]} -ge 90 ]] && [[ ${eighth_color[0]} -le 110 ]]; then
# if [[ ${eighth_color[1]} -ge 81 ]] && [[ ${eighth_color[1]} -le 101 ]]; then
# if [[ ${eighth_color[2]} -ge 30 ]] && [[ ${eighth_color[2]} -le 50 ]]; then
# echo 'found kyanite!!!' "in $1" 8 ${eighth_color[*]} 
# fi
# fi
# fi

# if [[ ${ninth_color[0]} -ge 147 ]] && [[ ${ninth_color[0]} -le 179 ]]; then
# if [[ ${ninth_color[1]} -ge 171 ]] && [[ ${ninth_color[1]} -le 209 ]]; then
# if [[ ${ninth_color[2]} -ge 51 ]] && [[ ${ninth_color[2]} -le 95 ]]; then
# echo 'found kyanite!!!' "in $1" 9 ${ninth_color[*]}
# fi
# fi
# fi
}

function farm_field_define_colors() {
# colors=(
# for i in 
first_color=($(convert "$1.png" -colors 8 -format "%c" histogram:info: |sort -n -r | cut -d\( -f2 | cut -d\) -f1 | sed "s/,/ /g" | tail -9 | sed '1!d'))
second_color=($(convert "$1.png" -colors 8 -format "%c" histogram:info: |sort -n -r | cut -d\( -f2 | cut -d\) -f1 | sed "s/,/ /g" | tail -9 | sed '2!d'))
third_color=($(convert "$1.png" -colors 8 -format "%c" histogram:info: |sort -n -r | cut -d\( -f2 | cut -d\) -f1 | sed "s/,/ /g" | tail -9 | sed '3!d'))
fourth_color=($(convert "$1.png" -colors 8 -format "%c" histogram:info: |sort -n -r | cut -d\( -f2 | cut -d\) -f1 | sed "s/,/ /g" | tail -9 | sed '4!d'))
fifth_color=($(convert "$1.png" -colors 8 -format "%c" histogram:info: |sort -n -r | cut -d\( -f2 | cut -d\) -f1 | sed "s/,/ /g" | tail -9 | sed '5!d'))
sixth_color=($(convert "$1.png" -colors 8 -format "%c" histogram:info: |sort -n -r | cut -d\( -f2 | cut -d\) -f1 | sed "s/,/ /g" | tail -9 | sed '6!d'))
seventh_color=($(convert "$1.png" -colors 8 -format "%c" histogram:info: |sort -n -r | cut -d\( -f2 | cut -d\) -f1 | sed "s/,/ /g" | tail -9 | sed '7!d'))
eighth_color=($(convert "$1.png" -colors 8 -format "%c" histogram:info: |sort -n -r | cut -d\( -f2 | cut -d\) -f1 | sed "s/,/ /g" | tail -9 | sed '8!d'))
# ninth_color=($(convert "$1.png" -colors 8 -format "%c" histogram:info: |sort | cut -d\( -f2 | cut -d\) -f1 | sed "s/,/ /g" | tail -8 | sed '9!d'))

sleep .2s
farm_field_find_kyanite
# farm_field_find_daru
# farm_field_find_gold
}

function farm_field_take_screenshots {
# date
# scrot wartune-field-1.png; convert -crop 30x30+760+650 wartune-field-1.png{,} 
scrot wartune-field-1.png; convert -crop 30x30+640+620 wartune-field-1.png{,} # i removed -120 from every x and -30 from every y
scrot wartune-field-2.png; convert -crop 30x30+723+567 wartune-field-2.png{,}
scrot wartune-field-3.png; convert -crop 30x30+806+514 wartune-field-3.png{,}
scrot wartune-field-4.png; convert -crop 30x30+755+680 wartune-field-4.png{,}
scrot wartune-field-5.png; convert -crop 30x30+838+627 wartune-field-5.png{,}
scrot wartune-field-6.png; convert -crop 30x30+921+574 wartune-field-6.png{,}
scrot wartune-field-7.png; convert -crop 30x30+870+740 wartune-field-7.png{,}
scrot wartune-field-8.png; convert -crop 30x30+953+687 wartune-field-8.png{,}
scrot wartune-field-9.png; convert -crop 30x30+1036+634 wartune-field-9.png{,}

# for i in {1..9}
# do
# cp wartune-field-${i}.png{,.`date +%H-%M-%S---%d-%m`}
# done
}

function farm_field_search {
farm_field_take_screenshots

field_positions=(wartune-field-1 wartune-field-2 wartune-field-3 wartune-field-4 wartune-field-5 wartune-field-6 wartune-field-7 wartune-field-8 wartune-field-9)
# field_positions=$(eval wartune-field-{1..9})
# if [[ $hey =~ .*kyanite.* ]]; then echo "there is kyanite"; else echo "no kyanite buddy"; fi

for i in "${field_positions[@]}"
do
# echo $i
temp=$(farm_field_define_colors $i)

if [[ $temp =~ .*kyanite.* ]]; then
if [[ "$i" = wartune-field-1 ]]; then 
# echo $i && 
# cp wartune-field-1.png kyanite_example_$(date +%H-%M-%S---%d-%m)
click_on_first_field
fi
if [[ "$i" = wartune-field-2 ]]; then 
# echo $i && 
# cp wartune-field-2.png kyanite_example_$(date +%H-%M-%S---%d-%m)
click_on_second_field
fi
if [[ "$i" = wartune-field-3 ]]; then 
# echo $i && 
# cp wartune-field-3.png kyanite_example_$(date +%H-%M-%S---%d-%m)
click_on_third_field
fi
if [[ "$i" = wartune-field-4 ]]; then 
# echo $i && 
# cp wartune-field-4.png kyanite_example_$(date +%H-%M-%S---%d-%m)
click_on_fourth_field
fi
if [[ "$i" = wartune-field-5 ]]; then 
# echo $i && 
# cp wartune-field-5.png kyanite_example_$(date +%H-%M-%S---%d-%m)
click_on_fifth_field
fi
if [[ "$i" = wartune-field-6 ]]; then 
# echo $i && 
# cp wartune-field-6.png kyanite_example_$(date +%H-%M-%S---%d-%m)
click_on_sixth_field
fi
if [[ "$i" = wartune-field-7 ]]; then 
# echo $i && 
# cp wartune-field-7.png kyanite_example_$(date +%H-%M-%S---%d-%m)
click_on_seventh_field
fi
if [[ "$i" = wartune-field-8 ]]; then 
# echo $i && 
# cp wartune-field-8.png kyanite_example_$(date +%H-%M-%S---%d-%m)
click_on_eighth_field
fi
if [[ "$i" = wartune-field-9 ]]; then 
# echo $i && 
# cp wartune-field-9.png kyanite_example_$(date +%H-%M-%S---%d-%m)
click_on_ninth_field
fi
fi

# if [[ $temp =~ .*daru.* ]]; then
# if [[ "$i" = wartune-field-1 ]]; then 
# # echo $i
# click_on_first_field
# fi
# if [[ "$i" = wartune-field-2 ]]; then 
# # echo $i
# click_on_second_field
# fi
# if [[ "$i" = wartune-field-3 ]]; then 
# # echo $i
# click_on_third_field
# fi
# # echo $i
# if [[ "$i" = wartune-field-4 ]]; then 
# click_on_fourth_field
# fi
# if [[ "$i" = wartune-field-5 ]]; then 
# # echo $i
# click_on_fifth_field
# fi
# # echo $i
# if [[ "$i" = wartune-field-6 ]]; then 
# click_on_sixth_field
# fi
# if [[ "$i" = wartune-field-7 ]]; then 
# # echo $i
# click_on_seventh_field
# fi
# if [[ "$i" = wartune-field-8 ]]; then 
# # echo $i
# click_on_eighth_field
# fi
# if [[ "$i" = wartune-field-9 ]]; then 
# # echo $i
# click_on_ninth_field
# fi
# fi
done
}





function search_current_page_friends {
click_on_first_friend; search_farm_fields
click_on_second_friend; search_farm_fields
click_on_third_friend; search_farm_fields
click_on_fourth_friend; search_farm_fields
click_on_fifth_friend; search_farm_fields
click_on_sixth_friend; search_farm_fields
click_on_seventh_friend; search_farm_fields
click_on_eighth_friend; search_farm_fields
click_on_ninth_friend; search_farm_fields
click_on_tenth_friend; search_farm_fields
click_on_eleventh_friend; search_farm_fields
click_on_twelfth_friend; search_farm_fields
}

function friend_list_next_page {
xdotool mousemove 1525 619; sleep .25s
xdotool click 1; sleep 1s
}

function friend_list_next_page_fast {
xdotool mousemove 1525 619; sleep .5s
xdotool click 1; sleep 1s
}

function click_on_ToA { ### Duration .4 sec`
xdotool mousemove 495 349; sleep .2s
xdotool click 1; sleep .2s
}

function search_for_ToA_fast { ### Duration > 3 sec
echo searching toa
scrot wartune-farm-crystal.png; sleep 1s
# how many friends to crystal from?
crystal_friends=1
# wartune-farm-crystal.pat OLD PAT
# wartune-farm-crystal-new.pat
max_crystal_friends=$(visgrep -t 1000 wartune-farm-crystal.png wartune-farm-crystal-new.pat wartune-farm-crystal-new.pat | sed "s/,/ /g" | cut -d' ' -f 1-2 | wc -l)

while [ $crystal_friends -le $max_crystal_friends ]; do
# echo $crystal_friends $max_crystal_friends
visgrep_farm_crystal=`visgrep -t 1000 wartune-farm-crystal.png wartune-farm-crystal-new.pat wartune-farm-crystal-new.pat | sed "s/,/ /g" | cut -d' ' -f 1 | sed -n "$crystal_friends"p`
visgrep_farm_crystal=`visgrep -t 1000 wartune-farm-crystal.png wartune-farm-crystal-new.pat wartune-farm-crystal-new.pat | sed "s/,/ /g" | cut -d' ' -f 1`
[ "$visgrep_farm_crystal" != "" ] && xdotool mousemove `visgrep -t 1000 wartune-farm-crystal.png wartune-farm-crystal-new.pat wartune-farm-crystal-new.pat | sed "s/,/ /g" | cut -d' ' -f 1-2 | sed -n "$crystal_friends"p`; sleep 1s; xdotool click 1; sleep 1s; click_on_ToA

crystal_friends=`expr $crystal_friends + 1`

counter_ToA=`expr $counter_ToA + 1`

# echo $counter_ToA
done

# sleep $((180 - $counter_ToA * 2))
}


function search_for_ToA {
counter_ToA=0
scrot wartune-farm-crystal.png; sleep 1s
# how many friends to crystal from?
crystal_friends=1

max_crystal_friends=`visgrep -t 1000 wartune-farm-crystal.png wartune-farm-crystal-new.pat wartune-farm-crystal-new.pat | sed "s/,/ /g" | cut -d' ' -f 1-2 | wc -l`

while [ $crystal_friends -le $max_crystal_friends ]; do
# echo $crystal_friends $max_crystal_friends
visgrep_farm_crystal=`visgrep -t 1000 wartune-farm-crystal.png wartune-farm-crystal-new.pat wartune-farm-crystal-new.pat | sed "s/,/ /g" | cut -d' ' -f 1 | sed -n "$crystal_friends"p`
visgrep_farm_crystal=`visgrep -t 1000 wartune-farm-crystal.png wartune-farm-crystal-new.pat wartune-farm-crystal-new.pat | sed "s/,/ /g" | cut -d' ' -f 1`
[ "$visgrep_farm_crystal" != "" ] && xdotool mousemove `visgrep -t 1000 wartune-farm-crystal.png wartune-farm-crystal-new.pat wartune-farm-crystal-new.pat | sed "s/,/ /g" | cut -d' ' -f 1-2 | sed -n "$crystal_friends"p`; sleep 1s; xdotool click 1; sleep 1s; click_on_ToA

crystal_friends=`expr $crystal_friends + 1`

counter_ToA=`expr $counter_ToA + 1`

echo $counter_ToA
done

# sleep $((180 - $counter_ToA * 2))
}

function search_for_steal {
search_and_click wartune-farm-steal
sleep 1s
farm_field_search

if [[ $(date +%H) = 22 ]] || [[ $(date +%H) = 23 ]] || [[ $(date +%H) = 00 ]] || [[ $(date +%H) = 01 ]]; then
click_fields
fi
}

function search_for_steal_fast {
counter_steal=0
scrot farm_steal.png && steal_friends=1 && max_steal_friends=$(visgrep -t 1000 farm_steal.png farm_steal.pat farm_steal.pat | sed "s/,/ /g" | cut -d' ' -f 1-2 | wc -l) 

while [[ $steal_friends -le $max_steal_friends ]]; do

# echo $crystal_friends $max_crystal_friends
# visgrep_farm_steal=`visgrep -t 1000 farm_steal.png farm_steal.pat farm_steal.pat | sed "s/,/ /g" | cut -d' ' -f 1 | sed -n "$steal_friends"p`

visgrep_farm_steal=$(visgrep -t 1000 farm_steal.png farm_steal.pat farm_steal.pat | sed "s/,/ /g" | cut -d' ' -f 1)

[[ "$visgrep_farm_steal" != "" ]] && xdotool mousemove $(visgrep -t 1000 farm_steal.png farm_steal.pat farm_steal.pat | sed "s/,/ /g" | cut -d' ' -f 1-2 | sed -n "$steal_friends"p) && xdotool click 1 && sleep .5s && farm_field_search 
# [[ "$visgrep_farm_steal" != "" ]] && xdotool mousemove $(visgrep -t 1000 farm_steal.png farm_steal.pat farm_steal.pat | sed "s/,/ /g" | cut -d' ' -f 1-2 | sed -n "$steal_friends"p) && xdotool click 1 && sleep .5s && click_fields ###### CHECK COORDINATES FOR SPECIFIC STEALS!!! farm_field_search

steal_friends=`expr $steal_friends + 1`

counter_steal=`expr $counter_steal + 1`

# echo $counter_steal
done
}

function search_for_revival_fast {
counter_steal=0
scrot farm_steal.png && steal_friends=1 && max_steal_friends=$(visgrep -t 1000 farm_steal.png farm_happy_face.pat farm_happy_face.pat | sed "s/,/ /g" | cut -d' ' -f 1-2 | wc -l) 

while [[ $steal_friends -le $max_steal_friends ]]; do

# echo $crystal_friends $max_crystal_friends
# visgrep_farm_steal=`visgrep -t 1000 farm_steal.png farm_steal.pat farm_steal.pat | sed "s/,/ /g" | cut -d' ' -f 1 | sed -n "$steal_friends"p`

visgrep_farm_steal=$(visgrep -t 1000 farm_steal.png farm_happy_face.pat farm_happy_face.pat | sed "s/,/ /g" | cut -d' ' -f 1)

[[ "$visgrep_farm_steal" != "" ]] && xdotool mousemove $(visgrep -t 1000 farm_steal.png farm_happy_face.pat farm_happy_face.pat | sed "s/,/ /g" | cut -d' ' -f 1-2 | sed -n "$steal_friends"p) && xdotool click 1 && sleep .5s && click_fields ###### CHECK COORDINATES FOR SPECIFIC STEALS!!! farm_field_search

steal_friends=`expr $steal_friends + 1`

counter_steal=`expr $counter_steal + 1`

# echo $counter_steal
done
}


function inspect_friend_farms_fast() { ### Duration = at least 2m --- ALWAYS start it from within the farm! 
for i in $(eval echo "{1..$1}")
do
sylph_close_windows
search_and_click go_to_initial_friend_page
search_and_click go_to_my_farm

click_fields ### Duration = 10 sec ###
sylph_close_windows


for i in {1..19}
do
search_for_ToA_fast ### Duration > 3 sec
# search_for_revival_fast
search_for_steal_fast ### Duration > 3 sec
friend_list_next_page_fast ### Duration = 1.5 sec
done

search_and_click go_to_initial_friend_page
search_and_click go_to_my_farm
done
}

# inspect_friend_farms_fast

# inspect_friend_farms 

function inspect_friend_farms_for_minutes() {

control_farm_inspection()
# run if user hits control-c
{
 echo -en "\n*** Ouch! Exiting ***\n"
# cleanup
kill $(<global_variable_inspecting_running_in_background_PID)
killall bash
 exit $?
}

trap control_farm_inspection SIGINT

function inspect_friend_farm_loop {
while true
do
sylph_close_windows
# search_and_click go_to_initial_friend_page
xdotool mousemove 1406 619; sleep 1s; xdotool click 1
search_and_click farm_my_farm

click_fields 
sylph_close_windows


for i in {1..16}
do
search_for_ToA_fast ### Duration > 3 sec
# search_for_revival_fast
search_for_steal_fast ### Duration > 3 sec
friend_list_next_page_fast ### Duration = 1.5 sec
done

xdotool mousemove 1406 619; sleep 1s; xdotool click 1
search_and_click farm_my_farm
done


}

inspect_friend_farm_loop &
# 
inspecting_running_in_background_PID=$(echo $!)
# echo $!
echo $inspecting_running_in_background_PID > global_variable_inspecting_running_in_background_PID
echo process in background $inspecting_running_in_background_PID
# echo $(<global_variable_inspecting_running_in_background_PID)
# 
sleep "$1m"
kill $(<global_variable_inspecting_running_in_background_PID)
search_and_click farm_my_farm


}


function battle_mode_exit_prematurely {
if [[ $(search_only sylph_my_avatar) = 1 ]] || [[ $(search_only duels_shuffle) = 1 ]]
then
# echo avatar present
# sleep .3s
echo "exiting this attack prematurely" && exit_prematurely=1 && break # return 1
fi



# scrot battle_mode_statue.png && convert -crop 400x200+450+750 battle_mode_statue.png{,} && visgrep_wb_prematurely=$( visgrep -t 1000 "battle_mode_statue.png" "battle_mode_statue.pat" "battle_mode_statue.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_wb_prematurely}" = "" ]] && echo "exiting this attack prematurely" && exit_prematurely=1 && break
}

function battle_mode_lunatic_fire {
if [[ $exit_prematurely != 1 ]]; then
echo startinglf
while true
do
sleep .2s
scrot battle_mode_as_active.png && convert -crop 400x200+450+750 battle_mode_as_active.png{,} && visgrep_active_as=$( visgrep -t 1000 "battle_mode_as_active.png" "battle_mode_as_active.pat" "battle_mode_as_active.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_active_as}" != "" ]] && break
battle_mode_exit_prematurely
done
[[ $exit_prematurely != 1 ]] && echo "lunatic_fire"; sleep .1s; xdotool type 4;  sleep .2s; xdotool key $(battle_mode_qte)
#echo endedlf
fi
}

function battle_mode_holy_seal {
if [[ $exit_prematurely != 1 ]]; then
echo startinghs
while true
do
sleep .2s
scrot battle_mode_as_active.png && convert -crop 400x200+450+750 battle_mode_as_active.png{,} && visgrep_active_as=$( visgrep -t 1000 "battle_mode_as_active.png" "battle_mode_as_active.pat" "battle_mode_as_active.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_active_as}" != "" ]] && break
battle_mode_exit_prematurely
done
[[ $exit_prematurely != 1 ]] && echo "holy_seal"; sleep .2s; xdotool type q; sleep .23s
#echo endedhs
fi
}

function battle_mode_rune_brutality {
if [[ $exit_prematurely != 1 ]]; then
echo startingbrutality
while true
do
sleep .2s
scrot battle_mode_as_active.png && convert -crop 400x200+450+750 battle_mode_as_active.png{,} && visgrep_active_as=$( visgrep -t 1000 "battle_mode_as_active.png" "battle_mode_as_active.pat" "battle_mode_as_active.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_active_as}" != "" ]] && break
battle_mode_exit_prematurely
done
[[ $exit_prematurely != 1 ]] && echo "rune_brutality"; sleep .2s; xdotool type z; sleep .2s;  xdotool key $(battle_mode_qte)
#echo endedbrutality
fi
}

function battle_mode_rune_healing {
if [[ $exit_prematurely != 1 ]]; then
echo startinghealing
while true
do
sleep .2s
scrot battle_mode_as_active.png && convert -crop 400x200+450+750 battle_mode_as_active.png{,} && visgrep_active_as=$( visgrep -t 1000 "battle_mode_as_active.png" "battle_mode_as_active.pat" "battle_mode_as_active.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_active_as}" != "" ]] && break
battle_mode_exit_prematurely
done
[[ $exit_prematurely != 1 ]] && echo "rune_healing"; sleep .2s; xdotool type x;  sleep .5s; xdotool key $(battle_mode_qte)
#echo endedhealing
fi
}




function battle_mode_multi_shot {
if [[ $exit_prematurely != 1 ]]; then
echo startingms
while true
do
sleep .2s
scrot battle_mode_as_active.png && convert -crop 400x200+450+750 battle_mode_as_active.png{,} && visgrep_active_as=$( visgrep -t 1000 "battle_mode_as_active.png" "battle_mode_as_active.pat" "battle_mode_as_active.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_active_as}" != "" ]] && break
battle_mode_exit_prematurely
done
[[ $exit_prematurely != 1 ]] && echo "multi_shot"; sleep .2s; xdotool type 2; sleep .5s; xdotool key $(battle_mode_qte)
#echo endedms
fi
}

function battle_mode_delphic_sniper {
if [[ $exit_prematurely != 1 ]]; then
echo startingds
while true
do
sleep .2s
scrot battle_mode_as_active.png && convert -crop 400x200+450+750 battle_mode_as_active.png{,} && visgrep_active_as=$( visgrep -t 1000 "battle_mode_as_active.png" "battle_mode_as_active.pat" "battle_mode_as_active.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_active_as}" != "" ]] && break
battle_mode_exit_prematurely
done
[[ $exit_prematurely != 1 ]] && echo "delphic_sniper"; sleep .4s; xdotool type 3; sleep .4s; xdotool key $(battle_mode_qte)
#echo endedds
fi
}

function battle_mode_arrow_strike {
if [[ $exit_prematurely != 1 ]]; then
echo startingas
while true
do
sleep .2s
scrot battle_mode_as_active.png && convert -crop 400x200+450+750 battle_mode_as_active.png{,} && visgrep_active_as=$( visgrep -t 1000 "battle_mode_as_active.png" "battle_mode_as_active.pat" "battle_mode_as_active.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_active_as}" != "" ]] && break
battle_mode_exit_prematurely
done
[[ $exit_prematurely != 1 ]] && echo "arrow_strike"; sleep .2s; xdotool type 1; sleep .2s
#echo endedas
fi
}

function battle_mode_qte {
for i in Up Left Right Down
do
for j in Up Left Right Down
do
echo -n "$i $j "
done
done
}

function battle_mode_bloodthirsty {
if [[ $exit_prematurely != 1 ]]; then
echo startingbloodthirsty
while true
do
sleep .1s
scrot battle_mode_as_active.png && convert -crop 400x200+450+750 battle_mode_as_active.png{,} && visgrep_active_as=$( visgrep -t 1000 "battle_mode_as_active.png" "battle_mode_as_active.pat" "battle_mode_as_active.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_active_as}" != "" ]] && break
battle_mode_exit_prematurely
done
[[ $exit_prematurely != 1 ]] && echo "bloodthirsty"; sleep .1s; xdotool type 5; sleep .1s; xdotool key $(battle_mode_qte)
echo endedbloodthirsty
fi
}

function battle_mode_qte {
for i in Up Left Right Down
do
for j in Up Left Right Down
do
echo -n "$i $j "
done
done
}

function battle_mode_waiting_for_battle {
avatar_count=1
while [[ $(search_only sylph_my_avatar) = 1 ]]
do
echo avatar present
avatar_count=$(expr $avatar_count + 1)
if [[ $avatar_count -ge 10 ]]; then
return 1
fi
sleep 1s
done
echo "just entered battle" && return 1

# while true
# do
# # sleep .s
# scrot battle_mode_statue.png && convert -crop 400x200+450+750 battle_mode_statue.png{,} && visgrep_battle_mode=$( visgrep -t 1000 "battle_mode_statue.png" "battle_mode_statue.pat" "battle_mode_statue.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_battle_mode}" != "" ]] && echo "just entered battle" && break
# done
# exit 0
}

function battle_mode_duels {
exit_prematurely=0
battle_mode_waiting_for_battle
echo "starting afk fight"
# battle_mode_rune_brutality
battle_mode_multi_shot
battle_mode_lunatic_fire
battle_mode_multi_shot
battle_mode_bloodthirsty
# battle_mode_holy_seal
for i in {1..10}
do
battle_mode_multi_shot
battle_mode_lunatic_fire
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_delphic_sniper
battle_mode_multi_shot
battle_mode_arrow_strike
done
echo "battle ended" 
sleep 3s
# close_windows
}


function battle_mode_spd {
exit_prematurely=0
battle_mode_waiting_for_battle
echo "starting afk fight"
# battle_mode_rune_brutality
battle_mode_lunatic_fire
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
echo "battle ended" 
# close_windows
}

function battle_mode_mpd_boss {
exit_prematurely=0
battle_mode_waiting_for_battle
echo "starting afk fight"
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
echo "battle ended" 
# close_windows
}

# 
# function exit_test {
# for i in {1..10}
# do
# echo $i
# if [[ $i = 6 ]]; then
# test_v=1 && return 1
# fi
# [[ $test_v != 1 ]] && echo "ended good"
# done
# }
# 
# function test {
# exit_test
# echo "ended supergood"
# }
# 

function battle_mode_save_rage {
exit_prematurely=0
battle_mode_waiting_for_battle
echo "starting afk fight"
battle_mode_arrow_strike
battle_mode_arrow_strike
battle_mode_arrow_strike
battle_mode_arrow_strike
battle_mode_arrow_strike
battle_mode_arrow_strike
battle_mode_arrow_strike
battle_mode_arrow_strike
battle_mode_arrow_strike
battle_mode_arrow_strike
battle_mode_arrow_strike
battle_mode_arrow_strike
battle_mode_arrow_strike
echo "battle ended" 2
# close_windows
}

function battle_mode_arena {
exit_prematurely=0
battle_mode_waiting_for_battle
echo "starting afk fight"
# sleep .5s
#battle_mode_holy_seal
battle_mode_rune_brutality
# battle_mode_multi_shot
battle_mode_lunatic_fire
battle_mode_bloodthirsty
# battle_mode_holy_seal
# battle_mode_multi_shot
# battle_mode_arrow_strike
# battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_delphic_sniper
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_lunatic_fire
battle_mode_rune_healing
battle_mode_lunatic_fire
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
# battle_mode_arrow_strike
# battle_mode_arrow_strike
# battle_mode_arrow_strike
# battle_mode_arrow_strike
# battle_mode_arrow_strike
# battle_mode_multi_shot
echo "battle ended" 
# close_windows
}


function battle_mode_battleground {
exit_prematurely=0
battle_mode_waiting_for_battle
kill -TSTP $(<global_variable_battleground_rh_running_in_background_PID)
echo "starting afk fight"
# sleep .5s
battle_mode_rune_brutality
# battle_mode_multi_shot
battle_mode_lunatic_fire
# battle_mode_multi_shot
# battle_mode_holy_seal
# battle_mode_multi_shot
# battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_rune_healing
battle_mode_lunatic_fire
battle_mode_multi_shot
battle_mode_arrow_strike
battle_mode_multi_shot
battle_mode_arrow_strike
# battle_mode_arrow_strike
# battle_mode_arrow_strike
# battle_mode_arrow_strike
# battle_mode_arrow_strike
# battle_mode_delphic_sniper
# battle_mode_arrow_strike
# battle_mode_multi_shot
echo "battle ended" 
kill -CONT $(<global_variable_battleground_rh_running_in_background_PID)
# close_windows
}

function create_arena_room {
search_and_click go_to_city
search_and_click go_to_city_confirm
search_and_click go_to_arena
search_and_click go_to_arena_party
search_and_click arena_create_room
}

# function search_for_arena_start {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
# while true
# do
# scrot arena_start.png && convert -crop 300x500+1400+400 arena_start.png{,} ; sleep 2s
# visgrep_arena_start=`visgrep -t 500 arena_start.png arena_start.pat arena_start.pat | sed "s/,/ /g" | cut -d' ' -f 1`
# [ "$visgrep_arena_start" != "" ] && break
# # xdotool mousemove 1622 532; sleep 1s; xdotool click 1 
# done
# xdotool mousemove 1622 732 && xdotool click 1 && battle_mode_arena
# }

# attacks-pvp-arena-three-players.png
function search_for_arena_ready_or_start {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`

while true
do
scrot arena_start.png && convert -crop 300x500+1400+400 arena_start.png{,} ; sleep .2s
visgrep_arena_start=`visgrep -t 500 arena_start.png arena_start.pat arena_start.pat | sed "s/,/ /g" | cut -d' ' -f 1`
[ "$visgrep_arena_start" != "" ] && break
echo doing arena ready
scrot arena_ready.png && convert -crop 300x500+1400+400 arena_ready.png{,} ; sleep .2s
visgrep_wartune_ready=`visgrep -t 500 arena_ready.png arena_ready.pat arena_ready.pat | sed "s/,/ /g" | cut -d' ' -f 1`
[ "$visgrep_wartune_ready" != "" ] && break


# xdotool mousemove 1622 532; sleep 1s; xdotool click 1 
# xdotool mousemove `visgrep wartune-arena-ready.png attacks-pvp-arena-ready-button-active.pat attacks-pvp-arena-ready-button-active.pat | sed "s/,/ /g" | cut -d' ' -f 1-2`; sleep 1s
# [ "$visgrep_wartune_ready" != "" ] && xdotool click 1; sleep 1s 
done
xdotool mousemove 1505 693 && sleep .1s && xdotool click 1 && sleep 1s

scrot arena_start_cancel_active.png && convert -crop 300x500+1400+400 arena_start_cancel_active.png{,} ; sleep .2s
visgrep_arena_start_cancel_active=`visgrep -t 500 arena_start_cancel_active.png arena_start_cancel_active.pat arena_start_cancel_active.pat | sed "s/,/ /g" | cut -d' ' -f 1`
[ "$visgrep_arena_start_cancel_active" = "" ] && echo cancel active && xdotool mousemove 1505 693 && xdotool click 1

sleep 1s

scrot arena_ready_cancel_active.png && convert -crop 300x500+1400+400 arena_ready_cancel_active.png{,} ; sleep .2s
visgrep_arena_ready_cancel_active=`visgrep -t 500 arena_ready_cancel_active.png arena_ready_cancel_active.pat arena_ready_cancel_active.pat | sed "s/,/ /g" | cut -d' ' -f 1`
[ "$visgrep_arena_ready_cancel_active" = "" ] && echo cancel active && xdotool mousemove 1505 693 && xdotool click 1
#xdotool mousemove 1505 693 && xdotool click 1

battle_mode_arena
}
# battle_mode_save_rage
# battle_mode_arena
# search_for_arena_ready


function battle_mode_wb_starting_afk {
if [[ $exit_prematurely != 1 ]]; then
echo startingafk
while true
do
sleep .2s
scrot battle_mode_as_active.png && convert -crop 400x200+450+750 battle_mode_as_active.png{,} && visgrep_active_as=$( visgrep -t 1000 "battle_mode_as_active.png" "battle_mode_as_active.pat" "battle_mode_as_active.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_active_as}" != "" ]] && break
battle_mode_exit_prematurely
done
[[ $exit_prematurely != 1 ]] && echo "afk_mode_clicked"; search_and_click wb_afk_button echo afkbutton ended
fi
}

function battle_mode_wb {
exit_prematurely=0
battle_mode_waiting_for_battle
echo "starting afk fight"
battle_mode_wb_starting_afk
battle_mode_wb_starting_afk
battle_mode_wb_starting_afk
battle_mode_wb_starting_afk
battle_mode_wb_starting_afk
battle_mode_wb_starting_afk
battle_mode_wb_starting_afk
battle_mode_wb_starting_afk
battle_mode_wb_starting_afk
battle_mode_wb_starting_afk
battle_mode_wb_starting_afk
echo "battle ended"
# close_windows
}

function wb_join {
### Duration = 10 sec ###
search_and_click wartune-wb-icon; sleep 5s
# xdotool mousemove 1217 285; sleep 3s
# xdotool click 1; sleep 2s
search_and_click wartune-wb-join
click_coordinates 965 523
sleep 5s
}

function wb_vouchers {
search_and_click wb_vouchers
sleep 2
search_and_click wb_vouchers_reminder_checkbox
sleep 2
search_and_click wb_vouchers_reminder_ok
sleep 2
xdotool mousemove 100 100
sleep 2
search_and_click wb_vouchers
sleep 2
search_and_click wb_vouchers_reminder_checkbox
sleep 2
search_and_click wb_vouchers_reminder_ok
xdotool mousemove 100 100
sleep 2
search_and_click wb_vouchers
sleep 2
search_and_click wb_vouchers_reminder_checkbox
sleep 2
search_and_click wb_vouchers_reminder_ok
for i in {1..10}
do
search_and_click wb_vouchers
sleep 1
xdotool mousemove 100 100
sleep 1
done
}
function wb_attack {
while true
do
# echo "ready to attack"
click_coordinates 1046 397
# xdotool type 5; sleep .5
# xdotool key $(battle_mode_qte); sleep .5
search_and_click wb_afk_button
search_only_true go_to_city_confirm_new && break
# scrot wartune-wb-confirm-after-battle.png && visgrep_wartune_wb_confirm_after_battle=$( visgrep -t 1000 "wartune-wb-confirm-after-battle.png" "wartune-wb-confirm-after-battle.pat" "wartune-wb-confirm-after-battle.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_wartune_wb_confirm_after_battle}" != "" ]] && echo "WB ended" && break
# guild_contribution
# scrot battle_mode_statue.png && convert -crop 400x200+450+750 battle_mode_statue.png{,} && visgrep_battle_mode=$( visgrep -t 1000 "battle_mode_statue.png" "battle_mode_statue.pat" "battle_mode_statue.pat" | sed "s/,/ /g" | cut -d' ' -f 1 )
# [[ "${visgrep_battle_mode}" != "" ]] && echo "just entered battle" && battle_mode_wb && echo "sleeping 15sec" && sleep 15s

# if [[ $(date +%H%M) = 1322 ]] || [[ $(date +%H%M) = 1822 ]] || [[ $(date +%H%M) = 0022 ]]; then
# return 1
# fi
done
sleep 5s
search_and_click go_to_city_confirm_new
}

function wb_attack_new {
while true
do
click_coordinates_fast 1046 397
search_only_true settings_icon && xdotool type 4 && sleep .5 && xdotool key $(battle_mode_qte) && sleep .5 && search_and_click wb_afk_button && sleep 28 && for i in {1..5}; do xdotool type 42 && sleep .5 && xdotool key $(battle_mode_qte) ; done  && search_and_click wb_afk_button 
search_only_true go_to_city_confirm_new && break
# scrot wartune-wb-confirm-after-battle.png && visgrep_wartune_wb_confirm_after_battle=$( visgrep -t 1000 "wartune-wb-confirm-after-battle.png" "wartune-wb-confirm-after-battle.pat" "wartune-wb-confirm-after-battle.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "${visgrep_wartune_wb_confirm_after_battle}" != "" ]] && echo "WB ended" && break
# guild_contribution
# scrot battle_mode_statue.png && convert -crop 400x200+450+750 battle_mode_statue.png{,} && visgrep_battle_mode=$( visgrep -t 1000 "battle_mode_statue.png" "battle_mode_statue.pat" "battle_mode_statue.pat" | sed "s/,/ /g" | cut -d' ' -f 1 )
# [[ "${visgrep_battle_mode}" != "" ]] && echo "just entered battle" && battle_mode_wb && echo "sleeping 15sec" && sleep 15s

# if [[ $(date +%H%M) = 1322 ]] || [[ $(date +%H%M) = 1822 ]] || [[ $(date +%H%M) = 0022 ]]; then
# return 1
# fi
done
sleep 5s
search_and_click go_to_city_confirm_new
}

function wait_till(){
current_time=$(date +%s) && target_time=$(date -d "$1" +%s) && sleep_seconds=$(( $target_time - $current_time ))
echo waiting for $sleep_seconds seconds
sleep $sleep_seconds 
}

function set_next_bounties_time_global_variable {
echo $(expr $(eval date +%s) + 1800) > global_variable_next_bounties_time
}

function set_next_harvest_time_global_variable {
echo $(expr $(eval date +%s) + 3240) > global_variable_next_harvest_time
}

function sleep_till_next_bounties {
sleep_seconds=$(( $(<global_variable_next_bounties_time) - $(date +%s) ))
echo waiting next bounties for $sleep_seconds seconds, because next bounties start at $(echo $(date --date=@$(<global_variable_next_bounties_time))) and now it is $(echo $(date))
sleep $sleep_seconds 
}

function sleep_till_next_harvest {
sleep_seconds=$(( $(<global_variable_next_harvest_time) - $(date +%s) ))
echo waiting next harvest for $sleep_seconds seconds, because next harvest start at $(echo $(date --date=@$(<global_variable_next_harvest_time))) and now it is $(echo $(date))
sleep $sleep_seconds 
}


function sleep_till_next_refresh {
sleep_seconds=$(( $next_refresh_time - $(date +%s) ))
echo waiting next refresh for $sleep_seconds seconds
sleep $sleep_seconds 
}

function click_on_fields_for_minutes() {
how_many_times=$(( $1 * 60 / 10 ))
for i in $(eval echo "{1..$how_many_times}")
do
# echo $i
 click_fields ### Duration = 10 sec ###
done
}

function set_next_bounties_time_global_variable {
echo $(expr $(eval date +%s) + 1800) > global_variable_next_bounties_time
}

# echo script process has pid $$

# declare -g wartune_farm_PID=$$

function farm_altar_bounties_tasks {
echo "" > global_variable_last_position
echo "Now last location variable is $(<global_variable_last_position)"
next_bounties_time=0
while true
# for i in {1..1000}
do
# sleep 1s; echo "still here idiot"
sleep 1s; echo $i

echo refreshing > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

go_to_wartune_wetlands ### 1m 20 sec @ 1m 20 sec @@ 61m 30 sec

sleep 2s; echo farm > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

go_to_farm ### 15 sec @ 1m 40 sec @@ 63m 10 sec

sleep 2s 
egc
plant_seeds ### 1m @ 2m 40 sec @@ 65m 50 sec

# sleep_till_next_bounties 
echo bounties > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

complete_bounties ### 45 sec @ 3m 25 sec

echo farm > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

go_to_farm ### 15 sec @ 3m 45 sec

inspect_friend_farms_fast ### > 3m 40sec @ 7m 5 sec

echo altar > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

go_to_altar ### 60 sec @ 8m 5 sec

sleep 25m ### 25m @ 33m 5 sec
# # # # # # # # sleep_till_next_bounties 

echo bounties > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

complete_bounties ### 45 sec @ 33m 50 sec

echo farm > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

go_to_farm ### 15 sec @ 34m 10 sec

inspect_friend_farms_fast ### > 3m 40sec @ 37m 50 sec

echo altar > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

go_to_altar ### 60 sec @ 38m 50 sec

sleep 8m ### 1m @ 51m 50 sec

# # # # # # # sleep_till_next_harvest 

echo farm > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

go_to_farm ### 15 sec @ 52m 10 sec

inspect_friend_farms ### > 3m 40sec @ 37m 50 sec

click_on_fields_for_minutes 8 ### 8m @ 60m 10 sec
#; sleep_till_next_refresh
done

# caputre_one_astral
# guild_blessing 1
# guild_contribution 1
}


function farm_bounties_tasks() {
echo "" > global_variable_last_position
echo "Now last location variable is $(<global_variable_last_position)"
next_bounties_time=0
# while true
for i in $(eval echo "{1..$1}")
do

# sleep 1s; echo "still here idiot"
echo refreshing > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

date

go_to_wartune_wetlands ### 1m 25 sec @ 1m 25 sec @@ 62m 0 sec

date

echo farm > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

date

go_to_farm ### 20 sec @ 1m 45 sec @@ 62m 20 sec

date

echo now i start planting

plant_seeds_fast ### 30 sec @ 2m 15 sec @@ 62m 50 sec

# sleep_till_next_bounties 

date

echo bounties > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

date

set_next_bounties_time_global_variable

date

complete_bounties ### 1m 30 sec @ 3m 45 sec @@ 

date

echo farm > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

date

go_to_farm ### 20 sec @ 4m 5 sec @@ 

date

for i in {1..8} ### > 16m 0sec @ 20m 5 sec @@ 
do
inspect_friend_farms_fast ### > 2m
done

date

sleep_till_next_bounties ### ?m ?? sec @ 33m 45 sec @@ 

date

echo bounties > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

date

set_next_bounties_time_global_variable

complete_bounties ### 1m 30 sec @ 35m 15 sec @@ 

echo farm > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"

# go_to_altar ### 60 sec --- 1m 21.6 sec
# sleep 17m ### 10m --- 11m 21.6 second


go_to_farm ### 20 sec @ 35m 35 sec @@ 

for i in {1..8} ### > 16m 0sec @ 51m 35 sec @@ 
do
inspect_friend_farms_fast ### > 2m
done

go_to_farm

click_on_fields_for_minutes 9 ### 9m @ 60m 35 sec @@ 

#; sleep_till_next_refresh

done
}

function farm_duel_tasks {
echo "" > global_variable_last_position
echo "Now last location variable is $(<global_variable_last_position)"
next_bounties_time=0
while true
# for i in {1..1000}
do
# sleep 1s; echo "still here idiot"
echo refreshing > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"
date
go_to_wartune_wetlands ### 1m 20 sec @ 1m 20 sec @@ 61m 20 sec

# guild_contribution 1

date
echo farm > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"
date
go_to_farm ### 20 sec @ 1m 40 sec @@ 61m 40 sec
date
echo now i start planting
set_next_harvest_time_global_variable
plant_seeds_fast 

# sleep_till_next_bounties 
date
echo bounties > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"
date
set_next_bounties_time_global_variable
date
complete_bounties ### 45 sec @ 3m 25 sec @@ 63m 25 sec
date

duel_with_best_player 17

sleep_till_next_harvest ### ?m ?? sec @ 32m 40 sec @@ 62m 40 sec

date
go_to_farm 
click_on_fields_for_minutes 7 ### 7m @ 32m 40 sec @@ 62m 40 sec
#; sleep_till_next_refresh

done
}


# function farm_catacombs_tasks {
# echo "" > global_variable_last_position
# echo "Now last location variable is $(<global_variable_last_position)"
# next_bounties_time=0
# while true
# # for i in {1..1000}
# do
# # sleep 1s; echo "still here idiot"
# echo refreshing > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"
# date
# go_to_wartune_wetlands ### 1m 20 sec @ 1m 20 sec @@ 61m 20 sec
# 
# # guild_contribution 1
# 
# date
# echo farm > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"
# date
# go_to_farm ### 20 sec @ 1m 40 sec @@ 61m 40 sec
# date
# echo now i start planting
# set_next_harvest_time_global_variable
# plant_seeds_fast ### 1m @ 2m 40 sec @@ 62m 40 sec
# 
# # sleep_till_next_bounties 
# date
# echo bounties > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"
# date
# set_next_bounties_time_global_variable
# date
# complete_bounties ### 45 sec @ 3m 25 sec @@ 63m 25 sec
# date
# 
# go_to_farm
# do_catacombs
# 
# # sleep_till_next_harvest ### ?m ?? sec @ 32m 40 sec @@ 62m 40 sec
# 
# date
# }

function farm_duel_tasks {
echo "" > global_variable_last_position
echo "Now last location variable is $(<global_variable_last_position)"
next_bounties_time=0
while true
# for i in {1..1000}
do
# sleep 1s; echo "still here idiot"
echo refreshing > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"
date
go_to_wartune_wetlands ### 1m 20 sec @ 1m 20 sec @@ 61m 20 sec

# guild_contribution 1

date
echo farm > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"
date
go_to_farm ### 20 sec @ 1m 40 sec @@ 61m 40 sec
date
echo now i start planting
set_next_harvest_time_global_variable
plant_seeds_fast ### 1m @ 2m 40 sec @@ 62m 40 sec

# sleep_till_next_bounties 
date
echo bounties > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"
date
set_next_bounties_time_global_variable
date
complete_bounties ### 45 sec @ 3m 25 sec @@ 63m 25 sec
date

duel_with_best_player 17

sleep_till_next_harvest ### ?m ?? sec @ 32m 40 sec @@ 62m 40 sec

date

click_on_fields_for_minutes 8 ### 8m @ 60m 10 sec
#; sleep_till_next_refresh

done
}

# go_to_farm
# click_on_fields_for_minutes 10 ### 8m @ 60m 10 sec
# #; sleep_till_next_refresh
# 
# done
# }


function check_refreshing {
if [[ $(<global_variable_last_position) = "refreshing" ]]; then
echo "sleeping for 2 minutes cause I was refreshing the page"
sleep 2m
echo "refreshing must have ended now"
sylph_close_windows
fi
}

function check_farm_availability {
while [[ $(<global_variable_farm_availability) = "unavailable" ]]
do
echo 'sleeping for 30 seconds because of FARM non-availability'
sleep 1m
done
echo 'now there is FARM permission'
sylph_close_windows
}

function return_to_last_location {

if [[ $(<global_variable_last_position) = "farm" ]]; then
sylph_close_windows
go_to_farm_fast
fi

if [[ $(<global_variable_last_position) = "bounties" ]]; then
sylph_close_windows
go_to_city_fast
fi

if [[ $(<global_variable_last_position) = "altar" ]]; then
sylph_close_windows
go_to_altar
fi
}

function quests_copper {
# close_windows
search_and_click go_to_city; sleep 2s
search_and_click go_to_city_confirm; sleep 2s
search_and_click quests_button
for i in {1..6};
do
# search_and_click quests_completed
search_and_click quests_completed_collect_rewards
# xdotool mousemove 123 123
done
search_and_click quests_daily
search_and_click quests_daily_copper
search_and_click quests_scroll_down
search_and_click quests_daily_copper
search_and_click quests_daily_copper_harvest
sleep 5s
# search_and_click quests_daily_copper_harvest_copper_mine
xdotool mousemove 717 288; xdotool click 1
sleep 25s
search_and_click go_to_city; sleep 2s
search_and_click go_to_city_confirm; sleep 2s
}

function campaign_blitz_three_times {
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
sylph_close_windows
# complete_bounties
search_and_click go_to_city; sleep 2s
search_and_click go_to_city_confirm; sleep 2s
search_and_click campaign_button 
search_and_click campaign_streak
search_and_click campaign_use_skeleton_keys
xdotool mousemove 985 470; sleep 1s
xdotool mousedown 1 ; sleep 1s
xdotool mousemove 950 470; sleep 1s
xdotool mouseup 1 ; sleep 1s
xdotool type 4; sleep 1s
search_and_click campaign_blitz_start
sleep 20m 2s
sylph_close_windows
search_and_click go_to_city; sleep 2s
search_and_click go_to_city_confirm; sleep 2s
complete_bounties
}


# function special_tasks_time {
# while true
# do
# 
# sleep 5s
# 
# if [[ $(date +%H%M) = 0900 ]]; then
# echo time for Catacombs
# check_refreshing
# close_windows
# kill -SIGSTOP $(echo $farm_altar_bounties_tasks_PID)
# go_to_city_fast
# do_catacombs
# close_windows
# return_to_last_location
# kill -SIGCONT $(echo $farm_altar_bounties_tasks_PID)
# fi
# 
# if [[ $(date +%H%M) = 1259 ]] || [[ $(date +%H%M) = 1759 ]] || [[ $(date +%H%M) = 2359 ]]; then
# echo time for World Boss
# check_refreshing
# close_windows
# kill -SIGSTOP $(echo $farm_altar_bounties_tasks_PID)
# echo enter wb battle
# go_to_city_fast
# wb_join
# wb_attack
# echo finished wb battle
# close_windows
# return_to_last_location
# kill -SIGCONT $(echo $farm_altar_bounties_tasks_PID)
# fi
# 
# if [[ $(date +%H%M) = 1401 ]]; then
# echo time for Group Arena
# check_refreshing
# close_windows
# kill -SIGSTOP $(echo $farm_altar_bounties_tasks_PID)
# go_to_city_fast
# create_arena_room 
# for i in {1..10}
# do
# echo Group Arena run $i
# search_for_arena_ready
# done
# close_windows
# return_to_last_location
# kill -SIGCONT $(echo $farm_altar_bounties_tasks_PID)
# fi
# 
# if [[ $(date +%H%M) = 0740 ]]; then
# echo time for Solo Arena
# check_refreshing
# close_windows
# kill -SIGSTOP $(echo $farm_altar_bounties_tasks_PID)
# echo enter Solo Arena
# go_to_city_fast
# duel_with_best_player 18
# echo finished Solo Arena
# close_windows
# return_to_last_location
# kill -SIGCONT $(echo $farm_altar_bounties_tasks_PID)
# fi
# 
# # if [[ $(date +%H%M) = 2346 ]]; then
# # echo time for testing last location
# # check_refreshing
# # close_windows
# # echo STOPING NORMAL TASKS
# # kill -SIGSTOP $(echo $farm_altar_bounties_tasks_PID)
# # close_windows
# # echo DO SPECIAL TASK 
# # go_to_altar
# # echo now i must have been transfered to altar
# # echo sleeping for 20sec; sleep 20s
# # echo DO SPECIAL TASK 
# # # do_catacombs
# # return_to_last_location
# # close_windows
# # echo RESUMING NORMAL TASKS
# # kill -SIGCONT $(echo $farm_altar_bounties_tasks_PID)
# # fi
# 
# done
# }
# 
# 
# function farm_tasks() {
# # echo "" > global_variable_last_position
# # echo "Now last location variable is $(<global_variable_last_position)"
# # next_bounties_time=0
# # while true
# echo unavailable > global_variable_farm_availability
# for i in $(eval echo "{1..$1}")
# do
# date
# 
# go_to_wartune_wetlands ### 1m 25 sec @ 1m 25 sec @@ 62m 0 sec
# 
# echo farm > global_variable_last_position
# 
# go_to_farm ### 20 sec @ 1m 45 sec @@ 62m 20 sec
# 
# echo now i start planting
# set_next_harvest_time_global_variable
# plant_seeds_fast ### 30 sec @ 2m 15 sec @@ 62m 50 sec
# 
# echo available > global_variable_farm_availability
# sleep_till_next_harvest
# echo unavailable > global_variable_farm_availability
# 
# click_on_fields_for_minutes 2 ### 9m @ 60m 35 sec @@ 
# done
# }
# 
# 
# function bounties_tasks {
# check_farm_availability
# 
# set_next_bounties_time_global_variable
# 
# echo available > global_variable_bounties_availability
# complete_bounties ### 1m 30 sec @ 3m 45 sec @@ 
# echo unavailable > global_variable_bounties_availability
# 
# go_to_farm ### 20 sec @ 4m 5 sec @@ 
# 
# while [[ $(( $(<global_variable_next_bounties_time) - $(date +%s) )) -ge 240 ]] ### > 16m 0sec @ 20m 5 sec @@ 
# do
# inspect_friend_farms_fast ### > 2m
# done
# 
# sleep_till_next_bounties ### ?m ?? sec @ 33m 45 sec @@ 
# 
# # echo bounties > global_variable_last_position; echo "Now last location variable is $(<global_variable_last_position)"
# 
# set_next_bounties_time_global_variable
# complete_bounties ### 1m 30 sec @ 35m 15 sec @@ 
# }



# create_arena_room 
# while true
# do
# search_for_arena_start
# done

# 

# # while true; do search_for_arena_ready ;done
# search_and_click go_to_arena
# date
# go_to_farm_fast 
# click_on_fields_for_minutes 4
# 




function timer() {
# sleep $1m
timer=$1
echo $timer
# timer=$(expr $timer - 1)
# echo $timer
for i in $(eval echo "{1..$1}")
# while [[ $(eval echo $timer) -le 0 ]]
do
echo -e "Countdown ends in \e[1;31m-\e[0m\e[1;37m $timer \e[0m\e[1;31m-\e[0m minutes."
sleep 1m
timer=$(expr $timer - 1)
done
mplayer ./Zombie\ On\ The\ Loose-SoundBible.com-1973717021.mp3
}

function sylph_arena {
click_coordinates 182 343
for i in {1..45}
do 
echo $i
click_coordinates 709 719
click_coordinates 843 635
click_coordinates 709 719
click_coordinates 839 938
done
search_and_click sylph_arena_close_window_button
search_and_click sylph_arena_close_window_button
sylph_close_windows
sylph_close_windows

}


function fishing_covenant {
# click_coordinates 182 343
search_and_click fishing_icon
sleep 10
for i in {1..63}
do 
echo $i
click_coordinates 753 833
sleep 2
#click_coordinates 1073 619
sleep 2
# click_coordinates 709 719
# click_coordinates 839 938
done
search_and_click sylph_arena_close_window_button
search_and_click sylph_arena_close_window_button
sylph_close_windows
sylph_close_windows
}

function fishing {
# click_coordinates 182 343
search_and_click fishing_icon
sleep 20
for i in {1..5}
do 
echo $i
click_coordinates 1073 619
sleep 10
done
search_and_click sylph_arena_close_window_button
search_and_click sylph_arena_close_window_button
sylph_close_windows
sylph_close_windows
}

function kill30 {
for i in {1..10}; do
click_coordinates 1534 882; sleep 5
click_coordinates 1092 635; sleep 5
click_coordinates 545 405; sleep 10; xdotool type 2; sleep 15
go_to_city_fast
done
}

function morning_tasks {
sylph_go_to_wartune_rtwo
blessing_wheel
go_to_farm_fast
click_fields
plant_seeds_fast
complete_bounties
fishing
wheel_of_fate
do_sky_trail
sylph_arena 
wilds_gold_mines
do_catacombs_first
complete_bounties
do_catacombs_second
go_to_farm_fast
click_on_fields_for_minutes 5
# do_catacombs_final
go_to_farm_fast
click_fields; #echo clicked fields
plant_seeds_fast; #echo planted
#blacksmith_gems
duel_with_best_player 7 &
sleep 20m
sylph_go_to_wartune_rtwo
go_to_altar_fast
sleep 126m
# guild_blessing
# wheel_of_fate
# blessing_wheel
# if [[ $(date +%H) = 07 ]]; then
# auto_farm_and_bounties_and_duels
# quests_copper
# campaign_blitz_three_times

# fi
}

function sylph_auto_simple_farm_and_bounties_and_altar() { # @ 61m37.771??????/
for i in $(eval echo "{1..$1}")
do
sylph_go_to_wartune_rtwo
# capture_astrals_sylph 20
# skills_talent_upgrade
go_to_farm_fast
# guild_contribution
# capture_astrals_sylph 5
click_fields
plant_seeds_fast
echo -e "\e[1;31m Phase \e[0m \e[1;37m ONE \e[0m"
complete_bounties
guild_contribution_amount
# guild_contribution
go_to_farm_fast
inspect_friend_farms_for_minutes 29
# capture_astrals_sylph 10

# go_to_altar
# sleep 30m
echo -e "\e[1;31m Phase \e[0m \e[1;37m TWO \e[0m"
complete_bounties
guild_contribution
# guild_contribution
go_to_farm_fast
inspect_friend_farms_for_minutes 15
# go_to_altar
# sleep 16m
# go_to_farm_fast
click_on_fields_for_minutes 13
guild_contribution
 

if [[ $(date +%H) = 06 ]]; then
go_to_farm_fast
plant_seeds_fast
complete_bounties
morning_tasks
# 
# listcontains() { 
# for word in $1; do 
# [[ $word = $2 ]] && return 0 
# done 
# return 1 
# } 
# 
# list="01 04 07 10 13 16 19 22 25 28 31"
# #list="02 05 08 11 14 17 20 23 26 29"
# # list="03 06 09 12 15 18 21 24 27 30"
# guild_battle_days="1 3 5"
# 
# if listcontains "$list" $(date +%d); then 
# 
# duel_with_best_player 10;
# # duel_with_best_player 1
# else 
# # duel_with_best_player 1
# 
# duel_with_best_player 20;
# 
fi
# 

# 
# fi

done
}

function sylph_auto_simple_4h_farm_and_bounties_and_altar() { # @ 61m37.771??????/
for i in $(eval echo "{1..$1}")
do
sylph_go_to_wartune_rtwo
go_to_farm_fast
click_fields
plant_seeds_fast
echo -e "\e[1;31m Phase \e[0m \e[1;37m ONE \e[0m"
complete_bounties
guild_contribution_amount
go_to_farm_fast
inspect_friend_farms_for_minutes 29
echo -e "\e[1;31m Phase \e[0m \e[1;37m TWO \e[0m"
complete_bounties
guild_contribution
go_to_farm_fast
inspect_friend_farms_for_minutes 15
click_on_fields_for_minutes 13
guild_contribution
 

if [[ $(date +%H) = 06 ]]; then
go_to_farm_fast
plant_seeds_fast
complete_bounties
morning_tasks
# 
# listcontains() { 
# for word in $1; do 
# [[ $word = $2 ]] && return 0 
# done 
# return 1 
# } 
# 
# list="01 04 07 10 13 16 19 22 25 28 31"
# #list="02 05 08 11 14 17 20 23 26 29"
# # list="03 06 09 12 15 18 21 24 27 30"
# guild_battle_days="1 3 5"
# 
# if listcontains "$list" $(date +%d); then 
# 
# duel_with_best_player 10;
# # duel_with_best_player 1
# else 
# # duel_with_best_player 1
# 
# duel_with_best_player 20;
# 
fi

done
}

function sylph_auto_simple_sylph_farming_and_farm() { # @ 61m37.771??????/
for i in $(eval echo "{1..$1}")
do
sylph_go_to_wartune_rtwo
# skills_talent_upgrade
go_to_farm_fast
click_fields
plant_seeds_fast
# echo -e "\e[1;31m Phase \e[0m \e[1;37m ONE \e[0m"
# complete_bounties
farm_pans_for_minutes 190
# complete_bounties
# farm_pans_for_minutes 29
# complete_bounties
# farm_pans_for_minutes 29
# complete_bounties
# farm_pans_for_minutes 29
# complete_bounties
# farm_pans_for_minutes 29
# complete_bounties
# farm_pans_for_minutes 29 
# complete_bounties #it should be 3h 8m approx till here
go_to_farm_fast # 30sec
inspect_friend_farms_for_minutes 10  #it should be 3h 14.5m approx till here
# echo -e "\e[1;31m Phase \e[0m \e[1;37m TWO \e[0m"
click_on_fields_for_minutes 10
done
}


function sylph_auto_simple_sylph_farming_and_bounties_and_altar() { # @ 61m37.771??????/
for i in $(eval echo "{1..$1}")
do
sylph_go_to_wartune_rtwo
# skills_talent_upgrade
go_to_farm_fast
click_fields
plant_seeds_fast
# echo -e "\e[1;31m Phase \e[0m \e[1;37m ONE \e[0m"
complete_bounties
farm_pans_for_minutes 29
complete_bounties
farm_pans_for_minutes 29
complete_bounties
farm_pans_for_minutes 29
complete_bounties
farm_pans_for_minutes 29
complete_bounties
farm_pans_for_minutes 29
complete_bounties
farm_pans_for_minutes 29 
complete_bounties #it should be 3h 8m approx till here
go_to_farm_fast # 30sec
inspect_friend_farms_for_minutes 6  #it should be 3h 14.5m approx till here
# echo -e "\e[1;31m Phase \e[0m \e[1;37m TWO \e[0m"
click_on_fields_for_minutes 11
done
}

function auto_simple_farm_and_bounties_and_altar() { # @ 61m37.771??????/
for i in $(eval echo "{1..$1}")
do
sylph_go_to_wartune_rtwo
# skills_talent_upgrade
go_to_farm_fast
click_fields
plant_seeds_fast
echo -e "\e[1;31m Phase \e[0m \e[1;37m ONE \e[0m"
complete_bounties
guild_contribution
go_to_farm_fast
inspect_friend_farms_for_minutes 29
# go_to_altar
# sleep 30m
echo -e "\e[1;31m Phase \e[0m \e[1;37m TWO \e[0m"
complete_bounties
guild_contribution
go_to_farm_fast
inspect_friend_farms_for_minutes 14
# go_to_altar
# sleep 16m
# go_to_farm_fast
click_on_fields_for_minutes 15
 

if [[ $(date +%H) = 06 ]]; then
plant_seeds_fast
complete_bounties
morning_tasks

listcontains() { 
for word in $1; do 
[[ $word = $2 ]] && return 0 
done 
return 1 
} 

list="01 04 07 10 13 16 19 22 25 28 31"
#list="02 05 08 11 14 17 20 23 26 29"
# list="03 06 09 12 15 18 21 24 27 30"
guild_battle_days="1 3 5"

if listcontains "$list" $(date +%d); then 

duel_with_best_player 10;
# duel_with_best_player 1
else 
# duel_with_best_player 1

duel_with_best_player 20;

fi

go_to_farm_fast
click_fields
plant_seeds_fast
complete_bounties
do_catacombs_first
complete_bounties
do_catacombs_second
go_to_farm_fast
click_on_fields_for_minutes 5
do_catacombs_final

fi

done
}


function auto_farm_and_bounties_and_altar() { # @ 61m37.771??????/
for i in $(eval echo "{1..$1}")
do
sylph_go_to_wartune_rtwo 
go_to_farm_fast
click_fields
plant_seeds_fast
inspect_friend_farms_fast
complete_bounties
go_to_altar
sleep 31m



complete_bounties
go_to_farm_fast
inspect_friend_farms_fast 4

click_on_fields_for_minutes 8
guild_contribution 18

# inspect_friend_farms_fast 3

# click_on_fields_for_minutes 1


if [[ $(date +%H) = 07 ]]; then
auto_farm_and_bounties_and_duels
fi




done
}

function auto_farm_and_bounties_and_catacombs() { # @ 61m37.771??????/
for i in $(eval echo "{1..$1}")
do
sylph_go_to_wartune_rtwo # real 0m49.394s @ 0m49.394s
go_to_farm_fast # real 0m24.881s @ 1m13.275
click_fields
plant_seeds_fast # real 0m27.841s @ 1m41.116
inspect_friend_farms_fast 1 # real > 1m35.832s @ 3m16.948
complete_bounties # real 1m27.007s @ 4m43.955
go_to_altar # real 0m35.835s @ 5m19.790
sleep 3m # @ 33m19.790 
complete_bounties # real 1m27.007s @ 34m46.797
go_to_farm_fast # real 0m24.881s @ 35m11.678
inspect_friend_farms_fast 10 # real >15m58.320s @ 51m06.998
click_on_fields_for_minutes 10 # @ 61m37.771???????
done
}

function auto_farm_and_bounties_and_duels { # @ 62m02.771
sylph_go_to_wartune_rtwo # real 0m49.394s @ 0m49.394s
go_to_farm_fast # real 0m24.881s @ 1m13.275
click_fields
plant_seeds_fast # real 0m27.841s @ 1m41.116
inspect_friend_farms_fast 1 # real > 1m35.832s @ 3m16.948
complete_bounties # real 1m27.007s @ 4m43.955

listcontains() { 
for word in $1; do 
[[ $word = $2 ]] && return 0 
done 
return 1 
} 
list="24 27 30 03 06 09 12 15 18 21 24 27 30"

if listcontains "$list" $(date +%d); then 
duel_with_best_player 5;
else 
duel_with_best_player 20;
fi

 # @ 26m45.883
campaign_blitz_three_times
guild_blessing
complete_bounties # real 1m27.007s @ 35m12.890
go_to_farm_fast # real 0m24.881s @ 35m37.771
inspect_friend_farms_fast 9 # real >14m25.000s @ 50m02.771
click_on_fields_for_minutes 13 # @ 63m02.771
morning_tasks
complete_bounties
go_to_farm_fast 
click_fields
plant_seeds_fast
do_catacombs
go_to_farm_fast 
click_on_fields_for_minutes 10
}

function auto_farm_and_bounties() { # @ 62m35.843
# ordinary_tasks_PID=$!
# echo $ordinary_tasks_PID > global_variable_ordinary_tasks

for i in $(eval echo "{1..$1}")
do
sylph_go_to_wartune_rtwo 
go_to_farm_fast
click_fields
plant_seeds_fast
inspect_friend_farms_fast
complete_bounties
go_to_farm_fast
inspect_friend_farms_fast
click_on_fields_for_minutes 10
inspect_friend_farms_fast 2
click_on_fields_for_minutes 13
complete_bounties
go_to_farm_fast
click_on_fields_for_minutes 1
inspect_friend_farms_fast 2
# guild_contribution 13
click_on_fields_for_minutes 9
inspect_friend_farms_fast 1
click_on_fields_for_minutes 14

if [[ $(date +%H) = 07 ]]; then
auto_farm_and_bounties_and_duels
fi


done
}


# enter astro
function go_to_astro {
search_and_click go_to_astro
}

scrot "astrals.png" && visgrep_astrals=$( visgrep -t 1000 "astrals.png" "astrals-level-2.pat" "astrals-level-2.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) && [[ "$visgrep_astrals" != "" ]] && echo it is not there

# astral sequence
function astral_sequence {
xdotool mousemove 589 785; sleep .1s;
xdotool click 1; sleep .2s;
xdotool mousemove 731 785; sleep .2s;
xdotool click 1; sleep .2s;
xdotool mousemove 868 785; sleep .3s;
xdotool click 1; sleep .2s;
xdotool mousemove 1027 785; sleep .2s;
xdotool click 1; sleep .2s;
xdotool mousemove 1165 785; sleep .2s;
xdotool click 1; sleep .2s
}


function astral_click_level_one {
xdotool mousemove 390 799; sleep .010s;
xdotool click 1;  sleep .010s;
}

function astral_click_level_two {
xdotool mousemove 446 807 ; sleep .010s;
xdotool click 1; sleep .010s;
}

function astral_click_level_three {
xdotool mousemove 549 796;  sleep .010s;
xdotool click 1; sleep .010s;
}

function astral_click_level_four {
xdotool mousemove 644 793;  sleep .010s;
xdotool click 1; sleep .010s;
}

function astral_click_level_five {
xdotool mousemove 746 804;  sleep .010s;
xdotool click 1; sleep .010s
}


function astral_sequence_super_fast {
# echo starting sequence
# astral_click_level_one
# sleep .5
scrot "astrals.png" 
time visgrep_astrals_zero=$( visgrep "astrals.png" "astral-no-arrow-2-5.pat" "astral-no-arrow-2-5.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) 
time visgrep_astrals_one=$( visgrep "astrals.png" "astral-arrow-1-2.pat" "astral-arrow-1-2.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) 
time visgrep_astrals_two=$( visgrep "astrals.png" "astral-arrow-2-3.pat" "astral-arrow-1-2.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) 
time visgrep_astrals_three=$( visgrep "astrals.png" "astral-arrow-3-4.pat" "astral-arrow-1-2.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) 
time visgrep_astrals_four=$( visgrep "astrals.png" "astral-arrow-4-5.pat" "astral-arrow-1-2.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) 
if [[ "$visgrep_astrals_zero" != "" ]] ; then
echo check to 1 done and true
astral_click_level_one
return 1
fi
if [[ "$visgrep_astrals_one" != "" ]] ; then
echo check to 2 done and true
astral_click_level_two
return 1
fi
if [[ "$visgrep_astrals_two" != "" ]] ; then
echo check to 3 done and true
astral_click_level_three
return 1
fi
if [[ "$visgrep_astrals_three" != "" ]] ; then
echo check to 4 done and true
astral_click_level_four
fi
if [[ "$visgrep_astrals_four" != "" ]] ; then
echo check to 5 done and true
astral_click_level_five
return 1
fi
}

function astral_sequence_fast {
astral_click_level_one
echo step 1a
scrot "astrals.png" 
visgrep_astrals=$( visgrep -t 1000 "astrals.png" "astrals-level-2.pat" "astrals-level-2.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) 
echo step 1b
if [[ "$visgrep_astrals" = "" ]]; then
astral_click_level_two
echo step 2
scrot "astrals.png" 
visgrep_astrals=$( visgrep -t 1000 "astrals.png" "astrals-level-3.pat" "astrals-level-3.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) 

[[ "$visgrep_astrals" != "" ]] && return 1

if [[ "$visgrep_astrals" = "" ]]; then
astral_click_level_three
echo step 3
scrot "astrals.png" 
visgrep_astrals=$( visgrep -t 1000 "astrals.png" "astrals-level-4.pat" "astrals-level-4.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) 

[[ "$visgrep_astrals" != "" ]] && return 1

if [[ "$visgrep_astrals" = "" ]]; then
astral_click_level_four
echo step 4
scrot "astrals.png" 
visgrep_astrals=$( visgrep -t 1000 "astrals.png" "astrals-level-5.pat" "astrals-level-5.pat" | sed "s/,/ /g" | cut -d' ' -f 1 ) 

[[ "$visgrep_astrals" != "" ]] && return 1

if [[ "$visgrep_astrals" = "" ]]; then
astral_click_level_five
echo step 5
fi
fi
fi
fi
}

function astral_one_click_sell {
xdotool mousemove 684 713; sleep .2s
xdotool click 1; sleep .2s
}

function astral_one_click_synthesis {
xdotool mousemove 781 714; sleep .2s
xdotool click 1; sleep .2s
xdotool mousemove 713 620; sleep .2s
xdotool click 1; sleep .4s
}

function capture_astrals {
 go_to_astro
while true;
do
for i in {1..3}
do
echo $i
for i in {1..8}
do 
# sleep .5
 astral_sequence_duper_fast
done

sleep .5
astral_one_click_sell

astral_one_click_synthesis
astral_click_level_five
astral_click_level_four
astral_click_level_three
astral_click_level_two
astral_click_level_five
astral_click_level_four
astral_click_level_three
astral_click_level_five
astral_click_level_four
astral_click_level_five
sleep .2s

done
scrot guild_current_gold.png; convert -crop 65x14+223+174 guild_current_gold.png{,}
mogrify -type Grayscale guild_current_gold.png
tesseract guild_current_gold.png guild_current_gold -psm 8
current_gold=$(echo $(<guild_current_gold.txt) | sed "s/[^0-9]//g")
if [[ $current_gold -lt 20000 ]]; then 
astral_one_click_sell
astral_one_click_synthesis
astral_click_level_five
astral_click_level_four
astral_click_level_three
astral_click_level_two
astral_click_level_five
astral_click_level_four
astral_click_level_three
astral_click_level_five
astral_click_level_four
astral_click_level_five
sylph_close_windows
return 1
fi

done
}


function capture_astrals_sylph() {
 go_to_astro
 times=$1

 
for i in $(eval echo "{1..$times}")
do
echo $i
for i in {1..14}
do 
# sleep .5
 astral_sequence_duper_fast
done


sleep .5
astral_one_click_sell

astral_one_click_synthesis
astral_click_level_five
astral_click_level_four
astral_click_level_three
astral_click_level_two
astral_click_level_five
astral_click_level_four
astral_click_level_three
astral_click_level_five
astral_click_level_four
astral_click_level_five
sleep .2s

# echo START
# click_coordinates 643 605
# xdotool type yes; sleep .1; xdotool key Return
# echo END

done
sylph_close_windows
}


function astral_sequence_duper_fast {
# echo 1
astral_click_level_five
astral_click_level_four
astral_click_level_three
astral_click_level_two
astral_click_level_one
sleep .1
astral_click_level_five
astral_click_level_four
astral_click_level_three
astral_click_level_two
sleep .1
astral_click_level_five
astral_click_level_four
astral_click_level_three
sleep .1
astral_click_level_five
astral_click_level_four
sleep .1
astral_click_level_five
# sleep .2s
}
# guild_contribution 10 # real 0m29.821s
# guild_blessing 2 # real 1m25.459s?????????


# auto_farm_and_bounties_and_duels 
# auto_farm_and_bounties_and_altar 5
# search_for_revival_fast
# capture_astrals 
# guild_go_to_chamber
# go_to_farm_fast
# farm_bounties_tasks 10
# complete_bounties


function watchdog {
while true
do
echo watchdog overseering - $(date +%H%M)
sleep 5s

# if [[ $(date +%H%M) = 0900 ]]; then
# echo time for Catacombs
# check_refreshing
# close_windows
# kill -SIGSTOP $(echo $farm_altar_bounties_tasks_PID)
# go_to_city_fast
# do_catacombs
# close_windows
# return_to_last_location
# kill -SIGCONT $(echo $farm_altar_bounties_tasks_PID)
# fi

if [[ $(date +%H%M) = 1257 ]] || [[ $(date +%H%M) = 1757 ]] || [[ $(date +%H%M) = 2357 ]]; then
echo time for World Boss
# check_refreshing
kill -SIGTERM $(<global_variable_ordinary_tasks)
sylph_close_windows
sylph_go_to_wartune_rtwo # real 0m49.394s @ 0m49.394s
echo enter wb battle
# go_to_city_fast
wb_join
wb_attack
echo finished wb battle
echo wb started
sleep 10s
echo sleep ended
# return_to_last_location
# auto_farm_and_bounties 5
fi

# if [[ $(date +%H%M) = 1401 ]]; then
# echo time for Group Arena
# check_refreshing
# close_windows
# kill -SIGSTOP $(echo $farm_altar_bounties_tasks_PID)
# go_to_city_fast
# create_arena_room 
# for i in {1..10}
# do
# echo Group Arena run $i
# search_for_arena_ready
# done
# close_windows
# return_to_last_location
# kill -SIGCONT $(echo $farm_altar_bounties_tasks_PID)
# fi
# 
# if [[ $(date +%H%M) = 0740 ]]; then
# echo time for Solo Arena
# check_refreshing
# close_windows
# kill -SIGSTOP $(echo $farm_altar_bounties_tasks_PID)
# echo enter Solo Arena
# go_to_city_fast
# duel_with_best_player 18
# echo finished Solo Arena
# close_windows
# return_to_last_location
# kill -SIGCONT $(echo $farm_altar_bounties_tasks_PID)
# fi


done
}

# auto_farm_and_bounties 5 &
# watchdog

# wb_join
# wb_attack
# while true
# do
# complete_bounties
# go_to_altar
# sleep 31m; echo sleeping 31m
# done
# avconv -f x11grab -show_region 1 -video_size wuxga -i :0.0 -threads 2 -bt 8000000 -b 8500000 -v quiet -y /media/f032f498-893d-45b3-b196-f37ace1299ca/wartune-catacombs-100.mkv 
# 
# 
# # fstab:: none /tmp/wartune tmpfs defaults 0 0
# 
# # mkdir /tmp/ramdisk; chmod 777 /tmp/ramdisk
# # sudo mount -t tmpfs -o size=256M tmpfs /tmp/ramdisk/
# # complete_bounties
# 
# real 64m14.070s
# user 6m9.844s
# sys 2m29.520s
# farm_bounties_tasks 10
# farm_bounties_tasks 7

# farm_altar_bounties_tasks &
# 
# declare -g farm_altar_bounties_tasks_PID=$! 
# 
# echo initial taskPID $farm_altar_bounties_tasks_PID
# 
# special_tasks_time &

###########################################
#### GUILDBATTLE SECTION
###########################################

function guild_battle_enter {
# go_to_wartune_rtwo

sleep 10

search_and_click guild_battle_icon 

search_and_click guild_battle_icon_enter_battle

sylph_close_windows
}
function guild_battle_from_health_attack_router {
search_and_click guild_battle_router_from_right_spot_1
sleep 2
search_and_click guild_battle_router_from_right_spot_2
sleep 2
search_and_click guild_battle_router_from_right_spot_3
sleep 2
search_and_click guild_battle_router_from_right_spot_4
sleep 2
search_and_click guild_battle_router_from_right_spot_5
sleep 2
search_and_click guild_battle_router_from_right_spot_6
sleep 2
search_and_click guild_battle_router_from_right_spot_7
sleep 2
search_and_click guild_battle_router_from_right_spot_8
sleep 2
search_and_click guild_battle_router_from_right_spot_9
sleep 2
search_and_click guild_battle_router_from_right_spot_10
sleep 2
search_and_click guild_battle_router_from_right_spot_11
sleep 2
search_and_click guild_battle_router_from_right_spot_12
sleep 2
search_and_click guild_battle_router_from_right_spot_13
sleep 2
search_and_click guild_battle_router_from_right_spot_14
sleep 2
search_and_click guild_battle_router_from_right_spot_15_wt_attack
}

function guild_battle_from_left_attack {
while true;
do
search_and_click guild_battle_route_from_left_spot_1
# sleep 25
search_and_click guild_battle_route_from_left_spot_2
# sleep 10
search_and_click guild_battle_route_from_left_spot_3
# sleep 30
search_and_click guild_battle_route_from_left_spot_4
# sleep 20
search_and_click guild_battle_route_from_left_spot_5
# sleep 20
search_and_click guild_battle_route_from_left_spot_6
# sleep 20
search_and_click guild_battle_route_from_left_spot_7
# sleep 20
search_and_click guild_battle_route_from_left_spot_8
# sleep 20
search_and_click guild_battle_route_from_left_spot_9_wt_attack
done
}

function gb_test {
# guild_battle_days="1 3 5"
# 
# if [[ $(date +%u) = 2204 ]]; then
# if listcontains "$guild_battle_days" $(date +%u); then 

echo time for Guild Battle!!!
kill   $(<global_variable_running_in_background_PID)

guild_battle_enter
# fi
# fi
}

###########################################
#### BATTLEGROUND SECTION
###########################################
function battleground_rh_collect_and_deliver {

search_and_click battleground_rh_point_1

sleep 1s

search_and_click battleground_rh_point_2

sleep 1s

search_and_click battleground_rh_point_3

sleep 1s

search_and_click battleground_rh_point_4

sleep 1s

search_and_click battleground_rh_point_5

sleep 1s

search_and_click battleground_rh_point_6

sleep 1s

search_and_click battleground_rh_point_7_collect

sleep 1s

search_and_click battleground_rh_point_6

sleep 1s

search_and_click battleground_rh_point_5

sleep 1s

search_and_click battleground_rh_point_4

sleep 1s

search_and_click battleground_rh_point_3

sleep 1s

search_and_click battleground_rh_point_2

sleep 1s

search_and_click battleground_rh_point_1

sleep 1s

search_and_click battleground_rh_officer

sleep 1s

search_and_click battleground_rh_officer_turn_in
}

function battleground_lh_collect_and_deliver {

search_and_click battleground_lh_point_1

sleep 1s

search_and_click battleground_lh_point_2

sleep 1s

search_and_click battleground_lh_point_3

sleep 1s

search_and_click battleground_lh_point_4

sleep 1s

search_and_click battleground_lh_point_5

sleep 1s

search_and_click battleground_lh_point_6

sleep 1s

search_and_click battleground_lh_point_7_collect

sleep 1s

search_and_click battleground_lh_point_6

sleep 1s

search_and_click battleground_lh_point_5

sleep 1s

search_and_click battleground_lh_point_4

sleep 1s

search_and_click battleground_lh_point_3

sleep 1s

search_and_click battleground_lh_point_2

sleep 1s

search_and_click battleground_lh_point_1

sleep 1s

search_and_click battleground_lh_officer

sleep 1s

search_and_click battleground_lh_officer_turn_in
}


function battleground_watch_for_attack {
for i in {1..30}
do
battle_mode_battleground
done
}



function battleground_rh {
while true
do
battleground_rh_collect_and_deliver 
done
}

function battleground_lh {
while true
do
battleground_rh_collect_and_deliver 
done
}


control_battleground()
# run if user hits control-c
{
 echo -en "\n*** Ouch! Exiting Battleground***\n"
kill $(<global_variable_battleground_lh_running_in_background_PID)
kill $(<global_variable_battleground_rh_running_in_background_PID)
kill $(<global_variable_battleground_watch_for_attack_running_in_background_PID)
killall bash
 exit $?
}
 
# trap keyboard interrupt (control-c)

function do_battleground_righthand {

battleground_watch_for_attack &
battleground_watch_for_attack_running_in_background_PID=$(echo $!)
# echo $!
echo $battleground_watch_for_attack_running_in_background_PID > global_variable_battleground_watch_for_attack_running_in_background_PID
# echo process in background $battleground_watch_for_attack_running_in_background_PID 
echo $(<global_variable_battleground_watch_for_attack_running_in_background_PID)

battleground_rh & 
battleground_rh_running_in_background_PID=$(echo $!)
echo $!
echo $battleground_rh_running_in_background_PID > global_variable_battleground_rh_running_in_background_PID
echo process in background $battleground_rh_running_in_background_PID 
echo $(<global_variable_battleground_rh_running_in_background_PID)

sleep 26m
kill $(<global_variable_battleground_rh_running_in_background_PID)
kill $(<global_variable_battleground_watch_for_attack_running_in_background_PID)

sylph_close_windows

trap control_battleground SIGINT

}

function do_battleground_lefthand {

battleground_watch_for_attack &
battleground_watch_for_attack_running_in_background_PID=$(echo $!)
echo $!
echo $battleground_watch_for_attack_running_in_background_PID > global_variable_battleground_watch_for_attack_running_in_background_PID
echo process in background $battleground_watch_for_attack_running_in_background_PID 
echo $(<global_variable_battleground_watch_for_attack_running_in_background_PID)

battleground_lh & 
battleground_lh_running_in_background_PID=$(echo $!)
echo $!
echo $battleground_lh_running_in_background_PID > global_variable_battleground_lh_running_in_background_PID
echo process in background $battleground_lh_running_in_background_PID 
echo $(<global_variable_battleground_lh_running_in_background_PID)

sleep 26m
kill $(<global_variable_battleground_lh_running_in_background_PID)
kill $(<global_variable_battleground_watch_for_attack_running_in_background_PID)

sylph_close_windows

trap control_battleground SIGINT

}

function drag_and_drop() {
xdotool mousemove $1 $2; sleep .5s; xdotool mousedown 1; sleep .5s
xdotool mousemove $3 $4; sleep .5s; xdotool mouseup 1; sleep .5s
}

function skills_clean {
drag_and_drop 669 755 300 300
drag_and_drop 732 755 300 300
drag_and_drop 787 755 300 300
drag_and_drop 851 755 300 300
drag_and_drop 911 755 300 300
}

function wb_change_skills_before {
sleep 5s
click_coordinates 1307 970
search_and_click skills_tree_2
skills_clean
drag_and_drop 581 530 660 760
drag_and_drop 685 530 730 760
drag_and_drop 990 610 780 760
drag_and_drop 886 610 830 760
drag_and_drop 886 610 918 762

# drag_and_drop 779 519 774 731
sylph_close_windows
}

function wb_change_skills_after {
sleep 5s
click_coordinates 1254 954
search_and_click skills_tree_2
skills_clean
drag_and_drop 581 537 669 755
drag_and_drop 680 541 732 755
drag_and_drop 989 609 787 755
drag_and_drop 890 610 851 755
drag_and_drop 1085 605 760 755
sylph_close_windows
}

function wb_potion_power_level_four {
sleep 5s
click_coordinates 1097 971
search_and_click sylph_inventory_page_one
search_and_double_click inventory_potion_power_level_three
#search_and_double_click inventory_potion_power_level_four
sylph_close_windows
}


function do_proper_hand_battleground {
if [[ $(search_only battleground_righthand) = 1 ]] 
then
echo "entered RightHand Battleground" && do_battleground_righthand
else
echo "entered LefttHand Battleground" && do_battleground_lefthand
fi
}

##### HELPING HONOR
function playername_wb {
while true; do xdotool mousemove 1007 450; xdotool click 1; sleep 5s; done
}

function playername_duels {
for i in {1..20}
do xdotool mousemove 916 741; xdotool click 1; sleep 5s
done
}


function playername_login {
search_and_click playername_login_step_1
search_and_click playername_login_step_2

xdotool type http://wartune.r2games.com/game/play/?server=6818

xdotool key Return

echo just returned

sleep 2s

echo going to 3

search_and_click playername_login_step_3

echo going to 4
search_and_click playername_login_step_4
search_and_click playername_login_step_5
search_and_click playername_login_step_6
search_and_click playername_login_step_6
xdotool type kozo23@gmail.com
search_and_click playername_login_step_7
xdotool type 032581068
search_and_click playername_login_step_8
search_and_click playername_login_step_9
search_and_click playername_login_step_10
search_and_click playername_login_step_11
sleep 40s
sylph_close_windows
search_and_click playername_login_step_12
search_and_click playername_login_step_13
search_and_click playername_login_step_14
}



function go_to_sylphs_pans {  ### Total Sylph Duration = 3m 32 sec ###
# echo starting $FUNCNAME `date +%H:%M:%S---%d-%m`
sylph_close_windows
search_and_click go_to_city
search_and_click go_to_city_confirm
sylph_go_to_cloud_city
sleep 5s
# go_to_city ### Duration = 10 sec ###
# confirm occasional question
# xdotool mousemove 808 733; sleep 2s
# xdotool click 1; sleep 3s
# search_and_click go_to_bounties
click_coordinates 1084 483
sleep 45
search_and_click sylph_cloud_city_map_button
sleep 5
click_coordinates 1078 372
sleep 35
search_and_click sylph_cloud_city_map_button
sleep 5
click_coordinates 1044 372
sleep 25
search_and_click close_window_sylph_exchange
search_and_click close_window_cloud_city_map
# xdotool click 1; sleep 3s
}

function farming_pans_loop_alone {
while true
# go_to_sylphs_pans
do
xdotool mousemove 281 65; sleep 1s
xdotool click --repeat 1 1; sleep 1s
xdotool key ctrl+a; sleep 1s
xdotool type 'wartune.r2games.com/game/play/?server=6818'; sleep 1s; 
xdotool key Return; sleep 2s
# scrot wartune-wetlands-leave-this-page.png; sleep 3s
search_and_click rtwo_leave_this_page
# xdotool mousemove `visgrep -t 1000 wartune-wetlands-leave-this-page.png rtwo_leave_this_page.pat rtwo_leave_this_page.pat | sed "s/,/ /g" | cut -d' ' -f 1-2`; sleep 8s
sleep 60
xdotool mousemove 1054 484; xdotool click 1; #classwars
sylph_close_windows
for i in {1..200}; do
# click_coordinates 1007 1493
# search_and_click sylph_pan_1_3_left
# xdotool type 3; xdotool key $(battle_mode_qte)
# search_and_click_fast sylph_pan_1_3_right
# xdotool type 3; xdotool key $(battle_mode_qte)
sylph_search_and_click sylph_pan_all_to_the_left
xdotool type 3; xdotool key $(battle_mode_qte); xdotool type 1
sylph_search_and_click sylph_pan_all_to_the_right
# xdotool type 3; xdotool key $(battle_mode_qte); xdotool type 1
# sylph_search_and_click sylph_pan_back_to_the_right
xdotool type 3; xdotool key $(battle_mode_qte); xdotool type 1
# sylph_search_and_click sylph_pan_back_to_the_left
# xdotool type 3; xdotool key $(battle_mode_qte); xdotool type 1
done

done
}

function farm_pans_for_minutes() {

control_farm_inspection()
# run if user hits control-c
{
 echo -en "\n*** Ouch! Exiting ***\n"
# cleanup
kill $(<global_variable_farming_pans_running_in_background_PID)
killall bash
exit $?
}

trap control_farm_inspection SIGINT

function farming_pans_loop {
while true
go_to_sylphs_pans
do
echo -e "\e[1;33m 2000 started!\e[0m"
date
# capture_astrals_sylph 15
sylph_go_to_wartune_rtwo
for i in {1..2000}; do
if [[ $i == *00 ]]; then 
echo time: $i --- $(date)
fi
# click_coordinates 1007 1493
# search_and_click sylph_pan_1_3_left
# xdotool type 3; xdotool key $(battle_mode_qte)
# search_and_click_fast sylph_pan_1_3_right
# xdotool type 3; xdotool key $(battle_mode_qte)
sylph_search_and_click sylph_pan_all_to_the_left
xdotool type 3; xdotool key $(battle_mode_qte); xdotool type 1
sylph_search_and_click sylph_pan_all_to_the_right
# xdotool type 3; xdotool key $(battle_mode_qte); xdotool type 1
# sylph_search_and_click sylph_pan_back_to_the_right
xdotool type 3; xdotool key $(battle_mode_qte); xdotool type 1
# sylph_search_and_click sylph_pan_back_to_the_left
# xdotool type 3; xdotool key $(battle_mode_qte); xdotool type 1
# sleep 10
# ps aux|grep bash|wc -l
# echo $i
done
#TEMP#capture_astrals_sylph 20
done
}

farming_pans_loop &
# 
farming_pans_running_in_background_PID=$(echo $!)
# echo $!
echo $farming_pans_running_in_background_PID > global_variable_farming_pans_running_in_background_PID
# echo process in background $farming_pans_running_in_background_PID
echo $(<global_variable_farming_pans_running_in_background_PID)
# 
# echo megaminute $i
sleep "$1m"
kill $(<global_variable_farming_pans_running_in_background_PID)
echo -e "\e[1;33m JUST KILLED global_variable_farming_pans_running_in_background_PID\e[0m"
}

function task_farm_pans_and_bounties {
while true; 
do
complete_bounties
farm_pans_for_minutes 28
done
}

function circle_test_numbers {
for i in {1..10000}; do
echo $i $PPID
sleep 3
done
}

function circle_test_letters_numbers {
for i in {1..10000}; do
echo letter: $i $PPID

sleep 3
done
}

function circle_test_process {
circle_test_numbers &
echo test_numbers: $!
circle_test_letters_numbers  &
echo test_letters_numbers:  $!
echo PARENT $PPID
}

function treasure_hunt {
click_coordinates 1097 971
sleep 3
search_and_click inventory_equipment
sleep 1
search_and_click treasure_hunt_icon
sleep 1
search_and_click treasure_hunt
click_coordinates 916 782 # plus sign
click_coordinates 815 820 # let's go!

sylph_close_windows
sylph_close_windows
}


function circle_1h_farm_and_bounties() { # @ 61m37.771??????/
for i in $(eval echo "{1..$1}")
do
sylph_go_to_wartune_rtwo; #echo refreshed
#[[ $(( $(date +%H) % 2)) == 0 ]] && 
fishing
# [[ $(( $(date +%H) % 2)) == 0 ]] && treasure_hunt
go_to_farm_fast; echo gone to farm
click_fields; #echo clicked fields
plant_seeds_fast; #echo planted
echo -e "\e[1;31m Phase \e[0m \e[1;37m ONE \e[0m"
complete_bounties
#TEMP#capture_astrals_sylph 10
# guild_contribution
go_to_farm_fast
inspect_friend_farms_for_minutes 27
echo -e "\e[1;31m Phase \e[0m \e[1;37m TWO \e[0m"
complete_bounties
# guild_contribution
go_to_farm_fast
inspect_friend_farms_for_minutes 11
click_on_fields_for_minutes 13

if [[ $(date +%H) = 06 ]]; then
go_to_farm_fast
plant_seeds_fast
complete_bounties
morning_tasks
fi

done
}

function blacksmith_gems {
search_and_click blacksmith_icon
search_and_click blacksmith_synthesize
search_and_click blacksmith_synthesize_gems
search_and_click blacksmith_synthesize_gems_synthesizable

for i in {1..20}; do
click_coordinates_fast 905 725
done

search_and_click sylph_arena_close_window_button
# search_and_click sylph_arena_close_window_button
sylph_close_windows
# sylph_close_windows

}

function battle_mode_qte {
for i in Up Left Right Down
do
for j in Up Left Right Down
do
echo -n "$i $j "
done
done
}

function llnm { while true; do 
xdotool type z23x $(battle_mode_qte) $(battle_mode_qte); sleep .5;  
xdotool type z41x $(battle_mode_qte); sleep .5;  
done }

function llboss { while true; do 
# xdotool type z23x $(battle_mode_qte) $(battle_mode_qte); sleep .5;  
xdotool type 2 ; sleep .5; 
xdotool key $(battle_mode_qte) $(battle_mode_qte); sleep 1.5;    
xdotool type 3 ; sleep .5; 
xdotool key $(battle_mode_qte) $(battle_mode_qte); sleep 1.5;    
# xdotool type 4 $(battle_mode_qte) $(battle_mode_qte); sleep .5;    
# xdotool type 5 $(battle_mode_qte) $(battle_mode_qte); sleep .5;  
done }

function astrals_two_energizers {
for i in $(eval echo "{1..$1}")
do
click_coordinates_fast 658 663
click_coordinates_fast 781 468
click_coordinates_fast 890 592
click_coordinates_fast 817 661
click_coordinates_fast 1074 746
click_coordinates_fast 1191 734
click_coordinates_fast 902 741
click_coordinates_fast 682 602
click_coordinates_fast 1131 743
done
}

# function circuit_quests {
# 1: kill 10 sylphs on L1
# 2: contribute 50k gold
# 3: kill 10 sylphs on L2
# 4: kill 10 sylphs on L4
# 5: kill 30 monsters in Shrine of Sakaiya (circuit_campaign_sakaiya)
# 6: same as 1
# 7: speak to lara (when arrive click_coordinates 793 670 and 778 635)
# 8: mice
# 9: capture one astral
# 10: 20 monsters in Devil tail
# 11: recruit 200 lancers
# 12: eliminate 20 monsters in roaring wetlands
# 13: same as 1
# 14: enchant any 3 times
# 21: kill 10 sylphs on L1
# } 

function circuit_campaign_sakaiya {
for i in {1..20}; do
click_coordinates 1400 400
click_coordinates 1141 581 # verify stamina
sleep 5
click_coordinates 779 345
sleep 22
click_coordinates 1559 977
click_coordinates 696 610
sleep 5
done
}

function circuit_campaign_deviltemple {
for i in {1..20}; do
click_coordinates 1400 400
click_coordinates 1053 611 # verify stamina
sleep 5
click_coordinates 449 898
sleep 25
click_coordinates 1559 977
click_coordinates 696 610
sleep 5
done
}

function circuit_campaign_quests {
for i in {1..15}; do
echo starting $i
click_coordinates 1400 400 #if it is upper
click_coordinates 1400 480 #if it is bottom
# click_coordinates 1053 611 # verify stamina
search_and_click circuit_quest_campaign_blitz_button
sleep 5
click_coordinates 400 250; sleep 3
click_coordinates 1400 250; sleep 3
click_coordinates 400 950; sleep 3
click_coordinates 1400 950
sleep 5
click_coordinates 900 970
sleep 20
click_coordinates 1559 977
click_coordinates 696 610
sleep 5
done
}

function click_coordinates_super_fast() {
xdotool mousemove $1 $2; sleep .05s; xdotool click 1; sleep .06s
}


function circuit_crush_mice {
for i in {1..15}; do #(till 10 probably)
echo $i
click_coordinates_super_fast 750 466
click_coordinates_super_fast 750 666
click_coordinates_super_fast 850 466
click_coordinates_super_fast 850 666
click_coordinates_super_fast 950 466
click_coordinates_super_fast 950 666
click_coordinates_super_fast 1050 478
click_coordinates_super_fast 1050 666
done
}

function farming_amazons_loop {
while true
# go_to_sylphs_pans
do
# echo -e "\e[1;33m 2000 started!\e[0m"
# date
# sylph_go_to_wartune_rtwo
for i in {1..25}; do
if [[ $i == *00 ]]; then 
echo time: $i --- $(date)
fi
echo $i
sylph_search_and_click_exact_plus_coordinates sylph_amazon_letter_a
sleep 3
xdotool type 3; xdotool key $(battle_mode_qte); xdotool type 1

done
# capture_astrals_sylph 20
done
}

function farming_gaias_loop {
while true
# go_to_sylphs_pans
do
# echo -e "\e[1;33m 2000 started!\e[0m"
# date
sylph_go_to_wartune_rtwo
for i in {1..2000}; do
if [[ $i == *00 ]]; then 
echo time: $i --- $(date)
fi
echo $i
sylph_search_and_click_exact_plus_coordinates sylph_gaia_letter_0
sleep 2
xdotool type 3; xdotool key $(battle_mode_qte); xdotool type 1

done
# capture_astrals_sylph 20
done
}

function sylph_universal {
click_coordinates 974 406
xdotool keydown ctrl
sylph_search_and_click sylph_amazon_controlled_shadow
xdotool keyup ctrl
}

function sylph_exchange_electro() {
for i in $(eval echo "{1..$1}"); do
click_coordinates_fast 769 598
click_coordinates_fast 692 602
done
}

function sylph_atoll_attack() {
trap control_attacking_sylphs SIGINT

control_attacking_sylphs() {
 echo -en "\n*** Ouch! Exiting ***\n"
# cleanup
kill $(<global_variable_attacking_sylphs_running_in_background_PID)
kill $(<global_variable_running_in_background_QTE_PID)
kill $$
killall bash
exit $?
}

{
while true; do
sleep 1; xdotool type z; xdotool type 3; sleep .5; xdotool key $(battle_mode_qte)
done
}&
echo $!> global_variable_running_in_background_QTE_PID

# while true; do scrot "atoll.png" && convert "atoll.png" -fuzz 10%  +opaque "#ff0004" "lvl50.png"; sylph_coordinates=$(visgrep -t 1000 lvl50.png lvl50.pat lvl50.pat | sed "s/,/ /g" | head -1 ); echo $sylph_coordinates; done
# 
# pan 914 187 - 918 260 = 4 73
# 652 254 - 668 320 = 16 66
for i in $(eval echo "{1..$2}"); do
echo $i
scrot "atoll.png" && convert "atoll.png" -fuzz 10%  +opaque "#ff0004" "lvl50.png"
# echo $(visgrep -t 100 lvl50.png lvl50.pat lvl50.pat  | sed "s/,/ /g" | cut -d' ' -f 1-2)
sylph_coordinates=$(visgrep -t 1000 lvl50.png lvl50.pat lvl50.pat | sed "s/,/ /g" | head -1 )
xcord=$(echo $sylph_coordinates | cut -d' ' -f 1 )
ycord=$(echo $sylph_coordinates | cut -d' ' -f 2 )

case $1 in
iris) xdotool mousemove $(echo $(expr $xcord + 6) $(expr $ycord + 82))  ;; # works for iris somehow
pan) xdotool mousemove $(echo $(expr $xcord + 4) $(expr $ycord + 73)) ;; # works for pans somehow
aq) xdotool mousemove $(echo $(expr $xcord + 10) $(expr $ycord + 81)) ;;  # works for aq and gaiae well
gaia) xdotool mousemove $(echo $(expr $xcord + 10) $(expr $ycord + 81)) ;; # works for aq and gaiae well
*) echo -e "\e[1;31m Sylph NOT supported\e[0m" ;;
esac
xdotool click 1
sleep 5; #echo sleeping
# sleep 3
# click_coordinates 593 843
done
}


function click_map {
# click_coordinates 1439 583
search_and_click sylph_cloud_city_map_button
}

function click_asima {
date
click_coordinates 1100 684
}


function click_elise {
date
click_coordinates 1100 511
}

function sylphs_go_to_atoll_l1 {
date
click_map 
click_coordinates 1117 487; sleep 80
date
}

function sylphs_go_to_atoll_l2 {
# date
sylphs_go_to_atoll_l1
click_map 
click_coordinates 1079 377; sleep 55
date
}
function sylphs_go_to_atoll_l3 {
# date
sylphs_go_to_atoll_l2
click_map 
click_coordinates 1079 377; sleep 55
date
}
function sylphs_go_to_atoll_l4 {
# date
sylphs_go_to_atoll_l3
click_map 
click_coordinates 1079 377; sleep 60 #third map position
date
}

function sylphs_hunt_in_random_location {
click_map 
# 507 370 upper left corner
# 986 377 upper right corner
# 521 798 lower left corner
# 978 787 lower right corner
randomo_number_x=$(( $RANDOM % 450)) #maximum 450
randomo_number_y=$(( $RANDOM % 400))
xdotool mousemove $(echo $(expr 507 + $randomo_number_x)) $(echo $(expr 370 + $randomo_number_y))
xdotool click 1
sleep 10
click_coordinates 1223 330 # click x close windows
}



function amethyst_mines {
# # sylph_go_to_wartune_rtwo
click_map
click_coordinates 1084 627
# # search_and_click amethyst_mines_icon
sleep 45
sleep 5
for i in {1..3}; do
click_coordinates 1469 501 #click amethyst_map
sleep 10
click_coordinates 1109 371 #click get cart NEW location
# click_coordinates 1084 453 #click get cart location
sleep 10
click_coordinates 1469 501 #click amethyst_map
click_coordinates 1109 371 #click get cart NEW location
sleep 2
search_and_click amethyst_close_window_x

click_coordinates 1469 501 #click amethyst_map
click_coordinates 1109 371 #click get cart NEW location
search_and_click amethyst_close_window_x


echo 1

click_coordinates 796 670 #click get cart 
click_coordinates 731 598 # click ok (not necessary for advanced)


click_coordinates 1469 501 #click amethyst_map
click_coordinates 1071 535 #click amethyst ore
search_and_click amethyst_close_window_x


sleep 140
echo 2

click_coordinates 1469 501 #click amethyst_map
click_coordinates 1047 397 #click dump minecart
search_and_click amethyst_close_window_x

sleep 70

click_coordinates 1469 501 #click amethyst_map
click_coordinates 1047 397 #click dump minecart
search_and_click amethyst_close_window_x
click_coordinates 796 670 #click dump cart to the man

go_to_city
click_map
click_coordinates 1084 627; sleep 5
# echo 3
# click_coordinates 1084 453 #click get cart location
# search_only_false map_npc_list_open && click_coordinates 1469 501 #click amethyst_map
# search_only_true map_npc_list_open && click_coordinates 1084 453 #click get cart location
# echo 4
# sleep 15
# search_only_true map_npc_list_open && click_coordinates 1469 501 #click amethyst_map
done
}

function circuit_do_quest_right_1 {
sylphs_go_to_atoll_l1

sylphs_hunt_in_random_location
sylph_atoll_attack iris 60
go_to_city
# click_map; click_asima; sleep 80
click_coordinates_fast 1341 324 # complete quest
search_and_click circuit_weekly_circuits # complete quest
click_coordinates 1050 787
sylph_close_windows
}

function circuit_do_quest_right_3 {
sylphs_go_to_atoll_l1
sylphs_go_to_atoll_l2
# sylphs_go_to_atoll_l3
# sylphs_go_to_atoll_l4
sylphs_hunt_in_random_location
search_and_click quest_tracking_close
sylph_atoll_attack pan 60
search_and_click quest_tracking_open
go_to_city
# click_map; click_asima; sleep 80
click_coordinates_fast 1341 324 # complete quest
search_and_click circuit_weekly_circuits # complete quest
click_coordinates 1050 787
sylph_close_windows
}
function circuit_do_quest_right_4 {
sylphs_go_to_atoll_l1;sylphs_go_to_atoll_l2;sylphs_go_to_atoll_l3;sylphs_go_to_atoll_l4
sylphs_hunt_in_random_location
search_and_click quest_tracking_close
sylph_atoll_attack gaia 60
search_and_click quest_tracking_open
go_to_city
# click_map; click_asima; sleep 80
click_coordinates_fast 1341 324 # complete quest
search_and_click circuit_weekly_circuits # complete quest
click_coordinates 1050 787
sylph_close_windows
}
function circuit_do_quest_right_10 {
sylphs_go_to_atoll_l1;sylphs_go_to_atoll_l2;sylphs_go_to_atoll_l3
# sylphs_go_to_atoll_l4
sylphs_hunt_in_random_location
search_and_click quest_tracking_close
sylph_atoll_attack aq 60
search_and_click quest_tracking_open
go_to_city
# click_map; click_asima; sleep 80
click_coordinates_fast 1341 324 # complete quest
search_and_click circuit_weekly_circuits # complete quest
click_coordinates 1050 787
sylph_close_windows
}

function go_to_atoll_l4() { # this is wrong, it does it recursively
sylphs_go_to_atoll_l1;sylphs_go_to_atoll_l2;sylphs_go_to_atoll_l3;sylphs_go_to_atoll_l4

}

function circuit_do_quest_right_6 {

guild_contribution_with_specific_amount 100

click_coordinates_fast 1341 324 # complete quest
search_and_click circuit_weekly_circuits # complete quest
click_coordinates 1050 787
sylph_close_windows
}

function circuit_do_quest_right_9 {
click_map; click_coordinates 1071 462
click_coordinates 767 672 # clickfirst  complete_quest, second option from top
click_coordinates 787 633 # click second complete_quest, first option from top
click_coordinates_fast 1341 324 # complete quest
search_and_click circuit_weekly_circuits # complete quest
click_coordinates 1050 787
sylph_close_windows
}

function circuit_qte_group_of_9() { # finds QTE of 9 and types them!
scrot qte_image.png
convert qte_image.png  -crop 12x12+604+555 qte_image_1.png
convert qte_image.png  -crop 12x12+656+555 qte_image_2.png
convert qte_image.png  -crop 12x12+708+555 qte_image_3.png
convert qte_image.png  -crop 12x12+760+555 qte_image_4.png
convert qte_image.png  -crop 12x12+812+555 qte_image_5.png
convert qte_image.png  -crop 12x12+864+555 qte_image_6.png
convert qte_image.png  -crop 12x12+916+555 qte_image_7.png
convert qte_image.png  -crop 12x12+968+555 qte_image_8.png
convert qte_image.png  -crop 12x12+1020+555 qte_image_9.png

for i in {1..9}; do
mogrify -type Grayscale qte_image_$i.png
convert qte_image_$i.png -negate qte_image_negative_$i.png
convert qte_image_negative_$i.png -colors 2 qte_image_colors_$i.png
done

for i in {1..9}; do
eval tesseract qte_image_colors_$i.png qte_image_colors_$i -psm 10 tesseract_qte_config
done
# cat  qte_image_negative_?.txt | sed -n 1p


qte_sequence_original=$(cat  qte_image_colors_?.txt | sed -n '1~2p' | sed 's/ /S/g' | xargs | sed 's/ //g' )

qte_sequence=$(echo $qte_sequence_original | tr '[:upper:]' '[:lower:]')

echo $qte_sequence
xdotool type ${qte_sequence}
# 
# xdotool type ${qte_sequence:0:1}
# sleep .12
# xdotool type ${qte_sequence:1:1}
# sleep .12
# xdotool type ${qte_sequence:2:1}
# sleep .12
# xdotool type ${qte_sequence:3:1}
# sleep .12
# xdotool type ${qte_sequence:4:1}
# sleep .12
# xdotool type ${qte_sequence:5:1}
# sleep .12
# xdotool type ${qte_sequence:6:1}
# sleep .12
# xdotool type ${qte_sequence:7:1}
# sleep .12
# xdotool type ${qte_sequence:8:1}
# sleep .12
echo $qte_sequence
}


function circuit_do_quest_right_20 {
echo "DISKOLA TA PRAGMATA!"
# # search_and_click circuit_quest_right_20_start_game
# # sleep 10
search_and_click circuit_quest_right_20_restart_game
# for i in {1..60}; do
# echo clicked restart
sleep 3

echo starting: tesseract
circuit_qte_group_of_9
echo endedtesseract
# eval qte_group_9_$i
# echo ended: qte_group_9_$i
# sleep 6
# xdotool click 1
# done
}


function circuit_quest_right_22() {
click_map; click_elise; sleep 60
click_coordinates 773 674
click_coordinates 780 639
circuit_tracker_complete_quest
}


function circuit_quest_right_23() { # cornflowers location stable?
sylphs_go_to_atoll_l3
}

function circuit_quest_right_25 {
search_and_click blacksmith_icon
click_coordinates 995 497  # first gear
click_coordinates 589 549
click_coordinates 688 731 # enchant
click_coordinates 695 601 # bound

sylph_close_windows
circuit_tracker_complete_quest
}

function circuit_quest_right_26 {
#click on tulips aut
go_to_city
circuit_tracker_complete_quest
}


function circuit_quest_right_27 {
#click on tulips aut
capture_astrals_sylph 2
circuit_tracker_complete_quest
}


function circuit_quest_right_28 { # universal?
click_coordinates 1395 374 #click first quest
sleep 60
click_coordinates 773 674
click_coordinates 773 674
click_coordinates 780 639
click_coordinates 780 639
circuit_tracker_complete_quest
circuit_tracker_complete_quest
}


function circuit_quest_right_20 { # universal?
click_coordinates_fast 1341 324 #click quest_tracking
search_and_click circuit_weekly_circuits
search_and_click circuit_quest_right_20_start_game
circuit_qte_length_nine
circuit_tracker_complete_quest
}

# function circuit_qte_length_nine() {
# }
# qte_first

function circuit_tracker_complete_quest() {
click_coordinates_fast 1341 324 #click quest_tracking
search_and_click circuit_weekly_circuits
sleep 5
search_and_click circuit_quest_collect_rewards
sylph_close_windows
}
######################################
function circuit() {
# must start in cloud city
click_map; click_asima; 
# sleep 40
sleep 5

# click_coordinates 753 705 #click Leave; check coords
click_coordinates 777 665 #click Circuit Quests
click_coordinates_fast 1341 324 #click quest_tracking
search_and_click circuit_weekly_circuits

for i in $(ls circuit_quest_right*pat | cut -d'.' -f 1); do
# echo before $i
search_only_true $i && my_circuit=$i && echo "found: $my_circuit" && break
echo after $i
done

# echo $my_circuit
sylph_close_windows

case $my_circuit in
circuit_quest_right_1) echo -e "\e[1;32m I will kill 10 monsters in L1\e[0m" ;;
circuit_quest_right_2) echo -e "\e[1;33m I will contribute 50k gold\e[0m" ;;
circuit_quest_right_3) echo -e "\e[1;32m I will kill 10 monsters in L2\e[0m"; circuit_do_quest_right_3;;
circuit_quest_right_4) echo -e "\e[1;32m I will kill 10 monsters in L4\e[0m" ;;
circuit_quest_right_5) echo -e "\e[1;30m Campaign, check more\e[0m" ;;
circuit_quest_right_6) echo -e "\e[1;33m I will contribute 100k gold\e[0m" ;;
circuit_quest_right_7) echo -e "\e[1;35m I will speak to Lara\e[0m" ;;
circuit_quest_right_8) echo -e "\e[1;36m I will hit mice\e[0m" ;;
circuit_quest_right_9) echo -e "\e[1;35m I will message Alice\e[0m" ;;
circuit_quest_right_10) echo -e "\e[1;32m I will kill 10 monsters in L3\e[0m" ;;
circuit_quest_right_11) echo -e "\e[1;37m I will recruit 200 lancers\e[0m" ;;
circuit_quest_right_14) echo -e "\e[1;30m I will enchant any 3 times" ;;
circuit_quest_right_20) echo -e "\e[1;31m I will NOT NOT do QTE" ; circuit_quest_right_20 ;;
circuit_quest_right_21) echo -e "\e[1;31m I will NOT NOT plunder" ; circuit_quest_right_21 ;; # CHECK THIS AGAIN
circuit_quest_right_22) echo -e "\e[1;30m I will deliver to Elise" ; circuit_quest_right_22 ;;
circuit_quest_right_23) echo -e "\e[1;30m I will collect 10 cornflowers from L3" ; circuit_quest_right_23 ;; 
circuit_quest_right_24) echo -e "\e[1;30m I will deliver to Lara" ; circuit_quest_right_24 ;;
circuit_quest_right_25) echo -e "\e[1;24m I will enchant 1 time" ; circuit_quest_right_25 ;;
circuit_quest_right_26) echo -e "\e[1;24m I will collect Tulips L2 " ; circuit_quest_right_26 ;;
circuit_quest_right_27) echo -e "\e[1;24m I will capture astrals " ; circuit_quest_right_27 ;;
circuit_quest_right_28) echo -e "\e[1;24m I will send the message... hahahah" ; circuit_quest_right_28 ;;

# circuit_quest_right_21) echo -e "\e[1;32m I will kill 10 monsters in L1\e[0m" ;;
*) echo -e "\e[1;31m Circuit Quest NOT supported\e[0m" ;;
esac




# 1: kill 10 sylphs on L1
# 2: contribute 50k gold
# 3: kill 10 sylphs on L2
# 4: kill 10 sylphs on L4
# 5: kill 30 monsters in Shrine of Sakaiya (circuit_campaign_sakaiya)
# 6: same as 1
# 7: speak to lara (when arrive click_coordinates 793 670 and 778 635)
# 8: mice
# 9: capture one astral
# 10: 20 monsters in Devil tail
# 11: recruit 200 lancers
# 12: eliminate 20 monsters in roaring wetlands
# 13: same as 1
# 14: enchant any 3 times
# 21: kill 10 sylphs on L1
# search_only
#identify quest
}

function sylph_change_to_sepulcrum() {
for i in {1..20}; do
for i in {1..3}; do
click_coordinates_not_so_fast 1073 713
click_coordinates_not_so_fast 1104 732
done
click_coordinates 1146 972; sleep 3
for i in {1..3}; do
click_coordinates 589 647; sleep 1
click_coordinates_not_so_fast 800 637
click_coordinates_not_so_fast 636 607; sleep 1
done
click_coordinates 1096 978; sleep 2
done
}

function vip_wheel() {
for i in {1..7}; do
click_coordinates  760 573; sleep 7
done
}

function farm_iris_for_minutes() {

control_farm_iris()
# run if user hits control-c
{
 echo -en "\n*** Ouch! Exiting ***\n"
# cleanup
kill $(<global_variable_farm_iris_running_in_background_PID)
kill $(<global_variable_running_in_background_QTE_PID)

killall bash
 exit $?
}

trap control_farm_iris SIGINT

function farm_iris_loop {
search_and_click sylph_Cloud_City
sleep 5
sylphs_go_to_atoll_l1
while true
do
sylph_atoll_attack iris 9999
# echo attacking
done
}

farm_iris_loop &
# 
global_variable_farm_iris_running_in_background_PID=$(echo $!)
# echo $!
echo $global_variable_farm_iris_running_in_background_PID > global_variable_farm_iris_running_in_background_PID
echo process in background $global_variable_farm_iris_running_in_background_PID
# 
sleep "$1m"
kill $(<global_variable_farm_iris_running_in_background_PID)
kill $(<global_variable_running_in_background_QTE_PID)

}

function farm_aq_for_minutes() {

control_farm_aq()
# run if user hits control-c
{
 echo -en "\n*** Ouch! Exiting ***\n"
# cleanup
kill $(<global_variable_farm_aq_running_in_background_PID)
kill $(<global_variable_running_in_background_QTE_PID)

killall bash
 exit $?
}

trap control_farm_aq SIGINT

function farm_aq_loop {
search_and_click sylph_Cloud_City
sleep 5
sylphs_go_to_atoll_l3
while true
do
sylph_atoll_attack aq 9999
# echo attacking
done
}

farm_aq_loop &
# 
global_variable_farm_aq_running_in_background_PID=$(echo $!)
# echo $!
echo $global_variable_farm_aq_running_in_background_PID > global_variable_farm_aq_running_in_background_PID
echo process in background $global_variable_farm_aq_running_in_background_PID
# 
sleep "$1m"
kill $(<global_variable_farm_aq_running_in_background_PID)
kill $(<global_variable_running_in_background_QTE_PID)

}

function academy_upgrade_player2() {
click_coordinates 350 464
while true;
do
click_coordinates 1119 414
click_coordinates 600 542 
click_coordinates 777 542 
click_coordinates 1141 542
click_coordinates 784 636
click_coordinates 1135 636
click_coordinates 598 723
click_coordinates 770 723
click_coordinates 962 723
click_coordinates 1135 723
# click_coordinates 
done
}

function academy_troops_upgrade_player2() {
click_coordinates 350 464
while true;
do
# click_coordinates 1119 414
# click_coordinates 600 542 
# click_coordinates 777 542 
click_coordinates 1141 542
click_coordinates 784 636
# click_coordinates 1135 636
# click_coordinates 598 723
# click_coordinates 770 723
# click_coordinates 962 723
# click_coordinates 1135 723
# click_coordinates 
done
}

function farm_experience_increase_player2() {
function all_friends_click_fields {
click_coordinates 1450 300; click_fields_fast
click_coordinates 1450 325; click_fields_fast
click_coordinates 1450 350; click_fields_fast
click_coordinates 1450 375; click_fields_fast
click_coordinates 1450 400; click_fields_fast
click_coordinates 1450 425; click_fields_fast
click_coordinates 1450 450; click_fields_fast
click_coordinates 1450 475; click_fields_fast
click_coordinates 1450 500; click_fields_fast
click_coordinates 1450 530; click_fields_fast
click_coordinates 1450 555; click_fields_fast
click_coordinates 1450 580; click_fields_fast
}
while true; do
for i in {1..3};
do
all_friends_click_fields
click_coordinates 1526 616
done
click_coordinates 1403 617
click_coordinates 1473 676; click_fields
done
}

function click_fields_fast {
click_coordinates_fast 490 338
click_coordinates_fast 412 627
click_coordinates_fast 718 425
function click_on_first_field_fast {
### Duration = 1.11 sec ###
xdotool mousemove 673 620; sleep .1s
xdotool click 1; sleep .1s
}

function click_on_second_field_fast {
### Duration = 1.11 sec ###
xdotool mousemove 747 563; sleep .1s
xdotool click 1; sleep .1s
}

function click_on_third_field_fast {
### Duration = 1.11 sec ###
xdotool mousemove 816 496; sleep .1s
xdotool click 1; sleep .1s
}

function click_on_fourth_field_fast {
### Duration = 1.11 sec ###
xdotool mousemove 775 690; sleep .1s
xdotool click 1; sleep .1s
}

function click_on_fifth_field_fast {
### Duration = 1.11 sec ###
xdotool mousemove 847 621; sleep .1s
xdotool click 1; sleep .1s
}

function click_on_sixth_field_fast {
### Duration = 1.11 sec ###
xdotool mousemove 937 581; sleep .1s
xdotool click 1; sleep .1s
}

function click_on_seventh_field_fast {
### Duration = 1.11 sec ###
xdotool mousemove 898 760; sleep .1s
xdotool click 1; sleep .1s
}

function click_on_eighth_field_fast {
### Duration = 1.11 sec ###
xdotool mousemove 967 707; sleep .1s
xdotool click 1; sleep .1s
}

function click_on_ninth_field_fast {
### Duration = 1.11 sec ###
xdotool mousemove 1060 644; sleep .1s
xdotool click 1; sleep .1s
}
click_on_first_field_fast
click_on_second_field_fast
click_on_third_field_fast
click_on_fourth_field_fast
click_on_fifth_field_fast
click_on_sixth_field_fast
click_on_seventh_field_fast
click_on_eighth_field_fast
click_on_ninth_field_fast
}

# Sky Trail
function do_sky_trail() {
function sky_trail_attacks() {
for i in {1..52}
do
echo starting $i on  $(date)
# search_and_click sky_trail_upper_level
search_and_click sky_trail_ninth_boss 
sleep 1 
click_coordinates 837 536 
search_and_click go_to_city_confirm_new 
sleep 10 
# search_and_click wb_afk_button
sylph_close_windows
done
}

# search_and_click sylph_Cloud_City
# sleep 5
# search_and_click sylph_cloud_city_map_button
sleep 1
click_coordinates 1120 597  #sky trail on map
sleep 30
click_coordinates 753 671 # Say sky trail to Geneeral Williams
sleep 5
sky_trail_attacks
sylph_close_windows
}

function will_attempts {
for i in {1..60}; 
do 
click_coordinates_fast 842 754; click_coordinates 657 473; 
done
}

function sky_trail_attacks_coordinates {
for i in {1..150};
do
click_coordinates 1104 720
click_coordinates 614 604
done
}

function login_minors() {
# real	10m47.541s
# user	0m15.062s
# sys	0m0.820s
sleep 5s
rm daily_logins_montage.jpg
rm cropped-daily_login_*

login_minors_go_to_account player1@gmail.com password1 6818
# login_minors_go_to_account player1@gmail.com password1 6818
login_minors_go_to_account player1@gmail.com password1 6818
login_minors_go_to_account player1@gmail.com password1 6818
login_minors_go_to_account player1@gmail.com password1 6818

for i in $(ls daily_login_account*.png); do
         convert -crop 1100x680+100+125 $i cropped-$i
done

rm *player1.png

montage -tile 1x -geometry 1024x768-0-60 cropped-daily_login_account* daily_logins_montage.png
convert daily_logins_montage.png daily_logins_montage.jpg


scp daily_logins_montage.jpg player1@8.8.8.8:~/www/wartune

}


# login_minors_go_to_account player1@gmail.com password1

function login_minors_go_to_account() {
### Duration = 85 sec ###
# declare -g last_refresh_time=$(date +%s)
# declare -g next_refresh_time=$(expr $last_refresh_time + 3600)

login_minors_username=$1
login_minors_password=$2
login_minors_server=$3

echo logging in: $login_minors_username

xdotool mousemove 281 65; sleep 1s
xdotool click --repeat 1 1; sleep 1s
xdotool key ctrl+a; sleep 1s
xdotool type 'http://www.r2games.com/user'; sleep 1s; 
xdotool key Return; sleep 2s
# scrot wartune-wetlands-leave-this-page.png; sleep 3s
search_and_click rtwo_leave_this_page
# xdotool mousemove `visgrep -t 1000 wartune-wetlands-leave-this-page.png rtwo_leave_this_page.pat rtwo_leave_this_page.pat | sed "s/,/ /g" | cut -d' ' -f 1-2`; sleep 8s
sleep 10
xdotool mousemove 1054 484; xdotool click 1; #classwars
sylph_close_windows
sleep 5
search_and_click login_minors_LOGIN_NOW
search_and_click login_minors_LOGOUT

# click_coordinates 774 101 # logout

xdotool mousemove 1189 268 click --repeat 3 1; sleep 1;
xdotool type $(echo $login_minors_username)
xdotool mousemove 1189 322 click --repeat 3 1; sleep 1;
xdotool type $(echo $login_minors_password)
xdotool mousemove 1072 402 click 1 
sleep 5

# login to game
xdotool mousemove 281 65; sleep 1s
xdotool click --repeat 1 1; sleep 1s
xdotool key ctrl+a; sleep 1s
xdotool type "wartune.r2games.com/game/play/?server=$(echo $login_minors_server)"; sleep 1s; 
xdotool key Return; sleep 120s;
xdotool mousemove 1054 487 ; #CW
sleep 4s;
xdotool click 1;
sleep 4s;
search_and_click login_minors_CHECKIN
sleep 5s; 


scrot daily_login_account_$(echo $login_minors_username).png
}

function temp() {
echo temp
}
