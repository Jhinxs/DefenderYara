
rule TrojanDownloader_O97M_Emotet_BPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.BPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {72 65 67 73 76 72 33 32 2e 65 78 65 [0-0f] 53 79 73 57 6f 77 36 34 [0-06] 57 69 6e 64 6f 77 73 [0-1f] 5c 72 64 73 2e 6f 63 78 [0-06] 5c 72 64 73 2e 6f 63 78 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}