CFG_PATH=~/.config/retroarch/retroarch.cfg

# asset_source='assets_directory = "/usr/share/retroarch/assets"'
asset_source='assets_directory = '
asset_target='assets_directory = "~/.config/retroarch/assets"'
sed -i "s[^$asset_source.*[$asset_target[" $CFG_PATH
notify-send "Retroarch Config Updater" "Updated assets_directory"
sleep .2

# core_source='core_updater_show_experimental_cores = "false"'
core_source='core_updater_show_experimental_cores = '
core_target='core_updater_show_experimental_cores = "true"'
sed -i "s[^$core_source.*[$core_target[" $CFG_PATH
notify-send "Retroarch Config Updater" "Updated core_updater_show_experimental_cores"
sleep .2

libretro_source='libretro_directory = '
libretro_target='libretro_directory = "~/.config/retroarch/cores"'
sed -i "s[^$libretro_source.*[$libretro_target[" $CFG_PATH
notify-send "Retroarch Config Updater" "Updated libretro_directory"
sleep .2

libretro_info_source='libretro_info_path = "/usr/share/libretro/info"'
libretro_info_target='libretro_info_path = "~/.config/retroarch/cores/info"'
sed -i "s[^$libretro_info_source.*[$libretro_info_target[" $CFG_PATH
notify-send "Retroarch Config Updater" "Updated libretro_info_path"
sleep .2

menu_source='menu_show_core_updater = "false"'
menu_target='menu_show_core_updater = "true"'
sed -i "s[^$menu_source.*[$menu_target[" $CFG_PATH
notify-send "Retroarch Config Updater" "Finished"
sleep .2




# Made by Daniel Ong
# Script based off: https://www.youtube.com/watch?v=sXbZ1ycO_zU&ab_channel=LinuxHamster
