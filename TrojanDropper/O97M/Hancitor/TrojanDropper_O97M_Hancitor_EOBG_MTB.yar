
rule TrojanDropper_O97M_Hancitor_EOBG_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.EOBG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {49 66 20 44 69 72 28 6b 79 74 72 65 77 77 66 20 26 20 22 5c 72 65 66 6f 72 6d 2e 64 6f 63 22 29 20 3d 20 22 22 20 54 68 65 6e } //1 If Dir(kytrewwf & "\reform.doc") = "" Then
		$a_01_1 = {43 61 6c 6c 20 70 70 70 78 28 6b 79 74 72 65 77 77 66 20 26 20 22 5c 72 65 66 6f 72 6d 2e 64 6f 63 22 29 } //1 Call pppx(kytrewwf & "\reform.doc")
		$a_01_2 = {43 61 6c 6c 20 53 65 61 72 63 68 28 4d 79 46 53 4f 2e 47 65 74 46 6f 6c 64 65 72 28 61 73 64 61 29 2c 20 68 64 76 29 } //1 Call Search(MyFSO.GetFolder(asda), hdv)
		$a_01_3 = {53 75 62 20 68 64 68 64 64 28 61 73 64 61 20 41 73 20 53 74 72 69 6e 67 29 } //1 Sub hdhdd(asda As String)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}