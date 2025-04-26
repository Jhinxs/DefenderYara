
rule Trojan_BAT_Ader_CM_MTB{
	meta:
		description = "Trojan:BAT/Ader.CM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {24 64 31 63 63 32 62 61 64 2d 64 36 66 37 2d 34 37 62 38 2d 61 66 61 38 2d 33 61 39 64 34 34 33 30 64 63 63 31 } //1 $d1cc2bad-d6f7-47b8-afa8-3a9d4430dcc1
		$a_01_1 = {44 69 73 63 6f 72 64 20 4c 69 6e 6b 20 3a 20 20 76 31 2e 30 2e 30 2d 63 75 73 74 6f 6d } //1 Discord Link :  v1.0.0-custom
		$a_01_2 = {41 6e 79 44 65 73 6b 2e 65 78 65 } //1 AnyDesk.exe
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //1 DownloadString
		$a_01_4 = {47 65 74 54 65 6d 70 50 61 74 68 } //1 GetTempPath
		$a_01_5 = {44 65 63 6f 64 69 6e 67 42 79 74 65 73 } //1 DecodingBytes
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}