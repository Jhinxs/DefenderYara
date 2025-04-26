
rule Trojan_O97M_TrickbotCrypt_SI_MTB{
	meta:
		description = "Trojan:O97M/TrickbotCrypt.SI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {6f 70 65 6e 22 63 3a 5c [0-15] 5c [0-15] 2e 76 62 65 22 66 6f 72 6f 75 74 70 75 74 61 63 63 65 73 73 77 72 69 74 65 61 73 } //1
		$a_02_1 = {73 68 63 72 65 61 74 65 64 69 72 65 63 74 6f 72 79 65 78 30 2c [0-0f] 2c 62 79 76 61 6c 30 26 } //1
		$a_00_2 = {70 72 69 76 61 74 65 64 65 63 6c 61 72 65 70 74 72 73 61 66 65 66 75 6e 63 74 69 6f 6e 73 68 63 72 65 61 74 65 64 69 72 65 63 74 6f 72 79 65 78 6c 69 62 22 73 68 65 6c 6c 33 32 2e 64 6c 6c 22 61 6c 69 61 73 22 73 68 63 72 65 61 74 65 64 69 72 65 63 74 6f 72 79 65 78 61 } //1 privatedeclareptrsafefunctionshcreatedirectoryexlib"shell32.dll"alias"shcreatedirectoryexa
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}