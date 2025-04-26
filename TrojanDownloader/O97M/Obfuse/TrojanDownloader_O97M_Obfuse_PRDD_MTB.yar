
rule TrojanDownloader_O97M_Obfuse_PRDD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PRDD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 68 65 6c 6c 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //1 = CreateObject("Shell.Application")
		$a_01_1 = {3d 20 45 6e 76 69 72 6f 6e 28 22 74 65 6d 70 22 29 20 26 20 22 5c 73 72 76 63 72 6d 22 20 26 20 22 2e 22 20 26 20 22 65 78 22 20 26 20 22 65 22 } //1 = Environ("temp") & "\srvcrm" & "." & "ex" & "e"
		$a_01_2 = {62 69 6e 61 72 79 53 74 72 65 61 6d 2e 4f 70 65 6e } //1 binaryStream.Open
		$a_01_3 = {62 69 6e 61 72 79 53 74 72 65 61 6d 2e 53 61 76 65 54 6f 46 69 6c 65 } //1 binaryStream.SaveToFile
		$a_01_4 = {2e 63 72 65 61 74 65 45 6c 65 6d 65 6e 74 28 22 74 6d 70 22 29 } //1 .createElement("tmp")
		$a_01_5 = {3d 20 22 62 69 6e 2e 62 61 73 65 36 34 22 } //1 = "bin.base64"
		$a_01_6 = {53 68 65 6c 6c 31 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 66 70 } //1 Shell1.ShellExecute fp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule TrojanDownloader_O97M_Obfuse_PRDD_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PRDD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 6f 62 6a 53 68 65 6c 6c 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 } //1 Set objShell = CreateObject(AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
		$a_01_1 = {6f 62 6a 53 68 65 6c 6c 2e 52 75 6e 20 28 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 29 } //1 objShell.Run (AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA)
		$a_01_2 = {53 65 74 20 6f 62 6a 53 68 65 6c 6c 20 3d 20 4e 6f 74 68 69 6e 67 } //1 Set objShell = Nothing
		$a_01_3 = {3d 20 45 6e 76 69 72 6f 6e 28 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 2e 45 6d 61 69 6c 53 75 62 6a 65 63 74 29 } //1 = Environ(AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA.EmailSubject)
		$a_01_4 = {53 74 72 43 6f 6d 70 28 22 52 39 38 32 68 64 30 32 33 75 66 64 68 32 39 6b 22 2c } //1 StrComp("R982hd023ufdh29k",
		$a_01_5 = {3d 20 43 42 79 74 65 28 22 26 48 22 20 26 20 4d 69 64 28 41 41 41 41 41 41 41 41 41 41 41 41 41 41 2c 20 35 2c 20 32 29 29 } //1 = CByte("&H" & Mid(AAAAAAAAAAAAAA, 5, 2))
		$a_01_6 = {3d 20 53 74 72 69 6e 67 28 36 20 2d 20 4c 65 6e 28 41 41 41 41 41 41 41 41 41 41 41 41 41 41 29 2c 20 22 30 22 29 20 26 20 41 41 41 41 41 41 41 41 41 41 41 41 41 41 } //1 = String(6 - Len(AAAAAAAAAAAAAA), "0") & AAAAAAAAAAAAAA
		$a_01_7 = {73 75 62 53 61 76 65 42 69 6e 61 72 79 44 61 74 61 20 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 2c 20 62 62 79 74 65 73 } //1 subSaveBinaryData AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA, bbytes
		$a_01_8 = {73 75 62 52 75 6e 20 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 } //1 subRun AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}