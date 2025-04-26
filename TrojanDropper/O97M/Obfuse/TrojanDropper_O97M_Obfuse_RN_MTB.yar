
rule TrojanDropper_O97M_Obfuse_RN_MTB{
	meta:
		description = "TrojanDropper:O97M/Obfuse.RN!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {3d 20 45 6e 76 69 72 6f 6e 28 22 41 4c 4c 55 53 45 52 53 50 52 4f 46 49 4c 45 22 29 20 26 20 22 5c 22 20 26 20 52 6e 64 20 26 20 22 2e 6a 73 22 } //1 = Environ("ALLUSERSPROFILE") & "\" & Rnd & ".js"
		$a_01_1 = {2e 43 72 65 61 74 65 28 22 77 73 63 72 69 70 74 2e 65 78 65 20 22 20 26 20 70 2c 20 4e 75 6c 6c 2c 20 4e 75 6c 6c 2c 20 69 6e 74 50 72 6f 63 65 73 73 49 44 29 } //1 .Create("wscript.exe " & p, Null, Null, intProcessID)
		$a_01_2 = {53 65 74 20 6f 62 6a 57 4d 49 53 65 72 76 69 63 65 20 3d 20 47 65 74 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 5c 5c 2e 5c 72 6f 6f 74 5c 63 69 6d 76 32 3a 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 29 } //1 Set objWMIService = GetObject("winmgmts:\\.\root\cimv2:Win32_Process")
		$a_01_3 = {50 72 69 6e 74 20 23 31 2c } //1 Print #1,
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}