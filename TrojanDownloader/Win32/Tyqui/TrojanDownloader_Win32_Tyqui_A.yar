
rule TrojanDownloader_Win32_Tyqui_A{
	meta:
		description = "TrojanDownloader:Win32/Tyqui.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {74 00 69 00 6b 00 6b 00 79 00 73 00 6f 00 66 00 74 00 20 00 77 00 65 00 62 00 20 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 5c 00 73 00 74 00 75 00 62 00 } //1 tikkysoft web downloader\stub
		$a_01_1 = {3c 00 2f 00 46 00 49 00 4c 00 45 00 3e 00 } //1 </FILE>
		$a_01_2 = {49 00 66 00 20 00 45 00 78 00 69 00 73 00 74 00 } //1 If Exist
		$a_01_3 = {73 00 79 00 73 00 74 00 65 00 6d 00 64 00 72 00 69 00 76 00 65 00 } //1 systemdrive
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}