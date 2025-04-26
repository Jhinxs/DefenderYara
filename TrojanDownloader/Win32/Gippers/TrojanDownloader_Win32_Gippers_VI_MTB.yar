
rule TrojanDownloader_Win32_Gippers_VI_MTB{
	meta:
		description = "TrojanDownloader:Win32/Gippers.VI!MTB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {55 53 65 72 76 65 72 43 72 65 61 74 65 } //1 UServerCreate
		$a_01_1 = {69 6c 6f 76 65 72 61 62 62 69 74 } //1 iloverabbit
		$a_01_2 = {3c 3c 46 49 4c 45 53 3a 25 64 20 20 20 49 4e 4a 45 43 54 3a 25 64 3e 3e } //1 <<FILES:%d   INJECT:%d>>
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}