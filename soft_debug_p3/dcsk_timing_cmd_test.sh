# enable IDLE command on timing code 0xb
# command code 0xb = FakeTrig3
./devreg.sh cmd_code_idle 0xb
# enable command
./devreg.sh cmd_en_idle   1

