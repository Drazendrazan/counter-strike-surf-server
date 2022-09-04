#! /bin/bash
export LD_LIBRARY_PATH=".:$LD_LIBRARY_PATH"

if [[ -n "${SERVER_NAME}" ]]; then
  echo -e hostname \"${SERVER_NAME}\" >> ./cstrike/server.cfg
else
  echo -e hostname \"Surf Server\" >> ./cstrike/server.cfg
fi

if [[ -n "${STEAM_ADMIN_ID}" ]]; then
  echo -e \"${STEAM_ADMIN_ID}\" \"\" \"abcdefghijklmnopqrstu\" \"ce\" >> ./cstrike/addons/amxmodx/configs/users.ini
fi

IFS=$','
for i in ${MAPS_CYCLE};
do
  echo "$i" >> ./cstrike/mapcycle.txt;
done
unset IFS

while [ true ]; do
./hlds_run -game cstrike -secure +map surf_simpsons_final +ip 0.0.0.0 +port ${PORT:-27015} +maxplayers 32 +sys_ticrate 1000 -pingboost 2 -secure +exec server.cfg
echo "Server crashed at '`date`' - Restarting"
echo "Server crashed at '`date`' - Restarting" >> crash.log
sleep 5
done
