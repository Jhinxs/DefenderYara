
rule TrojanDropper_O97M_BlueWushu_A{
	meta:
		description = "TrojanDropper:O97M/BlueWushu.A,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {74 65 6d 70 66 69 6c 65 6e 61 6d 65 20 3d 20 45 6e 76 69 72 6f 6e 28 22 74 65 6d 70 22 29 20 26 20 22 5c 73 68 61 72 65 2e 65 78 65 22 } //1 tempfilename = Environ("temp") & "\share.exe"
		$a_01_1 = {77 72 69 74 65 62 79 74 65 73 20 66 2c 20 22 34 64 20 35 61 20 39 30 } //1 writebytes f, "4d 5a 90
		$a_01_2 = {53 68 65 6c 6c 20 45 6e 76 69 72 6f 6e 28 22 74 65 6d 70 22 29 20 26 20 22 5c 73 68 61 72 65 2e 65 78 65 22 } //1 Shell Environ("temp") & "\share.exe"
		$a_01_3 = {50 75 62 6c 69 63 20 53 75 62 20 77 72 69 74 65 62 79 74 65 73 28 66 69 6c 65 2c 20 62 79 74 65 73 29 } //1 Public Sub writebytes(file, bytes)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}