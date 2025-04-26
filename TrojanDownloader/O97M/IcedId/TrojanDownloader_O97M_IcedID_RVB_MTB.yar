
rule TrojanDownloader_O97M_IcedID_RVB_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.RVB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 57 4c 79 50 54 2e 70 64 66 } //1 c:\programdata\WLyPT.pdf
		$a_00_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 67 66 4c 52 4b 28 33 29 20 26 20 22 2e 22 20 26 20 67 66 4c 52 4b 28 33 29 20 26 20 22 72 65 71 75 65 73 74 2e 35 2e 31 22 29 } //1 CreateObject(gfLRK(3) & "." & gfLRK(3) & "request.5.1")
		$a_00_2 = {50 63 43 72 42 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 6e 65 58 4e 61 2c 20 46 61 6c 73 65 } //1 PcCrB.Open "GET", neXNa, False
		$a_00_3 = {4c 65 6e 28 48 4e 67 4e 75 29 20 54 6f 20 31 20 53 74 65 70 20 2d 31 } //1 Len(HNgNu) To 1 Step -1
		$a_00_4 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 61 64 6f 64 62 2e 73 74 72 65 61 6d 22 29 } //1 CreateObject("adodb.stream")
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}