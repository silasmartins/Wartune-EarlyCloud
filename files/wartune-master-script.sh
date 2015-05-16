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

echo "Wartune EarlyCloud script, Copyright (C) 2014 cmoang (temporary nickname)"
echo "Wartune EarlyCloud script comes with ABSOLUTELY NO WARRANTY;"
echo "This is free software, and you are welcome"
echo "to redistribute it under certain conditions, mainly"
echo "Visit https://github.com/cmoang/EarlyCloud/ and http://www.gnu.org/licenses/gpl-2.0.html"
echo "for further details."

cleanup() { # example cleanup function bash  wartune-master-script.sh
  rm -f /tmp/tempfile
  return $?
}
 
control_c() { # run if user hits control-c
  echo -en "\n*** Ouch! Exiting ***\n"
#   cleanup
kill  $(<global_variable_inspecting_running_in_background_PID)
kill  $(<global_variable_running_in_background_PID)
killall bash
  exit $?
}
 
# trap keyboard interrupt (control-c)
trap control_c SIGINT
 
# main() loop
# while true; do read x; done


# rm wartune-field-?.png.??-*
# rm wartune-bounty-?.png.??-*
# rm wartune-bounties-window.??-*
# 

date

source ./auto-wartune.sh
echo -e "\e[1;31m ###########################################\e[0m"
echo -e "\e[1;32m ###########################################\e[0m"
echo -e "\e[1;33m ###########################################\e[0m"
echo -e "\e[1;34m ###########################################\e[0m"
echo -e "\e[1;35m ###########################################\e[0m"
echo -e "\e[1;36m ###########################################\e[0m"
echo -e "\e[1;37m ###########################################\e[0m"
echo -e "\e[1;38m ###########################################\e[0m"
echo -e "\e[1;39m ###########################################\e[0m"

login_minors_go_to_account player1@gmail.com password1 6818

# time go_to_altar    

###########################################
#### TEMPORARY TASKS
###########################################

# for i in {1..30}; do search_for_arena_ready_or_start; done
# complete_bounties
# do_catacombs
# duel_with_best_player 20
# capture_astrals 

# while true; do click_fields; done
# guild_blessing 
# inspect_friend_farms_fast 1
# sleep 3m
# # go_to_wartune_rtwo
# complete_bounties
# # go_to_altar
# sleep 8m
# complete_bounties
# # # 
# go_to_farm_fast 
# # # 
# # # # click_fields
# # # # plant_seeds_fast
# # # # guild_contribution 13
# click_on_fields_for_minutes 24
# sleep 47m 
# close_windows
# # 
# go_to_farm_fast 
# click_on_fields_for_minutes 5

# listcontains() { 
# for word in $1; do 
# [[ $word = $2 ]] && return 0 
# done 
# return 1 
# } 
# 
# guild_battle_days="1 3 5"



# quests_copper
# click_on_fields_for_minutes 6

###########################################
#### OVERNIGHT SEQUENCE
###########################################
# quests_copper
# sleep 20m
# complete_bounties

# sleep 16m 
# complete_bounties
# go_to_altar
# sleep 4m 
# go_to_altar1
# 
# sleep 24m 
# go_to_wartune_rtwo
# 
# # campaign_blitz_three_times
# # 
# go_to_farm_fast
# click_on_fields_for_minutes 24
# plant_seeds_fast
# # inspect_friend_farms_fast 60
# # go_to_wartune_rtwo
# # go_to_farm_fast
# click_on_fields_for_minutes 21
# # 
# inspect_friend_farms_for_minutes
# sleep 50&
# auto_simple_farm_and_bounties_and_altar
circle_1h_farm_and_bounties 250 &
# sylph_auto_simple_sylph_farming_and_bounties_and_altar 72 &  ####### PANS

# # # # 
# # # battle_mode_waiting_for_battle_spd
# auto_farm_and_bounties_and_altar 80 &
# # auto_farm_and_bounties 48 &
# # 
# streeks,master,klytoris and marion gordon --- streeks leader or firemage :D OUR NORTH Tower
#black, me, baam

