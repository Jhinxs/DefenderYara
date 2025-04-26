
rule TrojanDownloader_O97M_Powdow_BKT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.BKT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {73 68 65 65 65 20 3d 20 22 73 68 65 6c 22 } //1 sheee = "shel"
		$a_01_1 = {3d 20 22 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 68 69 6d 73 65 6c 66 64 65 73 70 69 74 65 2e 63 6d 22 20 26 20 43 68 72 28 43 4c 6e 67 28 39 37 2e 35 29 20 2b 20 43 4c 6e 67 28 31 2e 36 29 29 } //1 = "C:\Users\Public\Documents\himselfdespite.cm" & Chr(CLng(97.5) + CLng(1.6))
		$a_01_2 = {2d 77 20 68 69 20 73 6c 65 65 5e 70 20 2d 53 65 20 33 31 3b 53 74 61 5e 72 74 2d 42 69 74 73 54 72 61 6e 73 5e 66 65 72 20 2d 53 6f 75 72 63 65 20 68 74 74 } //1 -w hi slee^p -Se 31;Sta^rt-BitsTrans^fer -Source htt
		$a_01_3 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 73 68 65 65 65 20 26 20 22 6c 2e 61 70 70 6c 69 63 61 74 69 6f 6e 22 29 2e 4f 70 65 6e } //1 = CreateObject(sheee & "l.application").Open
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}