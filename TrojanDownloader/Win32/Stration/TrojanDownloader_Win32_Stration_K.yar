
rule TrojanDownloader_Win32_Stration_K{
	meta:
		description = "TrojanDownloader:Win32/Stration.K,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 03 00 00 "
		
	strings :
		$a_00_0 = {56 43 32 30 58 43 30 30 55 } //10 VC20XC00U
		$a_02_1 = {5b 72 1e 80 3e 4d 75 19 80 7e 01 5a 74 2a 8b 15 ?? ?? ?? 00 69 d2 } //10
		$a_02_2 = {68 74 74 70 3a 2f 2f 6c 6f 63 61 6c 68 6f 73 74 2d 32 2e 63 6f 6d 2f [0-08] 2e 65 78 65 } //10
	condition:
		((#a_00_0  & 1)*10+(#a_02_1  & 1)*10+(#a_02_2  & 1)*10) >=30
 
}