
rule TrojanDownloader_O97M_Obfuse_RVAW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVAW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {47 65 74 4f 62 6a 65 63 74 28 52 61 6e 67 65 28 22 41 31 30 36 22 29 2e 56 61 6c 75 65 29 } //1 GetObject(Range("A106").Value)
		$a_01_1 = {4a 78 45 77 2e 4f 70 65 6e 28 76 30 64 66 20 2b 20 22 5c 53 61 6e 65 6b 2e 62 61 74 22 29 } //1 JxEw.Open(v0df + "\Sanek.bat")
		$a_01_2 = {4f 70 65 6e 20 4b 71 6c 4b 71 57 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 } //1 Open KqlKqW For Output As #1
		$a_01_3 = {52 61 6e 67 65 28 22 41 31 30 33 22 29 2e 56 61 6c 75 65 20 2b 20 22 20 2d 22 20 2b 20 52 61 6e 67 65 28 22 41 31 30 30 22 29 2e 56 61 6c 75 65 } //1 Range("A103").Value + " -" + Range("A100").Value
		$a_01_4 = {79 72 51 53 20 3d 20 45 6e 76 69 72 6f 6e 28 22 41 70 70 44 61 74 61 22 29 } //1 yrQS = Environ("AppData")
		$a_01_5 = {53 75 62 20 57 6f 72 6b 62 6f 6f 6b 5f 41 63 74 69 76 61 74 65 28 29 } //1 Sub Workbook_Activate()
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}