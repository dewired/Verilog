READ ME

Cache Specifications:
Cache Size - 512B
Cache Line Size - 8B
Associativity- 4

Write Policy- Write Back
Replacement Policy- LRU Counter
Cache Type - Way Halting 

No of bits used:
Offset:2 bits
Index: 4 bits
Tag:26(22 main+4 halt tag)

Total Cache Data Size: 
a) (4*16*1)/8 for DirtyBit = 8 Bytes
b) (4*16*1)/8 for Valid/Invalid bit = 8 Bytes
c) (4*16*4)/8 for Halt Tag Array = 32 Bytes
d) (4*16*22)/8 for Main Tag Array = 176 Bytes
e) (4*16*8) for Cache Data Blocks = 512 Bytes
Total Size = 736 bytes
