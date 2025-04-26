
rule Trojan_Win32_TrickBot_VDS_MTB{
	meta:
		description = "Trojan:Win32/TrickBot.VDS!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 06 00 00 "
		
	strings :
		$a_01_0 = {b9 27 00 00 00 f7 f1 8b 44 24 14 8a 0c 50 8a 14 1e 32 d1 88 14 1e 46 3b f5 75 } //2
		$a_01_1 = {8b 54 24 14 c1 e8 05 6b c0 23 8b ce 2b c8 8a 04 4a 30 04 1e 83 c6 01 3b f5 75 c4 } //2
		$a_01_2 = {73 00 67 00 79 00 61 00 76 00 61 00 6a 00 77 00 69 00 76 00 6d 00 6c 00 6d 00 7a 00 66 00 75 00 6d 00 66 00 6e 00 63 00 76 00 } //2 sgyavajwivmlmzfumfncv
		$a_01_3 = {6e 00 77 00 73 00 70 00 6c 00 6e 00 6d 00 61 00 73 00 70 00 63 00 6b 00 68 00 73 00 73 00 6d 00 78 00 61 00 69 00 6a 00 78 00 6c 00 64 00 78 00 } //2 nwsplnmaspckhssmxaijxldx
		$a_01_4 = {63 76 64 66 58 7a 73 64 45 6a 67 62 43 78 64 53 61 71 4b 4c 6a 4e 74 44 } //2 cvdfXzsdEjgbCxdSaqKLjNtD
		$a_01_5 = {67 00 62 00 64 00 69 00 71 00 68 00 62 00 73 00 78 00 74 00 6a 00 70 00 78 00 71 00 77 00 6c 00 74 00 76 00 67 00 79 00 6f 00 73 00 69 00 71 00 70 00 7a 00 66 00 6b 00 } //2 gbdiqhbsxtjpxqwltvgyosiqpzfk
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2) >=2
 
}