
rule TrojanDownloader_Win32_Cofas_A_MTB{
	meta:
		description = "TrojanDownloader:Win32/Cofas.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {56 f7 d8 1b c0 25 ?? ?? 40 00 50 a1 ?? ?? 40 00 f7 d9 1b c9 81 e1 ?? ?? 40 00 51 8b 0d ?? ?? 40 00 68 ?? ?? 40 00 6a 00 6a 00 68 ?? ?? 40 00 52 8b 15 ?? ?? 40 00 50 51 52 68 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}