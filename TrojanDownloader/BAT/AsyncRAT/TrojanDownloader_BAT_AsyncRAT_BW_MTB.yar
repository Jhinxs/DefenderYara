
rule TrojanDownloader_BAT_AsyncRAT_BW_MTB{
	meta:
		description = "TrojanDownloader:BAT/AsyncRAT.BW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {18 5b 11 01 11 04 18 6f ?? 00 00 0a 1f 10 28 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}