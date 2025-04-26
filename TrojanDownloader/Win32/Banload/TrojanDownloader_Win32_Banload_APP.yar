
rule TrojanDownloader_Win32_Banload_APP{
	meta:
		description = "TrojanDownloader:Win32/Banload.APP,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {69 70 68 6f 6e 65 75 70 64 61 74 65 2e 63 70 6c } //1 iphoneupdate.cpl
		$a_01_1 = {44 65 73 55 41 43 2e 62 61 74 } //1 DesUAC.bat
		$a_02_2 = {be 01 00 00 00 8b 45 ?? 0f b6 5c 30 ff 33 5d ?? 3b fb 7c ?? 81 c3 ff 00 00 00 2b df eb } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}