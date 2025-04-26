
rule TrojanDownloader_Win32_Bancos_EE{
	meta:
		description = "TrojanDownloader:Win32/Bancos.EE,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {83 c4 3c 83 c9 ff 33 c0 41 83 f9 40 7e 02 33 c9 8a 91 ?? ?? ?? 00 30 90 90 ?? ?? ?? 00 40 3d 00 08 00 00 7c e4 } //1
		$a_02_1 = {b2 68 b1 3a 80 bc 05 ?? ?? ?? ?? 67 75 1c 80 bc 05 ?? ?? ?? ff 74 75 12 38 94 ?? ?? ?? ?? ?? 75 09 38 8c ?? ?? ?? ?? ?? 74 07 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}