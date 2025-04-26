
rule Ransom_Win32_Sentpera_A_{
	meta:
		description = "Ransom:Win32/Sentpera.A!!Sentpera.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,6e 00 6e 00 0b 00 00 "
		
	strings :
		$a_00_0 = {65 6e 63 72 79 70 74 69 6f 6e 73 6f 66 74 77 61 72 65 2e 65 78 65 } //10 encryptionsoftware.exe
		$a_00_1 = {52 53 41 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //10 RSACryptoServiceProvider
		$a_00_2 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //10 RijndaelManaged
		$a_00_3 = {65 6e 63 72 79 70 74 69 6f 6e 73 6f 66 74 77 61 72 65 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //10 encryptionsoftware.Resources.resources
		$a_00_4 = {67 65 74 5f 54 6f 74 61 6c 50 68 79 73 69 63 61 6c 4d 65 6d 6f 72 79 } //10 get_TotalPhysicalMemory
		$a_00_5 = {67 65 74 5f 55 73 65 72 4e 61 6d 65 } //10 get_UserName
		$a_00_6 = {67 65 74 5f 46 69 6c 65 53 79 73 74 65 6d } //10 get_FileSystem
		$a_00_7 = {67 65 74 5f 53 70 65 63 69 61 6c 44 69 72 65 63 74 6f 72 69 65 73 } //10 get_SpecialDirectories
		$a_00_8 = {67 65 74 5f 4d 79 44 6f 63 75 6d 65 6e 74 73 } //10 get_MyDocuments
		$a_00_9 = {67 65 74 5f 4d 79 50 69 63 74 75 72 65 73 } //10 get_MyPictures
		$a_00_10 = {67 65 74 5f 44 65 73 6b 74 6f 70 } //10 get_Desktop
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_00_7  & 1)*10+(#a_00_8  & 1)*10+(#a_00_9  & 1)*10+(#a_00_10  & 1)*10) >=110
 
}