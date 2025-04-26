
rule TrojanDownloader_O97M_Powdow_BRTC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.BRTC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 52 69 30 47 50 68 28 48 77 54 65 56 44 38 61 66 20 41 73 20 53 74 72 69 6e 67 2c 20 48 77 54 65 56 44 38 61 66 32 20 41 73 20 53 74 72 69 6e 67 29 20 41 73 20 53 74 72 69 6e 67 } //1 Public Function Ri0GPh(HwTeVD8af As String, HwTeVD8af2 As String) As String
		$a_01_1 = {53 65 74 20 6c 30 46 71 7a 72 6d 7a 4a 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 48 77 54 65 56 44 38 61 66 32 29 } //1 Set l0FqzrmzJ = CreateObject(HwTeVD8af2)
		$a_01_2 = {52 69 30 47 50 68 20 3d 20 6c 30 46 71 7a 72 6d 7a 4a 2e 52 65 70 6c 61 63 65 28 44 71 71 6c 58 28 30 29 2c 20 22 22 29 } //1 Ri0GPh = l0FqzrmzJ.Replace(DqqlX(0), "")
		$a_01_3 = {52 69 30 47 50 68 20 3d 20 52 69 30 47 50 68 20 2b 20 43 68 72 28 41 73 63 28 4d 69 64 28 44 71 71 6c 58 2c 20 4c 65 6e 28 44 71 71 6c 58 29 20 2d 20 69 20 2b 20 31 2c 20 31 29 29 20 2d 20 32 29 } //1 Ri0GPh = Ri0GPh + Chr(Asc(Mid(DqqlX, Len(DqqlX) - i + 1, 1)) - 2)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}