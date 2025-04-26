
rule TrojanDownloader_O97M_VBObfuse_AAET{
	meta:
		description = "TrojanDownloader:O97M/VBObfuse.AAET,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {36 62 36 39 32 66 36 35 37 38 36 31 36 64 32 66 [0-1f] 32 65 36 35 37 38 36 35 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}