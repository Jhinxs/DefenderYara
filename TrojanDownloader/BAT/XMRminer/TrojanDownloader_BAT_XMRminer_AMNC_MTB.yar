
rule TrojanDownloader_BAT_XMRminer_AMNC_MTB{
	meta:
		description = "TrojanDownloader:BAT/XMRminer.AMNC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 02 07 1e 6f ?? ?? ?? 0a 25 26 18 28 ?? ?? ?? 0a 25 26 6f ?? ?? ?? 0a 00 00 07 1e 58 0b 07 02 6f ?? ?? ?? 0a 25 26 fe 04 0c 08 2d d2 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}