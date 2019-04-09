Designed for: 

![GreenPlum Database](https://s3.amazonaws.com/greenplum.org/wp-content/uploads/2017/08/11004213/logo-greenplum.png)

# GPLOAD JOB

Job Image for testing and automation

##### NOTICE: BEFORE EVEN CONSIDERING USING GPLOAD, MAKE SURE YOU WILL BE ABLE TO INTERCONNECT CONTAINER WITH ALL GREENPLUM SERVERS FOR PARALLEL DISTRIBUTION, OTHERWISE YOU WILL GET STUCK. YOUR CONTAINER MUST ALSO BE DISCOVERABLE BY GPDB SERVERS.


## Set-up

The preferred way is to use docker-compose to make sure that everything is working fine. The easiest way is to follow these steps.
  -  Clone or Fork GitHub Repository `git clone https://github.com/jsanko9/gpload-docker.git`
  -  Run inside the directory: `docker-compose up -d gpload`
  -  Test if the database is working and run "create table" query: `create table table_name
(
    one real,
    two text
);`   
  -  Run job `docker-compose up -d gpload` (don't forget to create .env file)

## Info:
- The hardest part is to make sure everything is discoverable, that is also why I picked docker-compose for testing. There has been quite a lot of issues with network_mode:host since this was build on Windows machine. Aliases are basically required as I could not run gpdb with different hostname.
- `extract_config` - TARGET:SQL:BEFORE runs when table is already mapped, therefore I could not squeeze there "create table" query.


## Files and folders
- `/bin` contains loader binaries used by gpload docker
- `/data` csv example
- `/log` logs
- `.env-template` template for .env file
- `build_script_sh` install instructions for 'expect' package to guide installation automatically
- `docker-compose.yml` testing docker-compose
- `Dockerfile` GPLoad Dockerfile (Pullable with `docker pull jsanko/gpload`)
- `extract_config.yml` configured for test load
- `extract_config_template.yml` example for more advanced run
- `readme.md` this

## For Pivotal:
Please:
 - Make binaries and releases publicly available
 - Don't force us to make accounts to use your products
 - Don't flag accounts down, you are basically bullying us.
 - Create flag for installation to automatically accept T&C
 - Don't delete old OSS releases on PAA, some of us may need those.
 
(the above took hours from my life for no real reason)  

___

##### Big thanks to Datagrip for providing Greenplum Image

[DockerHub Image](https://hub.docker.com/r/jsanko/gpload)