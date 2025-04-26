
rule TrojanDropper_O97M_Hancitor_IAC_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.IAC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {6e 6f 74 68 69 6e 67 73 20 3d 20 70 61 66 68 20 26 20 22 5c 22 20 26 20 22 57 30 22 20 26 20 22 72 64 2e 64 6c 6c 22 } //1 nothings = pafh & "\" & "W0" & "rd.dll"
		$a_01_1 = {2e 74 22 20 26 20 22 6d 22 20 26 20 22 70 22 20 41 73 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 74 61 72 74 75 70 50 61 74 68 20 26 20 22 5c 22 20 26 20 22 57 30 22 20 26 20 22 72 64 2e 64 6c 6c 22 } //1 .t" & "m" & "p" As ActiveDocument.Application.StartupPath & "\" & "W0" & "rd.dll"
		$a_01_2 = {26 20 6a 73 64 20 26 20 22 6c 6c 22 20 26 } //1 & jsd & "ll" &
		$a_01_3 = {6a 73 61 20 3d 20 72 65 70 69 64 } //1 jsa = repid
		$a_01_4 = {53 75 62 20 68 68 68 68 68 28 29 } //1 Sub hhhhh()
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}