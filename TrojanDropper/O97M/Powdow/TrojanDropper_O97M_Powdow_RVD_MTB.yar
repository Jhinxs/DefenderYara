
rule TrojanDropper_O97M_Powdow_RVD_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow.RVD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //1 CreateObject("Scripting.FileSystemObject")
		$a_01_1 = {66 73 6f 2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 22 77 65 62 7a 6f 6f 6e 2e 6a 73 22 2c 20 54 72 75 65 29 } //1 fso.CreateTextFile("webzoon.js", True)
		$a_01_2 = {53 68 65 6c 6c 28 22 77 73 63 72 69 70 74 20 77 65 62 7a 6f 6f 6e 2e 6a 73 22 2c 20 76 62 4e 6f 72 6d 61 6c 46 6f 63 75 73 29 } //1 Shell("wscript webzoon.js", vbNormalFocus)
		$a_01_3 = {73 74 72 54 65 78 74 20 3d 20 55 73 65 72 46 6f 72 6d 31 2e 54 65 78 74 42 6f 78 31 2e 54 65 78 74 } //1 strText = UserForm1.TextBox1.Text
		$a_01_4 = {57 6f 72 6b 62 6f 6f 6b 5f 4f 70 65 6e 28 29 0d 0a 6c 6f 6f 6d 61 } //1 潗歲潢歯佟数⡮ഩ氊潯慭
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}