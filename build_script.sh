set timeout 20;
spawn "./target.bin"
expect "*PIVOTAL*"
send "q"
expect "*Do you accept the Pivotal Loaders license agreement?*"
send "yes\r"
expect "*Provide the installation path for Greenplum Loaders*"
send "/build\r"
expect "*Install Greenplum Loaders into*"
send "yes\r"
expect "*Installation complete*"
expect eof
