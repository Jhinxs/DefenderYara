
rule TrojanDownloader_BAT_REntS_SIBB_MTB{
	meta:
		description = "TrojanDownloader:BAT/REntS.SIBB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {1f 2f 9d 25 [0-40] 25 1f ?? 1f 73 9d [0-40] 25 1f ?? 1f 77 9d [0-40] 25 1f ?? 1f 65 9d [0-40] 25 1f ?? 1f 6e 9d [0-40] 25 1f ?? 1f 2d 9d [0-40] 25 1f ?? 1f 63 9d [0-40] 25 1f ?? 1f 66 9d [0-40] 25 1f ?? 1f 2d 9d 25 [0-40] 25 1f ?? 1f 6c 9d [0-40] 25 1f ?? 1f 6f 9d [0-40] 25 1f ?? 1f 6f 9d [0-40] 25 1f ?? 1f 70 9d [0-40] 25 1f ?? 1f 72 9d [0-40] 25 1f ?? 1f 65 9d [0-40] 25 1f ?? 1f 76 9d [0-40] 25 1f ?? 1f 69 9d [0-40] 25 1f ?? 1f 6c 9d [0-40] 25 1f ?? 1f 2f 9d [0-40] 25 1f ?? 1f 71 9d [0-40] 25 1f ?? 1f 67 9d } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}