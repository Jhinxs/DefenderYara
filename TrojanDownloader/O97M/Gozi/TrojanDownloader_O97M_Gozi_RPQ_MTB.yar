
rule TrojanDownloader_O97M_Gozi_RPQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Gozi.RPQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 4e 61 6d 65 20 3d 20 22 51 75 65 73 74 61 5f 63 61 72 74 65 6c 6c 61 5f 64 69 5f 6c 61 76 6f 72 6f 22 } //1 Attribute VB_Name = "Questa_cartella_di_lavoro"
		$a_01_1 = {75 75 20 3d 20 33 20 2a 20 79 65 70 3a 20 79 20 3d 20 28 28 28 28 28 28 28 28 28 28 52 75 6e 28 28 28 28 28 28 28 28 28 28 22 4d 22 20 26 20 22 34 22 20 26 20 22 22 29 29 29 29 29 29 29 29 29 29 29 29 29 29 29 29 29 29 29 29 } //1 uu = 3 * yep: y = ((((((((((Run(((((((((("M" & "4" & ""))))))))))))))))))))
		$a_01_2 = {61 6e 6e 64 79 20 3d 20 4c 6f 77 65 20 26 20 22 52 4e 22 } //1 anndy = Lowe & "RN"
		$a_01_3 = {62 6f 6c 6c 65 61 61 6e 20 3d 20 53 70 6c 69 74 28 66 69 6e 65 73 73 74 72 61 2c 20 22 2c 22 29 } //1 bolleaan = Split(finesstra, ",")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}