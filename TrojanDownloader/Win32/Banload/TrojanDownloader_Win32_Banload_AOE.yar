
rule TrojanDownloader_Win32_Banload_AOE{
	meta:
		description = "TrojanDownloader:Win32/Banload.AOE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {8b 45 f0 0f b6 44 30 ff 8b 55 e0 89 02 8b 45 e4 0f b6 00 8b 55 e0 8b f8 89 7a 04 8d 45 e8 8b 55 e0 8b 12 2b d7 } //1
		$a_03_1 = {44 43 72 70 74 ?? ?? ?? ?? ?? ?? ?? 47 65 74 55 73 44 69 72 } //1
		$a_03_2 = {49 6e 73 6c 61 72 ?? ?? ?? ?? ?? ?? ?? 44 6e 4c 6f 64 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}