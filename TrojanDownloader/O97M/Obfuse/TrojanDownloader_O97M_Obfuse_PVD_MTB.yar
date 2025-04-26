
rule TrojanDownloader_O97M_Obfuse_PVD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PVD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1 = CreateObject("WScript.Shell")
		$a_01_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //1 = CreateObject("Scripting.FileSystemObject")
		$a_01_2 = {28 45 6e 76 69 72 6f 6e 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 20 2b 20 22 5c 44 6f 63 75 6d 65 6e 74 73 5c 22 20 2b 20 22 71 58 32 78 70 4a 35 56 2e 74 78 74 22 29 20 54 68 65 6e } //1 (Environ("USERPROFILE") + "\Documents\" + "qX2xpJ5V.txt") Then
		$a_01_3 = {6d 70 34 6b 6c 67 7a 6f 2e 43 72 65 61 74 65 46 6f 6c 64 65 72 20 28 70 61 63 62 68 64 76 63 29 } //1 mp4klgzo.CreateFolder (pacbhdvc)
		$a_01_4 = {3d 20 71 38 37 66 70 6f 72 34 2e 52 75 6e 28 22 77 73 63 72 69 70 74 2e 65 78 65 20 2f 2f 62 20 22 20 2b 20 43 68 72 28 33 34 29 20 2b 20 71 73 20 2b 20 43 68 72 28 33 34 29 2c 20 34 2c 20 46 61 6c 73 65 29 } //1 = q87fpor4.Run("wscript.exe //b " + Chr(34) + qs + Chr(34), 4, False)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}