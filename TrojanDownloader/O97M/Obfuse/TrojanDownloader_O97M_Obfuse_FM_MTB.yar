
rule TrojanDownloader_O97M_Obfuse_FM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.FM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_00_0 = {70 61 6c 69 6d 65 72 6e 68 2e 45 78 65 63 20 22 65 78 70 6c 6f 72 65 72 20 63 3a 5c 74 61 62 6b 65 79 5c 70 6b 6d 67 73 64 67 72 61 2e 76 62 65 } //1 palimernh.Exec "explorer c:\tabkey\pkmgsdgra.vbe
		$a_00_1 = {43 72 65 61 74 65 46 6f 6c 64 65 72 20 28 22 63 3a 5c 74 61 62 6b 65 79 5c 70 61 73 6f 64 73 6a 67 22 } //1 CreateFolder ("c:\tabkey\pasodsjg"
		$a_00_2 = {56 61 6c 69 64 43 68 61 72 28 41 73 63 28 55 53 42 47 62 57 54 4d 38 34 29 } //1 ValidChar(Asc(USBGbWTM84)
		$a_00_3 = {52 65 70 6c 61 63 65 28 49 68 71 73 44 35 5a 79 42 64 6c 49 53 46 2c 20 22 2e 22 2c 20 71 44 7a 4e 37 70 79 7a 4c 64 29 } //1 Replace(IhqsD5ZyBdlISF, ".", qDzN7pyzLd)
		$a_00_4 = {74 78 74 46 6c 65 78 2e 53 65 6c 53 74 61 72 74 20 3d 20 4d 75 52 31 4f 71 6b 6c 20 2d 20 31 } //1 txtFlex.SelStart = MuR1Oqkl - 1
		$a_00_5 = {53 65 74 20 70 61 6c 69 6d 65 72 6e 68 20 3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c } //1 Set palimernh = New WshShell
		$a_00_6 = {65 66 70 6f 64 61 6b 73 64 64 6e 2e 57 72 69 74 65 4c 69 6e 65 20 28 70 61 65 72 6e 2e 61 6c 6f 69 65 29 } //1 efpodaksddn.WriteLine (paern.aloie)
		$a_00_7 = {65 66 70 6f 64 61 6b 73 64 64 6e 2e 43 6c 6f 73 65 } //1 efpodaksddn.Close
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=8
 
}