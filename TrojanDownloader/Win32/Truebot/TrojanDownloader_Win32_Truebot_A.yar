
rule TrojanDownloader_Win32_Truebot_A{
	meta:
		description = "TrojanDownloader:Win32/Truebot.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {80 3e 66 75 ?? 80 7e 01 61 75 ?? 80 7e 02 6c } //1
		$a_03_1 = {80 7e 02 45 75 ?? 80 7e 03 4c 90 09 03 00 44 75 } //1
		$a_03_2 = {80 3e 7c 0f 85 ?? ?? ?? ?? ?? [0-02] 68 0f 85 ?? ?? ?? ?? 80 7e 02 74 0f 85 ?? ?? ?? ?? 80 7e 03 74 0f 85 ?? ?? ?? ?? 80 7e 04 70 0f 85 } //1
		$a_00_3 = {25 73 67 65 74 2e 70 68 70 3f 6e 61 6d 65 3d 25 78 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}