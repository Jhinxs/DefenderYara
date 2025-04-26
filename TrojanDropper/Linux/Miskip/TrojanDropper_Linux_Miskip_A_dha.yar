
rule TrojanDropper_Linux_Miskip_A_dha{
	meta:
		description = "TrojanDropper:Linux/Miskip.A!dha,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {43 68 65 63 6b 46 69 6c 65 20 3d 20 43 68 65 63 6b 46 69 6c 65 20 58 6f 72 20 4d 61 63 72 6f 73 41 72 72 61 79 28 49 29 } //1 CheckFile = CheckFile Xor MacrosArray(I)
		$a_00_1 = {53 74 61 72 74 4d 61 63 72 6f 73 20 3d 20 44 6f 63 53 69 7a 65 20 2d 20 28 4d 61 63 72 6f 73 53 69 7a 65 20 2b 20 34 29 } //1 StartMacros = DocSize - (MacrosSize + 4)
		$a_00_2 = {43 68 65 63 6b 56 61 6c 75 65 20 3d 20 43 68 65 63 6b 46 69 6c 65 28 4d 61 63 72 6f 73 41 72 72 61 79 28 29 2c 20 4d 61 63 72 6f 73 53 69 7a 65 29 } //1 CheckValue = CheckFile(MacrosArray(), MacrosSize)
		$a_00_3 = {46 69 6c 65 20 3d 20 46 6f 6c 64 65 72 20 26 20 22 5c 22 20 26 20 22 4d 53 57 6f 72 64 2e 65 78 65 22 } //1 File = Folder & "\" & "MSWord.exe"
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}