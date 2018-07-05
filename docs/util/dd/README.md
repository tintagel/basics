# dd
_`dd` is a useful unix utility for interacting directly with block devices.  common uses include manipulating ISO and other disk images, forensic dick cloning, and writing ISO images to CD, DVD, BD, and other removeable media (e.g. usb drive)_

## locate the physical disk identifier using diskutil
```
$ diskutil list
/dev/disk0 (internal):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      GUID_partition_scheme                         500.3 GB   disk0
   1:                        EFI EFI                     314.6 MB   disk0s1
   2:                 Apple_APFS Container disk1         500.0 GB   disk0s2

/dev/disk1 (synthesized):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      APFS Container Scheme -                      +500.0 GB   disk1
                                 Physical Store disk0s2
   1:                APFS Volume Macintosh HD            133.0 GB   disk1s1
   2:                APFS Volume Preboot                 45.3 MB    disk1s2
   3:                APFS Volume Recovery                1.0 GB     disk1s3
   4:                APFS Volume VM                      4.3 GB     disk1s4

/dev/disk2 (external, physical):
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      GUID_partition_scheme                        *7.9 GB     disk2
   1:                        EFI EFI                     209.7 MB   disk2s1
   2:       Microsoft Basic Data A                       3.9 GB     disk2s2
   3:       Microsoft Basic Data B                       3.6 GB     disk2s3
```

## change to a user that can manipulate a physical disk (e.g. root)
```
$ su user_who_can_use_sudo
Password:
$ sudo -s
Password:
```
## write an image to disk2s2
```
# cd /path/to/image
# dd if=/path/to/image/file1.iso of=/dev/disk2s2 bs=1m
load: 1.88  cmd: dd 20526 uninterruptible 0.00u 4.53s
264+0 records in
263+0 records out
275775488 bytes transferred in 185.563991 secs (1486148 bytes/sec)
load: 2.11  cmd: dd 20526 uninterruptible 0.00u 6.12s
355+0 records in
354+0 records out
371195904 bytes transferred in 249.725510 secs (1486416 bytes/sec)
704+0 records in
704+0 records out
738197504 bytes transferred in 497.370364 secs (1484201 bytes/sec)
```
## write an image to disk2s3
```
# dd if=/path/to/image/file2.iso of=/dev/disk2s3 bs=1m
load: 2.14  cmd: dd 20655 uninterruptible 0.00u 0.97s
48+0 records in
47+0 records out
49283072 bytes transferred in 33.672864 secs (1463584 bytes/sec)
806+0 records in
806+0 records out
845152256 bytes transferred in 554.376511 secs (1524509 bytes/sec)
#
```
