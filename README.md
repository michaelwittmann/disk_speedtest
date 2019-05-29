# Disk Speedtest

Simple shell script to test disk/network speed.

### Usage

```
sh speedtest.sh TARGET_DIR (FILESIZE)
```

#### Arguments
`TARGET_DIR` Path to directory, which should be benchmarked.

`FILESIZE` Optional argument to specify the size of the test file. Default is `100M`.

#### Result

```
1+0 Datensätze ein
1+0 Datensätze aus
10485760 Bytes (10 MB) kopiert, 0,902346 s, 11,6 MB/s
```

### Background Knowledge
https://wiki.ubuntuusers.de/dd/