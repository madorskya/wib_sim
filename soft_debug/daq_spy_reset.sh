echo 'reset daq spy memory'
devmem 0xa00c0004 32 0xe0

echo 'read full flags'
devmem 0xa00c0080 32

echo 'remove daq spy reset'
devmem 0xa00c0004 32 0x20

echo 'read full flags immediately'
devmem 0xa00c0080 32

sleep 0.01

echo 'read full flags after delay'
devmem 0xa00c0080 32



