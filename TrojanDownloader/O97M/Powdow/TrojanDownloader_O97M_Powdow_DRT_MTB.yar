
rule TrojanDownloader_O97M_Powdow_DRT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.DRT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2e 65 78 65 63 28 70 73 6f 77 65 72 73 73 20 26 20 22 68 65 6c 6c 20 2d 77 20 48 69 64 64 65 6e 20 49 6e 76 6f 6b 65 2d 57 65 62 52 65 71 75 65 73 74 20 2d 55 72 69 } //1 .exec(psowerss & "hell -w Hidden Invoke-WebRequest -Uri
		$a_03_1 = {55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 69 73 73 75 65 70 6f 6c 69 74 69 63 61 6c 2e 65 78 90 0a 2b 00 43 3a 5c } //1
		$a_01_2 = {72 65 63 65 6e 74 6c 79 61 6e 61 6c 79 73 69 73 2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 22 20 26 20 73 68 65 20 26 20 22 6c 22 29 } //1 recentlyanalysis.CreateObject("wscript." & she & "l")
		$a_03_3 = {69 6b 6c 61 6e 67 72 61 74 69 73 73 75 72 61 62 61 79 61 2e 73 6b 6f 6d 2e 69 64 2f 7a 78 2f 46 73 62 65 79 2e 65 78 22 20 26 20 43 68 72 28 31 30 31 29 90 0a 3a 00 68 74 74 70 3a 2f 2f } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}