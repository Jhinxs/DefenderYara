
rule TrojanDownloader_O97M_Hubusi_A{
	meta:
		description = "TrojanDownloader:O97M/Hubusi.A,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {73 41 70 70 44 61 74 61 20 3d 20 45 6e 76 69 72 6f 6e 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 } //1 sAppData = Environ("USERPROFILE")
		$a_01_1 = {53 65 74 20 62 53 74 72 6d 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 41 64 6f 64 62 2e 53 74 72 65 61 6d 22 29 } //1 Set bStrm = CreateObject("Adodb.Stream")
		$a_01_2 = {78 48 74 74 70 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 69 63 72 6f 73 6f 66 74 2e 58 4d 4c 48 54 54 50 22 29 } //1 xHttp = CreateObject("Microsoft.XMLHTTP")
		$a_01_3 = {53 68 65 6c 6c 20 73 41 70 70 44 61 74 61 20 26 20 22 5c 46 46 46 64 2e 43 4f 4d } //1 Shell sAppData & "\FFFd.COM
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}