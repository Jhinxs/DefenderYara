
rule TrojanDownloader_O97M_Gozi_ANNT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Gozi.ANNT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {56 42 41 2e 53 74 72 52 65 76 65 72 73 65 28 22 61 74 68 2e [0-25] 5c 61 74 61 64 6d 61 72 67 6f 72 70 5c 3a 63 20 72 65 72 6f 6c 70 78 65 5c 73 77 6f 64 6e 69 77 } //1
		$a_01_1 = {50 75 62 6c 69 63 20 53 75 62 20 62 75 74 74 6f 6e 31 5f 43 6c 69 63 6b 28 29 } //1 Public Sub button1_Click()
		$a_01_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 } //1 = CreateObject("wscript.shell")
		$a_03_3 = {2e 65 78 65 63 20 70 28 72 6d 29 90 0c 02 00 45 6e 64 20 53 75 62 } //1
		$a_01_4 = {3d 20 53 70 6c 69 74 28 70 28 66 72 6d 2e 72 6d 29 2c 20 22 20 22 29 } //1 = Split(p(frm.rm), " ")
		$a_01_5 = {66 72 6d 2e 62 75 74 74 6f 6e 31 5f 43 6c 69 63 6b } //1 frm.button1_Click
		$a_01_6 = {3c 68 74 6d 6c 3e 3c 62 6f 64 79 3e 3c 64 69 76 20 69 64 3d 27 63 6f 6e 74 65 6e 74 27 3e 66 54 74 6c } //1 <html><body><div id='content'>fTtl
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}