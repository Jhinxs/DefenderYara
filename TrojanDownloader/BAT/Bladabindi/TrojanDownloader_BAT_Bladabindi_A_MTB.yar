
rule TrojanDownloader_BAT_Bladabindi_A_MTB{
	meta:
		description = "TrojanDownloader:BAT/Bladabindi.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 11 01 20 ?? ?? ?? 82 28 ?? 00 00 06 28 ?? 00 00 0a 28 ?? 00 00 2b 6f ?? 00 00 0a 26 20 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}