running_in_background_PID=$(echo $!)

# echo $!
echo $running_in_background_PID > global_variable_running_in_background_PID
echo process in background global_variable_running_in_background_PID ---circle_1h_farm_and_bounties--- $running_in_background_PID 
# echo $(<global_variable_running_in_background_PID)

while true
do
# echo watchdog overseering - $(date +%H%M)
sleep 10s

if [[ $(date +%H%M) = 1226 ]] || [[ $(date +%H%M) = 2256 ]]; then
echo time for World Boss
# check_refreshing
kill  $(<global_variable_farming_pans_running_in_background_PID)
kill  $(<global_variable_inspecting_running_in_background_PID)
kill  $(<global_variable_running_in_background_PID)
for i in {1..4}; do sylph_close_windows; done
sylph_go_to_wartune_rtwo                # real    0m49.394s @  0m49.394s
wb_change_skills_before
wb_potion_power_level_four
echo enter wb battle
wb_join
# wb_vouchers
echo wb started
wb_attack
# echo finished wb battle
sleep 5s
echo sleep ended
wb_change_skills_after
# skills_talent_upgrade
sylph_capture_astrals 100
sleep 10s
sylph_go_to_normal_city
sleep 2
wilds_gold_mines
sleep 2
sylph_go_to_wartune_rtwo
sleep 5s
#guild_contribution

# return_to_last_location
# auto_farm_and_bounties 72 &
circle_1h_farm_and_bounties 250 &
# sylph_auto_simple_sylph_farming_and_bounties_and_altar 72 &
echo $running_in_background_PID > global_variable_running_in_background_PID
echo process in background global_variable_running_in_background_PID $running_in_background_PID 
# echo $(<global_variable_running_in_background_PID)
fi


if [[ $(date +%H%M) = 0700 ]]; then
echo time for Morning Tasks
# check_refreshing
kill  $(<global_variable_farming_pans_running_in_background_PID)
kill  $(<global_variable_inspecting_running_in_background_PID)
kill  $(<global_variable_running_in_background_PID)
for i in {1..4}; do sylph_close_windows; done

morning_tasks

# return_to_last_location
# auto_farm_and_bounties 72 &
circle_1h_farm_and_bounties 250 &
# sylph_auto_simple_sylph_farming_and_bounties_and_altar 72 &

echo $running_in_background_PID > global_variable_running_in_background_PID
echo process in background global_variable_running_in_background_PID $running_in_background_PID 
# echo $(<global_variable_running_in_background_PID)
fi


# if [[ $(date +%H%M) = 1925 ]]; then
# echo time for Guild ToA
# # check_refreshing
# kill  $(<global_variable_farming_pans_running_in_background_PID)
# kill  $(<global_variable_inspecting_running_in_background_PID)
# kill  $(<global_variable_running_in_background_PID)
# # for i in {1..4}; do sylph_close_windows; done
# # # go_to_wartune_rtwo                # real    0m49.394s @  0m49.394s
# # # guild_go_to_chamber 
# # # xdotool mousemove 924 257; for i in {1..10}; do xdotool click 1; sleep 10s; done
# echo -e "\e[1;31m Debug \e[0m \e[1;37m ONE \e[0m"
# sylph_go_to_wartune_rtwo; sleep 20; guild_go_to_chamber
# echo -e "\e[1;31m Debug \e[0m \e[1;37m TWO \e[0m"
# # echo sleeping for 25 min - $(date)
# sleep 7m
# echo -e "\e[1;31m Debug \e[0m \e[1;37m THREE \e[0m"
# search_and_click guild_tree_of_ancients
# echo -e "\e[1;31m Debug \e[0m \e[1;37m FOUR \e[0m"
# sleep 15m
# echo -e "\e[1;31m Debug \e[0m \e[1;37m FIVE \e[0m"
# # return_to_last_location
# # go_to_farm_fast; click_fields
# # auto_farm_and_bounties 72 &
# circle_1h_farm_and_bounties 250 &
# 
# # sylph_auto_simple_sylph_farming_and_bounties_and_altar 72 &
# 
# echo -e "\e[1;31m Debug \e[0m \e[1;37m SIX \e[0m"
# echo $running_in_background_PID > global_variable_running_in_background_PID
# echo process in background $running_in_background_PID 
# echo $(<global_variable_running_in_background_PID)
# echo -e "\e[1;31m Debug \e[0m \e[1;37m SEVEN \e[0m"
# fi

