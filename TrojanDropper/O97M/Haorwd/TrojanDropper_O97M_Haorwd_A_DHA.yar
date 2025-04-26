
rule TrojanDropper_O97M_Haorwd_A_DHA{
	meta:
		description = "TrojanDropper:O97M/Haorwd.A!DHA,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {43 68 44 69 72 20 45 6e 76 69 72 6f 6e 28 22 54 22 20 26 20 22 65 22 20 26 20 22 6d 22 20 26 20 22 70 22 29 } //1 ChDir Environ("T" & "e" & "m" & "p")
		$a_00_1 = {3d 20 53 74 72 43 6f 6e 76 28 44 65 63 6f 64 65 42 61 73 65 36 34 } //1 = StrConv(DecodeBase64
		$a_00_2 = {4f 70 65 6e 20 45 6e 76 69 72 6f 6e 28 22 54 22 20 26 20 22 65 22 20 26 20 22 6d 22 20 26 20 22 70 22 29 20 26 20 22 5c 31 2e 68 74 61 22 } //1 Open Environ("T" & "e" & "m" & "p") & "\1.hta"
		$a_00_3 = {2e 70 69 66 22 } //1 .pif"
		$a_00_4 = {53 68 65 6c 6c 20 45 6e 76 69 72 6f 6e 28 53 74 72 43 6f 6e 76 28 44 65 63 6f 64 65 42 61 73 65 36 34 28 6c 61 61 78 29 2c 20 76 62 55 6e 69 63 6f 64 65 29 29 20 26 20 53 74 72 43 6f 6e 76 28 44 65 63 6f 64 65 42 61 73 65 36 34 28 22 58 44 59 75 5a 58 68 6c 22 29 2c 20 76 62 55 6e 69 63 6f 64 65 29 2c 20 76 62 48 69 64 65 } //1 Shell Environ(StrConv(DecodeBase64(laax), vbUnicode)) & StrConv(DecodeBase64("XDYuZXhl"), vbUnicode), vbHide
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}