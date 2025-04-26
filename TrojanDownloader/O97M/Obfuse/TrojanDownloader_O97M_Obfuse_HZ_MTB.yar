
rule TrojanDownloader_O97M_Obfuse_HZ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.HZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {43 61 6c 6c 42 79 4e 61 6d 65 20 4f 62 6a 65 63 74 50 65 70 33 2c 20 22 52 75 6e 22 2c 20 56 62 4d 65 74 68 6f 64 2c 20 46 6f 72 6d 32 2e 4c 61 62 65 6c 31 2e 54 61 67 20 2b 20 22 20 22 20 26 20 46 6f 72 6d 32 2e 54 61 67 20 2b 20 22 20 22 2c 20 30 2c 20 46 61 6c 73 65 } //1 CallByName ObjectPep3, "Run", VbMethod, Form2.Label1.Tag + " " & Form2.Tag + " ", 0, False
		$a_01_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 46 6f 72 6d 32 2e 4c 61 62 65 6c 32 2e 54 61 67 29 } //1 = CreateObject(Form2.Label2.Tag)
		$a_01_2 = {43 61 6c 6c 42 79 4e 61 6d 65 20 55 73 65 72 46 6f 72 6d 31 2c 20 22 53 68 6f 77 22 2c 20 56 62 4d 65 74 68 6f 64 } //1 CallByName UserForm1, "Show", VbMethod
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Obfuse_HZ_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.HZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 0a 00 00 "
		
	strings :
		$a_01_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_03_1 = {68 74 74 70 3a 2f 2f 64 75 6c 65 61 6c 2e 63 6f 6d 2f [0-19] 2f [0-06] 2e 65 78 65 } //1
		$a_03_2 = {68 74 74 70 3a 2f 2f 66 69 6b 69 6d 61 2e 63 6f 6d 2f [0-06] 2e 65 78 65 } //1
		$a_03_3 = {68 74 74 70 3a 2f 2f 64 6a 61 63 65 6c 2e 63 6f 6d 2f [0-06] 2e 65 78 65 } //1
		$a_03_4 = {68 74 74 70 3a 2f 2f 62 65 6c 6c 71 75 65 2e 63 6f 6d 2f [0-06] 2e 65 78 65 } //1
		$a_03_5 = {68 74 74 70 3a 2f 2f 65 72 73 69 6d 70 2e 63 6f 6d 2f [0-06] 2e 65 78 65 } //1
		$a_03_6 = {68 74 74 70 3a 2f 2f 61 72 63 6f 71 61 2e 63 6f 6d 2f [0-06] 2e 65 78 65 } //1
		$a_03_7 = {68 74 74 70 3a 2f 2f 74 79 70 72 65 72 2e 63 6f 6d 2f [0-06] 2e 65 78 65 } //1
		$a_03_8 = {68 74 74 70 73 3a 2f 2f 74 6f 75 6c 6f 75 73 61 2e 63 6f 6d 2f [0-14] 2e 70 68 70 } //1
		$a_03_9 = {68 74 74 70 73 3a 2f 2f 74 6f 75 6c 6f 75 73 61 2e 63 6f 6d 2f [0-14] 2e 65 78 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1) >=2
 
}