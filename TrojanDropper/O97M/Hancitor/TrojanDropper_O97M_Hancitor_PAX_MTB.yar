
rule TrojanDropper_O97M_Hancitor_PAX_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.PAX!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {49 66 20 44 69 72 28 75 75 20 26 20 22 5c 69 66 66 22 20 26 20 22 2e 62 69 6e 22 2c 20 76 62 44 69 72 65 63 74 6f 72 79 29 20 3d 20 22 22 20 54 68 65 6e } //1 If Dir(uu & "\iff" & ".bin", vbDirectory) = "" Then
		$a_01_1 = {43 61 6c 6c 20 6d 6d 28 22 73 69 6e 65 6b 6f 37 2e 72 22 20 26 20 22 75 2f 22 29 } //1 Call mm("sineko7.r" & "u/")
		$a_01_2 = {43 61 6c 6c 20 6d 69 6b 6f 28 62 63 62 64 66 2c 20 22 64 22 20 26 20 22 6f 63 22 29 } //1 Call miko(bcbdf, "d" & "oc")
		$a_01_3 = {44 6f 63 75 6d 65 6e 74 73 2e 4f 70 65 6e 20 66 69 6c 65 4e 61 6d 65 3a 3d 76 78 63 20 26 20 22 68 65 6c 22 20 26 20 76 76 2c 20 50 61 73 73 77 6f 72 64 44 6f 63 75 6d 65 6e 74 3a 3d 22 34 34 } //1 Documents.Open fileName:=vxc & "hel" & vv, PasswordDocument:="44
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}