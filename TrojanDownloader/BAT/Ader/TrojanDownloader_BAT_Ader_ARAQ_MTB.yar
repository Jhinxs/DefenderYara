
rule TrojanDownloader_BAT_Ader_ARAQ_MTB{
	meta:
		description = "TrojanDownloader:BAT/Ader.ARAQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_01_0 = {09 11 04 18 5b 07 11 04 18 6f 15 00 00 0a 1f 10 28 16 00 00 0a 9c 11 04 18 58 13 04 11 04 08 32 df } //5
	condition:
		((#a_01_0  & 1)*5) >=5
 
}