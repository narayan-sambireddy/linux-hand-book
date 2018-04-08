## DD (Data Definition) command

# to extract from normal files
    dd if=feed.txt bs=1 skip=0 count=10 status=none

# to extract from gz files
    gunzip -c feed.txt.gz | dd ibs=1 skip=0 count=10 status=none

---------------------------------------------------------------------

# REMOVE BOM characters :: 
	sed -i $'1s/^\uFEFF//' feed.txt

# TO SEE IF BOM IS PRESENT 
	cat -e feed.txt | head -1



