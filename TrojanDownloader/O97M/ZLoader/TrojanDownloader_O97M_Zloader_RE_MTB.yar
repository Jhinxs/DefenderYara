
rule TrojanDownloader_O97M_Zloader_RE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Zloader.RE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {52 65 70 6c 61 63 65 28 52 75 73 73 69 61 6e 2c 20 76 61 6c 2c 20 6c 65 74 74 65 72 29 } //1 Replace(Russian, val, letter)
		$a_01_1 = {53 74 72 69 6e 67 28 32 2c 20 22 2f 22 29 } //1 String(2, "/")
		$a_01_2 = {31 32 33 30 39 34 38 25 31 32 33 30 39 34 38 40 6a 2e } //1 1230948%1230948@j.
		$a_01_3 = {22 6d 70 2f 22 20 2b 20 22 34 6b 6e 73 6b 6e 66 6b 32 39 77 68 68 22 } //1 "mp/" + "4knsknfk29whh"
		$a_01_4 = {53 74 72 69 6e 67 28 31 2c 20 22 68 22 29 20 2b 20 53 74 72 69 6e 67 28 32 2c 20 22 74 22 29 } //1 String(1, "h") + String(2, "t")
		$a_01_5 = {53 68 65 6c 6c 20 28 66 69 72 65 29 } //1 Shell (fire)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}