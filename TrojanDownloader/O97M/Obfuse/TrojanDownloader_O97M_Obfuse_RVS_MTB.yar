
rule TrojanDownloader_O97M_Obfuse_RVS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 69 6e 45 78 65 63 20 55 43 61 73 65 28 22 63 6d 64 20 2f 63 20 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 61 64 76 73 2e 22 29 } //1 WinExec UCase("cmd /c c:\programdata\advs.")
		$a_01_1 = {53 74 72 69 6e 67 28 31 2c 20 22 63 22 29 20 2b 20 53 74 72 69 6e 67 28 31 2c 20 22 4d 22 29 20 2b 20 53 74 72 69 6e 67 28 31 2c 20 22 64 22 29 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 } //1 String(1, "c") + String(1, "M") + String(1, "d") For Output As #1
		$a_01_2 = {50 72 69 6e 74 20 23 31 2c 20 76 62 43 72 4c 66 20 2b 20 41 6e 69 6d 61 74 65 64 2e 49 6e 76 61 64 65 72 73 2e 43 61 70 74 69 6f 6e 20 2b 20 76 62 43 72 4c 66 20 2b 20 43 53 74 72 28 43 44 61 74 65 28 22 31 31 2f 30 31 2f 31 39 39 38 22 29 29 } //1 Print #1, vbCrLf + Animated.Invaders.Caption + vbCrLf + CStr(CDate("11/01/1998"))
		$a_01_3 = {54 65 78 74 42 6f 78 31 2e 54 65 78 74 20 26 20 22 20 20 22 20 26 20 43 68 72 57 28 69 29 } //1 TextBox1.Text & "  " & ChrW(i)
		$a_01_4 = {7a 6f 65 61 6f 49 30 70 61 6d 4f 49 68 6a 20 3d 20 49 6e 53 74 72 28 54 52 41 46 61 46 53 4c 37 33 2c 20 22 67 65 22 2c 20 5f } //1 zoeaoI0pamOIhj = InStr(TRAFaFSL73, "ge", _
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}