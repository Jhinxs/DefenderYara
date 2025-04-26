
rule Trojan_O97M_EncDoc_RK_MTB{
	meta:
		description = "Trojan:O97M/EncDoc.RK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {3d 20 22 63 6d 22 20 2b 20 53 74 72 69 6e 67 28 31 2c 20 22 64 22 29 20 26 20 53 70 61 63 65 28 31 29 20 2b 20 22 2f 63 20 22 20 2b 20 22 22 } //1 = "cm" + String(1, "d") & Space(1) + "/c " + ""
		$a_01_1 = {3d 20 53 74 72 43 6f 6e 76 28 22 61 22 2c 20 76 62 55 70 70 65 72 43 61 73 65 29 20 2b 20 53 70 61 63 65 28 31 29 } //1 = StrConv("a", vbUpperCase) + Space(1)
		$a_01_2 = {3d 20 52 65 70 6c 61 63 65 28 22 73 22 2c 20 22 73 22 2c 20 22 6d 22 29 } //1 = Replace("s", "s", "m")
		$a_01_3 = {3d 20 53 70 6c 69 74 28 4c 53 74 72 69 6e 67 2c 20 22 2e 22 29 } //1 = Split(LString, ".")
		$a_01_4 = {3d 20 22 5c 65 64 66 61 33 61 73 64 68 22 20 26 20 4d 79 50 6f 73 20 26 20 53 74 72 69 6e 67 28 33 2c 20 22 71 22 29 } //1 = "\edfa3asdh" & MyPos & String(3, "q")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_O97M_EncDoc_RK_MTB_2{
	meta:
		description = "Trojan:O97M/EncDoc.RK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {73 74 61 72 74 20 2f 4d 49 4e 20 43 3a 5c 57 69 6e 64 6f 22 20 2b 20 22 77 73 5c 53 79 73 57 4f 57 36 34 5c 22 20 2b 20 63 61 6c 6c 31 20 2b 20 22 20 2d 77 69 6e 20 31 20 2d 65 6e 63 20 22 20 2b 20 65 6e 63 } //1 start /MIN C:\Windo" + "ws\SysWOW64\" + call1 + " -win 1 -enc " + enc
		$a_01_1 = {63 61 6c 6c 31 20 3d 20 22 57 69 6e 64 6f 77 73 50 6f 22 20 2b 20 22 77 65 72 53 68 65 6c 6c 5c 76 31 2e 30 5c 70 6f 77 22 20 2b 20 22 65 72 73 68 65 6c 6c 2e 65 78 65 22 } //1 call1 = "WindowsPo" + "werShell\v1.0\pow" + "ershell.exe"
		$a_01_2 = {36 41 45 45 41 55 41 42 51 41 45 51 41 51 51 42 55 41 45 45 41 58 41 41 6b 41 46 41 41 63 67 42 76 41 47 4d 41 54 67 42 68 41 47 30 41 5a 51 41 69 41 43 6b 41 } //1 6AEEAUABQAEQAQQBUAEEAXAAkAFAAcgBvAGMATgBhAG0AZQAiACkA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}