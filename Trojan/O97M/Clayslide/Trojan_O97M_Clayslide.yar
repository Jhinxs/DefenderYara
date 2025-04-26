
rule Trojan_O97M_Clayslide{
	meta:
		description = "Trojan:O97M/Clayslide,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 4c 69 62 72 61 72 69 65 73 5c 66 69 72 65 65 79 65 2e 76 62 73 } //1 \Libraries\fireeye.vbs
		$a_01_1 = {5c 4c 69 62 72 61 72 69 65 73 5c 75 70 } //1 \Libraries\up
		$a_01_2 = {5c 4c 69 62 72 61 72 69 65 73 5c 64 6e } //1 \Libraries\dn
		$a_01_3 = {5c 4c 69 62 72 61 72 69 65 73 5c 74 70 } //1 \Libraries\tp
		$a_01_4 = {53 65 74 20 46 69 72 65 65 79 65 56 62 73 20 3d 20 41 63 74 69 76 65 57 6f 72 6b 62 6f 6f 6b 2e 57 6f 72 6b 73 68 65 65 74 73 28 22 49 6e 63 6f 6d 70 61 74 69 62 6c 65 22 29 2e 43 65 6c 6c 73 28 31 2c 20 32 35 29 } //1 Set FireeyeVbs = ActiveWorkbook.Worksheets("Incompatible").Cells(1, 25)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=2
 
}