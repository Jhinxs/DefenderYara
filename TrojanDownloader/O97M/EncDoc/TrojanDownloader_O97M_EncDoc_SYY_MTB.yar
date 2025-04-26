
rule TrojanDownloader_O97M_EncDoc_SYY_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SYY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 73 58 4d 6c 32 2e 78 4d 6c 68 54 54 70 22 29 } //1 = CreateObject("MsXMl2.xMlhTTp")
		$a_01_1 = {73 6f 6c 65 67 67 69 61 74 61 2e 4f 70 65 6e 20 22 67 65 74 22 2c 20 61 66 72 6f 61 6d 65 72 69 63 61 6e 61 2c 20 30 } //1 soleggiata.Open "get", afroamericana, 0
		$a_01_2 = {73 6f 6c 65 67 67 69 61 74 61 2e 73 65 74 52 65 71 75 65 73 74 48 65 61 64 65 72 20 70 72 6f 63 75 72 61 6e 6f 2c 20 22 66 65 74 63 68 22 } //1 soleggiata.setRequestHeader procurano, "fetch"
		$a_01_3 = {56 42 41 2e 53 68 65 6c 6c 20 73 63 61 74 65 6e 61 6e 6f 28 6d 69 6e 61 63 63 69 4f 29 20 26 20 4c 65 6e 28 6c 61 73 63 69 61 6e 65 45 29 20 26 20 22 20 2c 49 6e 65 74 43 70 6c 2e 43 70 6c 2c 20 43 6c 65 61 72 4d 79 54 72 61 63 6b 73 42 79 50 72 6f 63 65 73 73 20 31 31 22 2c 20 76 62 48 69 64 65 } //1 VBA.Shell scatenano(minacciO) & Len(lascianeE) & " ,InetCpl.Cpl, ClearMyTracksByProcess 11", vbHide
		$a_01_4 = {3d 20 45 6e 76 69 72 6f 6e 24 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 } //1 = Environ$("USERPROFILE")
		$a_01_5 = {3d 20 68 6f 52 6f 20 26 20 22 5c 44 6f 63 75 6d 65 6e 74 73 22 20 26 20 5f } //1 = hoRo & "\Documents" & _
		$a_01_6 = {4d 73 67 42 6f 78 20 28 4c 65 6e 28 66 65 6c 64 6d 61 72 65 73 63 69 61 6c 6c 6f 28 28 64 69 73 75 6d 61 6e 61 28 22 31 31 68 31 74 31 74 70 31 31 73 31 3a 31 2f 31 2f 31 73 6b 69 31 6e 79 64 31 72 31 65 73 31 73 2e 31 63 31 31 6f 6d 31 22 29 29 29 29 20 2d 20 34 30 36 20 2b 20 32 29 } //1 MsgBox (Len(feldmaresciallo((disumana("11h1t1tp11s1:1/1/1ski1nyd1r1es1s.1c11om1")))) - 406 + 2)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}