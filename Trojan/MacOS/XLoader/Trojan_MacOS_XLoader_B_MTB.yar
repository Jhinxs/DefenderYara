
rule Trojan_MacOS_XLoader_B_MTB{
	meta:
		description = "Trojan:MacOS/XLoader.B!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_00_0 = {48 0f 44 f2 4c 8d 04 36 4d 89 c1 49 81 f1 b7 1d c1 04 f7 c6 00 00 00 80 4d 0f 44 c8 4b 8d 34 09 49 89 f0 49 81 f0 b7 1d c1 04 41 f7 c1 00 00 00 80 4c 0f 44 c6 4b 8d 34 00 49 89 f1 49 81 f1 b7 1d c1 04 41 f7 c0 00 00 00 80 4c 0f 44 ce 4b 8d 34 09 49 89 f0 49 81 f0 b7 1d c1 04 41 f7 c1 00 00 00 80 4c 0f 44 c6 4b 8d 34 00 49 89 f1 49 81 f1 b7 1d c1 04 41 f7 c0 00 00 00 80 4c 0f 44 ce 4b 8d 34 09 49 89 f0 49 81 f0 b7 1d c1 04 41 f7 c1 00 00 00 80 4c 0f 44 c6 4b 8d 34 00 49 89 f1 49 81 f1 b7 1d c1 04 41 f7 c0 00 00 00 80 4c 0f 44 ce 4c 89 0f 48 81 c2 } //1
	condition:
		((#a_00_0  & 1)*1) >=1
 
}