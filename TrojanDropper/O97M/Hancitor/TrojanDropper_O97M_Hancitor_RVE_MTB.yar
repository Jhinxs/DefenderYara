
rule TrojanDropper_O97M_Hancitor_RVE_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.RVE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4f 70 74 69 6f 6e 73 2e 44 65 66 61 75 6c 74 46 69 6c 65 50 61 74 68 28 77 64 55 73 65 72 54 65 6d 70 6c 61 74 65 73 50 61 74 68 29 20 26 20 22 5c 69 66 66 22 20 26 20 22 2e 62 69 6e 22 } //1 Options.DefaultFilePath(wdUserTemplatesPath) & "\iff" & ".bin"
		$a_01_1 = {43 61 6c 6c 20 6d 6d 28 22 30 62 61 6d 61 6e 64 6f 73 2e 72 22 20 26 20 22 75 2f 22 29 } //1 Call mm("0bamandos.r" & "u/")
		$a_01_2 = {44 6f 63 75 6d 65 6e 74 73 2e 4f 70 65 6e 20 66 69 6c 65 4e 61 6d 65 3a 3d 76 78 63 20 26 20 22 68 65 6c 22 20 26 20 76 76 2c 20 50 61 73 73 77 6f 72 64 44 6f 63 75 6d 65 6e 74 3a 3d 22 34 34 22 } //1 Documents.Open fileName:=vxc & "hel" & vv, PasswordDocument:="44"
		$a_01_3 = {43 61 6c 6c 20 6d 69 6b 6f 28 62 63 62 64 66 2c 20 22 70 2e 64 22 20 26 20 22 6f 63 22 29 } //1 Call miko(bcbdf, "p.d" & "oc")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}