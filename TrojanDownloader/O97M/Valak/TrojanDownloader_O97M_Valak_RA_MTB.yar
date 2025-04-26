
rule TrojanDownloader_O97M_Valak_RA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Valak.RA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {56 42 5f 4e 61 6d 65 20 3d 20 22 72 54 22 } //1 VB_Name = "rT"
		$a_01_1 = {22 72 65 67 73 76 72 22 20 26 20 33 32 20 26 20 22 20 22 } //1 "regsvr" & 32 & " "
		$a_01_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_03_3 = {44 69 6d 20 ?? ?? 20 41 73 20 4e 65 77 20 57 73 68 53 68 65 6c 6c 0d 0a 90 1b 00 2e 65 78 65 63 20 6b 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_Valak_RA_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Valak.RA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //2 Sub AutoOpen()
		$a_01_1 = {3d 20 45 6e 76 69 72 6f 6e 28 22 74 6d 70 22 29 20 26 20 22 5c 69 6e 64 65 78 2e 6a 70 67 } //1 = Environ("tmp") & "\index.jpg
		$a_01_2 = {45 6e 76 69 72 6f 6e 28 22 74 6d 70 22 29 20 26 20 22 5c 31 2e 6a 70 67 } //1 Environ("tmp") & "\1.jpg
		$a_01_3 = {28 22 72 31 34 65 61 36 67 32 35 73 64 35 76 63 38 72 66 36 33 30 61 32 64 65 22 29 } //1 ("r14ea6g25sd5vc8rf630a2de")
		$a_03_4 = {43 61 6c 6c 20 [0-0a] 2e 65 78 65 63 28 [0-0a] 20 26 20 22 20 22 20 26 20 [0-0a] 29 } //2
		$a_03_5 = {43 61 6c 6c 20 [0-0a] 2e 4f 70 65 6e 28 22 47 45 54 22 2c 20 [0-0a] 2c 20 46 61 6c 73 65 29 } //2
		$a_01_6 = {72 64 30 65 31 65 67 66 39 73 39 62 76 33 31 72 63 37 33 38 62 32 30 32 } //1 rd0e1egf9s9bv31rc738b202
		$a_03_7 = {45 6e 76 69 72 6f 6e 28 22 74 6d 70 22 29 20 26 20 22 5c [0-0a] 2e 6a 70 67 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*2+(#a_03_5  & 1)*2+(#a_01_6  & 1)*1+(#a_03_7  & 1)*1) >=8
 
}