
rule TrojanDownloader_Win32_Vidar_A_MTB{
	meta:
		description = "TrojanDownloader:Win32/Vidar.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {c7 44 24 08 00 00 00 00 c7 44 24 04 01 00 00 00 c7 04 24 02 00 00 00 e8 ?? ?? 00 00 83 ec 0c 89 45 ?? c7 45 e0 ?? ?? ?? ?? 8b 45 ?? 89 04 24 e8 ?? ?? 00 00 83 ec 04 89 85 30 fe ff ff 66 c7 85 2c fe ff ff 02 00 c7 04 24 50 00 00 00 e8 ?? ?? 00 00 83 ec 04 66 89 85 2e fe ff ff c7 44 24 08 10 00 00 00 8d 85 2c fe ff ff 89 44 24 04 8b 45 ?? 89 04 24 e8 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}