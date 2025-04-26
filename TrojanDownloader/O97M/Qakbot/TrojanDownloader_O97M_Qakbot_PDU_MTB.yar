
rule TrojanDownloader_O97M_Qakbot_PDU_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.PDU!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 4e 68 72 67 6f 67 6f 72 2e 4f 6f 63 63 78 78 } //1 \Nhrgogor.Ooccxx
		$a_01_1 = {5c 4e 68 72 67 6f 67 6f 72 31 2e 4f 6f 63 63 78 78 } //1 \Nhrgogor1.Ooccxx
		$a_01_2 = {5c 4e 68 72 67 6f 67 6f 72 32 2e 4f 6f 63 63 78 78 } //1 \Nhrgogor2.Ooccxx
		$a_01_3 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 } //1 URLDownloadToFile
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}