# IoTAnalysis

IoTAnalysis Docker environemnt for analyzing binaries on different architectures

# STATIC ANANLYSIS
## COMPILER
```
mipsel-linux-gnu-gcc -g -o file.out file
```
or
```
arm-linux-gnueabihf-gcc -g -o file.out file
```
## DISASSEMBLE
```
mipsel-linux-gnu-objdump
```
or
```
arm-linux-gnueabihf-objdump
```
## LIST SYMBOLS
```
nm file
```
## ELF FORMAT INFO
```
readelf -a file
```
## STRINGS
```
strings file
```


# DYNAMIC ANALYSIS
## NETWORK TRAFFIC
```
tcpdump -ni eth0 -s0 -w /dump.pcap &
```
## TRACING
```
qemu-mipsel -strace ./a.out
```
or
```
qemu-arm -strace ./a.out
```
## DEBUGGING
```
qemu-mipsel -g 12345 ./a.out &
```
or
```
qemu-arm -g 12345 ./a.out &
```

```
gdb-multiarch ./a.out
```

```
set arch mips
```
or
```
set arch arm
```

```
set endian little
target remote localhost:12345
```

<3 Thanks Zach Riggle, Gulshan Singh, and CTFHacker <3 
http://reverseengineering.stackexchange.com/a/8917
https://github.com/ctfhacker/EpicTreasure/blob/master/docker/Dockerfile

