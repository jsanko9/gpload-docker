Designed for:
![GreenPlum Database](https://s3.amazonaws.com/greenplum.org/wp-content/uploads/2017/08/11004213/logo-greenplum.png)

# GPLOAD JOB
---

Job Image for testing and automation

##### NOTICE: BEFORE EVEN CONSIDERING USING GPLOAD MAKE SURE YOU WILL BE ABLE TO INTERCONNECT CONTANER WITH ALL GREENPLUM SERVERS FOR PARALER DISTRIBUTION OTHERWISE YOU WILL GET STUCK. YOUR CONTAINER MUST BE ALSO DISCOVERABLE BY GPDB SERVERS.


## Set-up

Prefered way is to use docker compose to make sure everything is working fine. Easiest way to do it is with following steps.
  -  Clone or Fork GitHub Repository `git clone https://github.com/jsanko9/gpload-docker.git`
  -  Run inside directory: `docker-compose up -d gpload`
  -  Test database is working and run create table query: `create table table_name
(
    one real,
    two text
);`   
  -  Run job `docker-compose up -d gpload` (dont forget to create .env file)

## Info:
- Hardest part is to make sure everting discoverable, that is also why I picked docker-compose for testing. There has been quite a lot of issues with network_mode:host since this was build on Windows machine. Aliases are basically required as I could not run gpdb with different hostname.
- `extract_config` - TARGET:SQL:BEFORE runs when table is already mapped, therefore I could not squeze there create table
- 

## Files and folders
- `/bin` contains loader binaries used by gpload docker
- `/data` csv example
- `/log` logs
- `.env-template` template for .env file
- `build_script_sh` install instructions for 'expect' package, to guilde installation automatically
- `docker-compose.yml` testing docker-compose
- `Dockerfile` GPLoad Dockerfile (Pullable with `docker push jsanko/gpload`)
- `extract_config.yml` configured for test load
- `extract_config_template.yml` example for more advanced run
- `readme.md` this

## For Pivotal:
Please:
 - Make binaries and releases available publicly
 - Don't force us to make accounts to use your products
 - Don't flag accouts down, you are basicly bulling us.
 - Create flag for installation to automaticly accept T&C
 - Don't delete old OSS releases on PAA, some of us may need those.
(above took hours from my life for no real reason)  


#####Big thanks to Datagrip for providing Greenplum Image