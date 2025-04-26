
rule TrojanDownloader_Win32_Banload_ANJ{
	meta:
		description = "TrojanDownloader:Win32/Banload.ANJ,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_00_0 = {3d 5f 6e 65 78 74 70 61 72 74 5f 32 72 66 6b 69 6e 64 79 73 61 64 76 6e 71 77 33 6e 65 72 61 73 64 66 } //1 =_nextpart_2rfkindysadvnqw3nerasdf
		$a_00_1 = {25 73 25 73 25 73 25 73 25 73 25 73 25 73 25 73 25 73 25 73 } //1 %s%s%s%s%s%s%s%s%s%s
		$a_00_2 = {69 65 28 61 6c 28 22 25 73 22 2c 34 29 2c 22 61 6c 28 5c 22 25 30 3a 73 5c 22 2c 33 29 22 2c 22 6a 6b 28 5c 22 25 31 3a 73 5c 22 2c 5c 22 25 30 3a 73 5c 22 29 22 29 } //1 ie(al("%s",4),"al(\"%0:s\",3)","jk(\"%1:s\",\"%0:s\")")
		$a_00_3 = {70 61 73 73 77 6f 72 64 } //1 password
		$a_00_4 = {62 6b 62 68 74 62 7e 78 62 6b 21 3b ba 28 c3 } //1
		$a_01_5 = {7e 35 be 01 00 00 00 8b 45 ec 0f b6 7c 30 ff 8b 45 e0 0f b6 00 89 45 f4 8d 45 e4 8b d7 2b 55 f4 2b 55 f0 e8 } //1
		$a_01_6 = {8b 37 85 db 74 15 8a 02 3c 61 72 06 3c 7a 77 02 2c 20 88 06 42 46 4b } //1
		$a_00_7 = {63 61 6c 6c 6e 65 78 74 68 6f 6f 6b 65 78 } //1 callnexthookex
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_00_7  & 1)*1) >=8
 
}