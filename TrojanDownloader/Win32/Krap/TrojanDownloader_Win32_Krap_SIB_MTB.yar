
rule TrojanDownloader_Win32_Krap_SIB_MTB{
	meta:
		description = "TrojanDownloader:Win32/Krap.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {89 e7 8b 4f 04 01 ca 89 d0 40 8b 10 81 ea ?? ?? ?? ?? [0-10] 74 ?? eb ?? [0-0a] 8b 54 24 04 31 c0 81 c0 ?? ?? ?? ?? 03 34 24 01 d0 [0-0a] 8b 30 [0-0a] 01 d6 29 c0 81 e8 2b 56 ed 6d 31 06 [0-0a] 56 01 ef c2 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}