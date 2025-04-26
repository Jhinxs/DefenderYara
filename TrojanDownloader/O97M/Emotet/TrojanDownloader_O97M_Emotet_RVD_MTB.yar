
rule TrojanDownloader_O97M_Emotet_RVD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RVD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 73 63 72 22 20 2b 20 68 61 73 6c 6b 20 2b 20 22 69 70 74 2e 53 68 22 20 2b 20 68 61 73 6c 6b 20 26 20 22 65 6c 6c 22 2c 20 22 22 29 } //1 .CreateObject("Wscr" + haslk + "ipt.Sh" + haslk & "ell", "")
		$a_01_1 = {66 68 77 6b 75 69 73 68 64 66 2e 45 78 65 63 20 55 73 65 72 46 6f 72 6d 31 2e 4c 61 62 65 6c 31 2e 54 61 67 } //1 fhwkuishdf.Exec UserForm1.Label1.Tag
		$a_01_2 = {41 63 74 69 76 65 53 68 65 65 74 2e 52 61 6e 67 65 28 22 41 31 3a 41 36 22 29 } //1 ActiveSheet.Range("A1:A6")
		$a_01_3 = {2e 46 69 6e 64 28 57 68 61 74 3a 3d 22 22 2c 20 53 65 61 72 63 68 46 6f 72 6d 61 74 3a 3d 54 72 75 65 29 } //1 .Find(What:="", SearchFormat:=True)
		$a_01_4 = {52 65 70 6c 61 63 65 28 43 65 6c 6c 73 28 31 30 38 2c 20 32 29 2c 20 22 52 70 63 65 22 2c 20 22 22 29 } //1 Replace(Cells(108, 2), "Rpce", "")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}