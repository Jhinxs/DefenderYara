
rule TrojanDownloader_Win32_Cutwail_BF{
	meta:
		description = "TrojanDownloader:Win32/Cutwail.BF,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {8b 42 50 50 8b 4d fc 8b 51 34 52 } //1
		$a_01_1 = {03 51 28 8b 45 14 89 10 } //1
		$a_03_2 = {0f b6 42 03 35 ?? ?? ?? ?? 8b 4d 08 03 4d fc 88 41 03 eb } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*2) >=3
 
}