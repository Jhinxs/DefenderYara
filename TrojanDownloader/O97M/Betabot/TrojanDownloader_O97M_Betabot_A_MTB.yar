
rule TrojanDownloader_O97M_Betabot_A_MTB{
	meta:
		description = "TrojanDownloader:O97M/Betabot.A!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {3d 20 43 68 72 28 35 30 29 20 2b 20 43 68 72 28 34 38 29 20 2b 20 43 68 72 28 34 38 29 } //1 = Chr(50) + Chr(48) + Chr(48)
		$a_01_1 = {2e 4f 70 65 6e 20 22 67 65 74 22 2c 20 43 6c 65 61 6e 45 6e 63 72 79 70 74 53 54 52 28 22 6c 7a 50 4e 3a 2f 2f 6f 69 73 65 79 65 39 79 34 6f 77 79 73 2e 76 77 } //1 .Open "get", CleanEncryptSTR("lzPN://oiseye9y4owys.vw
		$a_01_2 = {2e 53 74 61 74 75 73 20 3d 20 32 30 30 20 54 68 65 6e } //1 .Status = 200 Then
		$a_01_3 = {2e 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 73 28 22 54 65 6d 70 6c 61 74 65 73 22 29 } //1 .SpecialFolders("Templates")
		$a_01_4 = {54 68 69 73 41 53 43 20 3d 20 49 6e 74 46 72 6f 6d 41 72 72 61 79 28 41 73 63 28 4d 69 64 28 4d 79 53 74 72 69 6e 67 2c 20 69 2c 20 31 29 29 2c } //1 ThisASC = IntFromArray(Asc(Mid(MyString, i, 1)),
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}