if [[ $(date +%H%M) = 2025 ]]; then
echo time for Guild ToA
# check_refreshing
kill  $(<global_variable_farming_pans_running_in_background_PID)
kill  $(<global_variable_inspecting_running_in_background_PID)
kill  $(<global_variable_running_in_background_PID)
# for i in {1..4}; do sylph_close_windows; done
# # go_to_wartune_rtwo                # real    0m49.394s @  0m49.394s
# # guild_go_to_chamber 
# # xdotool mousemove 924 257; for i in {1..10}; do xdotool click 1; sleep 10s; done
echo -e "\e[1;31m Debug \e[0m \e[1;37m ONE \e[0m"
sylph_go_to_wartune_rtwo; sleep 20; guild_go_to_chamber
echo -e "\e[1;31m Debug \e[0m \e[1;37m TWO \e[0m"
# echo sleeping for 25 min - $(date)
sleep 7m
echo -e "\e[1;31m Debug \e[0m \e[1;37m THREE \e[0m"
search_and_click guild_tree_of_ancients
echo -e "\e[1;31m Debug \e[0m \e[1;37m FOUR \e[0m"
sleep 15m
echo -e "\e[1;31m Debug \e[0m \e[1;37m FIVE \e[0m"
# return_to_last_location
# go_to_farm_fast; click_fields
# auto_farm_and_bounties 72 &
circle_1h_farm_and_bounties 250 &

# sylph_auto_simple_sylph_farming_and_bounties_and_altar 72 &

echo -e "\e[1;31m Debug \e[0m \e[1;37m SIX \e[0m"
echo $running_in_background_PID > global_variable_running_in_background_PID
echo process in background $running_in_background_PID 
# echo $(<global_variable_running_in_background_PID)
echo -e "\e[1;31m Debug \e[0m \e[1;37m SEVEN \e[0m"
fi

if [[ $(date +%H%M) = 2201 ]]; then
echo time for Amethyst Mines
# check_refreshing
kill  $(<global_variable_farming_pans_running_in_background_PID)
kill  $(<global_variable_inspecting_running_in_background_PID)
kill  $(<global_variable_running_in_background_PID)
echo -e "\e[1;31m Debug \e[0m \e[1;37m ONE \e[0m"
sylph_go_to_wartune_rtwo; sleep 20; amethyst_mines

circle_1h_farm_and_bounties 250 &

echo -e "\e[1;31m Debug \e[0m \e[1;37m SIX \e[0m"
echo $running_in_background_PID > global_variable_running_in_background_PID
echo process in background $running_in_background_PID 
# echo $(<global_variable_running_in_background_PID)
echo -e "\e[1;31m Debug \e[0m \e[1;37m SEVEN \e[0m"
fi

# if [[ $(date +%u) = 2255 ]]; then
# if listcontains "$guild_battle_days" $(date +%u); then 
# 
# echo time for Guild Battle!!!
# kill  $(<global_variable_farming_pans_running_in_background_PID)
# kill  $(<global_variable_inspecting_running_in_background_PID)
# kill  $(<global_variable_running_in_background_PID)
# # echo $running_in_background_PID > global_variable_running_in_background_PID
# # echo process in background $running_in_background_PID 
# # echo $(<global_variable_running_in_background_PID)
# guild_battle_enter
# fi
# fi



done


