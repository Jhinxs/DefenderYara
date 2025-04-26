
rule TrojanDownloader_O97M_IcedID_RV_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.RV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 52 70 4c 42 54 2e 70 64 66 } //1 c:\programdata\RpLBT.pdf
		$a_00_1 = {53 70 6c 69 74 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 68 61 70 65 73 28 31 23 29 2e 54 69 74 6c 65 2c 20 5a 51 66 52 76 29 } //1 Split(ActiveDocument.Shapes(1#).Title, ZQfRv)
		$a_00_2 = {4c 65 6e 28 57 72 71 76 52 29 } //1 Len(WrqvR)
		$a_00_3 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 66 76 63 7a 50 28 33 29 20 26 20 22 2e 22 20 26 20 66 76 63 7a 50 28 33 29 20 26 20 22 72 65 71 75 65 73 74 2e 35 2e 31 22 29 } //1 CreateObject(fvczP(3) & "." & fvczP(3) & "request.5.1")
		$a_00_4 = {4f 70 65 6e 20 22 47 45 54 22 2c 20 54 77 72 74 51 28 47 66 68 7a 77 29 2c 20 46 61 6c 73 65 } //1 Open "GET", TwrtQ(Gfhzw), False
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}