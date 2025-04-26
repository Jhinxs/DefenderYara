
rule TrojanDownloader_O97M_Qakbot_ALT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.ALT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 4e 6f 6c 61 6e 20 3d 20 45 78 63 65 6c 34 49 6e 74 6c 4d 61 63 72 6f 53 68 65 65 74 73 } //1 Set Nolan = Excel4IntlMacroSheets
		$a_01_1 = {53 68 65 65 74 73 28 22 41 75 74 6f 44 72 6f 6d 22 29 2e 52 61 6e 67 65 28 22 48 32 34 22 29 20 3d 20 22 68 74 74 70 3a 2f 2f 31 39 30 2e 31 34 2e 33 37 2e 32 35 33 } //1 Sheets("AutoDrom").Range("H24") = "http://190.14.37.253
		$a_01_2 = {53 68 65 65 74 73 28 22 41 75 74 6f 44 72 6f 6d 22 29 2e 52 61 6e 67 65 28 22 48 32 35 22 29 20 3d 20 22 68 74 74 70 3a 2f 2f 39 34 2e 31 34 30 2e 31 31 32 2e 31 37 32 } //1 Sheets("AutoDrom").Range("H25") = "http://94.140.112.172
		$a_01_3 = {53 68 65 65 74 73 28 22 41 75 74 6f 44 72 6f 6d 22 29 2e 52 61 6e 67 65 28 22 48 32 36 22 29 20 3d 20 22 68 74 74 70 3a 2f 2f 39 31 2e 32 34 32 2e 32 32 39 2e 32 32 39 } //1 Sheets("AutoDrom").Range("H26") = "http://91.242.229.229
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}