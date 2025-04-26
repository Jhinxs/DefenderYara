
rule TrojanDropper_O97M_Donoff_D{
	meta:
		description = "TrojanDropper:O97M/Donoff.D,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 74 61 72 74 75 70 50 61 74 68 20 26 20 22 5c 22 20 26 20 22 70 61 6e 64 61 2e 22 20 26 20 43 68 72 28 39 39 20 2b 20 37 29 20 26 20 43 68 72 28 39 39 20 2b 20 31 36 29 20 26 20 22 22 20 26 20 22 65 22 } //1 Application.StartupPath & "\" & "panda." & Chr(99 + 7) & Chr(99 + 16) & "" & "e"
		$a_00_1 = {53 65 74 20 75 70 20 65 78 63 6c 75 64 65 64 20 77 6f 72 64 73 } //1 Set up excluded words
		$a_02_2 = {52 69 67 68 74 28 22 [0-15] 22 2c 20 37 29 20 26 20 22 2e 22 20 26 20 4c 65 66 74 28 22 [0-15] 22 2c 20 35 29 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}