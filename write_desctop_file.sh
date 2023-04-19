#!/bin/bash

user_tmp=`who`
array_tmp=( $user_tmp )
user=${array_tmp[0]}

touch ./calibration-touch-screen.desktop
sudo chmod 777 ./calibration-touch-screen.desktop
echo "[Desktop Entry]" > ./calibration-touch-screen.desktop
echo "Version=1.0" >> ./calibration-touch-screen.desktop
echo "Name=calibration_touch_sensor" >> ./calibration-touch-screen.desktop
echo "Comment=calibration_touch_sensor" >> ./calibration-touch-screen.desktop
echo "Exec=sudo /home/$user/touch/calibration_touch_sensor" >> ./calibration-touch-screen.desktop
echo "Icon=/usr/share/icons/calib_touch.png" >> ./calibration-touch-screen.desktop
echo "Terminal=true" >> ./calibration-touch-screen.desktop
echo "Type=Application" >> ./calibration-touch-screen.desktop
echo "Categories=Utility" >> ./calibration-touch-screen.desktop
