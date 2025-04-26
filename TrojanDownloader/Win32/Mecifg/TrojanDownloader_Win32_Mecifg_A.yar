
rule TrojanDownloader_Win32_Mecifg_A{
	meta:
		description = "TrojanDownloader:Win32/Mecifg.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {6f 73 3d 25 73 26 73 74 3d 25 6c 75 26 6f 6b 3d 25 6c 75 } //1 os=%s&st=%lu&ok=%lu
		$a_03_1 = {51 50 ff 75 ?? ff 55 ?? 57 ff 75 ?? ff 55 ?? ff 75 ?? ff 15 ?? ?? ?? ?? ff 75 ?? ff 15 ?? ?? ?? ?? e9 ?? ?? 00 00 6a 40 68 00 10 10 00 8d 83 ?? 08 00 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}