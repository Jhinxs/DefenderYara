
rule TrojanDropper_O97M_GraceWire_CH_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.CH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {73 4f 66 62 6c 20 3d 20 6f 66 62 6c 20 2b 20 73 65 6e 64 69 6e 67 73 43 53 54 52 20 2b 20 22 2e 64 6c 6c 22 } //1 sOfbl = ofbl + sendingsCSTR + ".dll"
		$a_01_1 = {43 6f 6d 70 6f 73 69 74 69 6f 6e 20 64 65 72 73 68 6c 65 70 20 26 20 44 69 61 6c 6f 67 34 2e 4c 61 62 65 6c 31 2e 54 61 67 2c 20 73 4f 66 62 6c 2c 20 43 75 72 72 65 6e 74 53 69 7a 65 4f 66 41 54 2c 20 73 65 6e 64 69 6e 67 73 } //1 Composition dershlep & Dialog4.Label1.Tag, sOfbl, CurrentSizeOfAT, sendings
		$a_01_2 = {73 4f 66 62 6c 20 3d 20 22 22 22 22 20 2b 20 73 4f 66 62 6c } //1 sOfbl = """" + sOfbl
		$a_03_3 = {76 61 72 52 65 73 31 20 3d 20 45 78 65 63 75 74 65 45 78 63 65 6c 34 4d 61 63 72 6f 28 22 43 41 4c 4c 28 22 20 2b 20 73 4f 66 62 6c 20 2b 20 22 [0-10] 22 22 2c 22 22 4a 22 22 29 22 29 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}