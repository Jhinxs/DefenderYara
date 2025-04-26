
rule TrojanDownloader_O97M_Daoyap_B{
	meta:
		description = "TrojanDownloader:O97M/Daoyap.B,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 63 75 70 65 72 4d 61 6e 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 41 64 6f 64 62 22 20 2b 20 72 69 62 61 6b 20 2b 20 22 2e 53 74 72 65 61 6d 22 29 } //1 Set cuperMan = CreateObject("Adodb" + ribak + ".Stream")
		$a_01_1 = {74 65 6d 70 46 6f 6c 64 65 72 20 3d 20 70 72 6f 63 65 73 73 45 6e 76 28 22 54 45 22 20 2b 20 22 4d 22 20 26 20 22 50 22 29 } //1 tempFolder = processEnv("TE" + "M" & "P")
		$a_01_2 = {73 75 62 6c 6f 63 61 42 41 44 4f 58 2e 4f 70 65 6e 20 22 47 22 20 2b 20 22 45 54 22 2c 20 52 65 64 69 73 74 72 69 62 75 74 65 28 68 61 6e 64 6c 65 2c 20 } //1 sublocaBADOX.Open "G" + "ET", Redistribute(handle, 
		$a_01_3 = {63 75 70 65 72 4d 61 6e 2e 73 61 76 65 74 6f 66 69 6c 65 20 74 61 62 69 6e 64 65 78 4c 4f 47 2c 20 32 } //1 cuperMan.savetofile tabindexLOG, 2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_Daoyap_B_2{
	meta:
		description = "TrojanDownloader:O97M/Daoyap.B,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 57 69 6e 48 74 74 70 52 65 71 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 4d 69 63 72 6f 73 6f 66 74 2e 58 4d 4c 48 54 54 50 29 20 57 69 6e 48 74 74 70 52 65 71 2e 4f 70 65 6e } //1 Set WinHttpReq = CreateObject(Microsoft.XMLHTTP) WinHttpReq.Open
		$a_01_1 = {57 69 6e 48 74 74 70 52 65 71 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 69 63 72 6f 73 6f 66 74 2e 58 4d 4c 48 54 54 50 22 29 3a 20 57 69 6e 48 74 74 70 52 65 71 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 6d 79 55 52 4c 2c 20 46 61 6c 73 65 } //1 WinHttpReq = CreateObject("Microsoft.XMLHTTP"): WinHttpReq.Open "GET", myURL, False
		$a_01_2 = {6f 53 74 72 65 61 6d 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 41 44 4f 44 42 2e 53 74 72 65 61 6d 22 29 } //1 oStream = CreateObject("ADODB.Stream")
		$a_01_3 = {6f 53 74 72 65 61 6d 2e 53 61 76 65 54 6f 46 69 6c 65 20 28 22 43 3a 5c 53 79 73 74 65 6d 73 5c 77 69 6e 64 6f 77 73 2e 65 78 65 22 29 } //1 oStream.SaveToFile ("C:\Systems\windows.exe")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}