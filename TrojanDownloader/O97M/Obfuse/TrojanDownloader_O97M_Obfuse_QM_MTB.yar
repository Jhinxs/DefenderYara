
rule TrojanDownloader_O97M_Obfuse_QM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.QM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {6c 69 62 73 74 72 6f 72 65 20 3d 20 6c 69 62 73 74 72 6f 72 65 20 2b 20 30 2e 31 31 31 30 37 36 35 39 37 38 20 2a 20 54 61 6e 28 33 2e 39 36 32 30 35 30 39 30 31 39 34 20 2b 20 32 31 33 2e 32 39 39 30 39 35 34 33 38 20 2a 20 54 29 } //1 libstrore = libstrore + 0.1110765978 * Tan(3.96205090194 + 213.299095438 * T)
		$a_01_1 = {53 65 74 74 69 6e 67 41 74 74 72 2e 57 72 69 74 65 4c 69 6e 65 20 28 22 73 74 61 72 74 20 63 3a 5c 52 65 73 6f 75 72 63 65 73 5c 52 45 44 63 6c 69 66 2e 65 78 65 22 29 } //1 SettingAttr.WriteLine ("start c:\Resources\REDclif.exe")
		$a_01_2 = {28 6d 79 55 73 65 72 46 6f 72 6d 31 2e 50 68 6f 6e 65 32 2e 43 61 70 74 69 6f 6e 29 } //1 (myUserForm1.Phone2.Caption)
		$a_01_3 = {3d 20 4c 20 26 20 22 7c 22 20 26 20 42 20 26 20 22 7c 22 20 26 20 52 } //1 = L & "|" & B & "|" & R
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}