# Counter-strike 1.6 surf server

### How to run server

1. Create folder with two files ```.env``` and ```docker-compose.yml```. You can find example of these files below
2. All variables in```.env``` is not required: default server name is: ```Surf Server```, default port is: ```27015```
3. Run command ```docker-compose up -d```

### Installed maps

```shell
surf_ninja
surf_journey
surf_green
surf_green_delux2
surf_simpsons_final
surf_ski
surf_ski_2
surf_ski3_summer
surf_skate_v1
surf_waterslide
surf_water-run
surf_water-run2
surf_egypt
surf_egypt-winter_final
surf_chess
surf_aztec
surf_4-Ever
surf_Advanced
surf_b-n-w
surf_city
surf_combat
surf_gravel
surf_helix
surf_lost_tomb
surf_mdx
surf_megawave
surf_minecraft_skills
surf_sand
surf_swift
surf_the-gap_v2
surf_the-gap_v4
surf_tower_wars
```

### Installed addons

```
amxmodx
metamod
```

### Installed plugins


1. [plugin_trail.amxx](https://forums.alliedmods.net/showthread.php?t=19328)
2. [amx_bhop.amxx](https://forums.alliedmods.net/showthread.php?t=69840)
3. [teams_manager.amxx](https://forums.alliedmods.net/showthread.php?p=1643945)
4. [speedometer.amxx](https://forums.alliedmods.net/showthread.php?p=702520)

Settings for plugins in ```/Server/cstrike/server.cfg```

### Example of docker-compose.yml

```shell
version: "3.8"
services:
  counter-strike-surf-server:
    image: termitkin/counter-strike-surf-server:latest
    container_name: counter-strike-surf-server
    restart: unless-stopped
    ports:
      - "${PORT}:${PORT}/udp"
      - "${PORT}:${PORT}"
    env_file:
      - .env
```

### Example of .env

```shell
SERVER_NAME="Nice surf server"
STEAM_ADMIN_ID="STEAM_0:1:xxxxxxxx"
MAPS_CYCLE="surf_simpsons_final,surf_ninja"
PORT="27020"
```

### How to get ```STEAM_ADMIN_ID``` 

Connect to any server, open console and type: ```status```

### Command for build docker image

```shell
docker build -t termitkin/counter-strike-surf-server:latest .
```
