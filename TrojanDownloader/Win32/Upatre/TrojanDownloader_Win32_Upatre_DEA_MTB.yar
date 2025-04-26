
rule TrojanDownloader_Win32_Upatre_DEA_MTB{
	meta:
		description = "TrojanDownloader:Win32/Upatre.DEA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {33 ed 8b c7 99 8b d9 2b d8 1b ea 2b de 1b 2d ?? ?? ?? ?? b8 9d ff ff ff 2b c7 89 35 ?? ?? ?? ?? 8b f3 2b c6 8b dd 8b 2d ?? ?? ?? ?? 03 c8 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}