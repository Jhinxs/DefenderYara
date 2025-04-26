
rule TrojanDownloader_Win32_Reflo_CCHT_MTB{
	meta:
		description = "TrojanDownloader:Win32/Reflo.CCHT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f 47 85 a0 fd ff ff 6a 00 6a 00 50 68 ?? ?? ?? ?? 6a 00 ff d6 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}