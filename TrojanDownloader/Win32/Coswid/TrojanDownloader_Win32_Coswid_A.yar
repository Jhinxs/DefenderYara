
rule TrojanDownloader_Win32_Coswid_A{
	meta:
		description = "TrojanDownloader:Win32/Coswid.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {68 c0 27 09 00 ff 15 ?? ?? ?? ?? eb ?? 68 40 77 1b 00 ff 15 } //1
		$a_03_1 = {83 e8 44 89 85 f4 6f fe ff 83 bd f4 6f fe ff 2f 77 ?? 8b 95 f4 6f fe ff 33 c9 8a 8a ?? ?? ?? ?? ff 24 8d ?? ?? ?? ?? 8d 85 00 70 fe ff } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}