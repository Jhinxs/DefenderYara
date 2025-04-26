
rule TrojanDownloader_O97M_Powdow_RVD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {6f 62 6a 53 68 65 6c 6c 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1 objShell = CreateObject("WScript.Shell")
		$a_01_1 = {70 72 65 20 3d 20 22 63 6d 64 2e 65 78 65 20 2f 63 20 70 6f 77 65 72 73 68 65 6c 6c 20 2d 45 78 65 63 75 74 69 6f 6e 50 6f 6c 69 63 79 20 62 79 70 61 73 73 20 2d 6e 6f 70 72 6f 66 69 6c 65 20 2d 77 69 6e 64 6f 77 73 74 79 6c 65 20 68 69 64 64 65 6e 20 22 } //1 pre = "cmd.exe /c powershell -ExecutionPolicy bypass -noprofile -windowstyle hidden "
		$a_01_2 = {2e 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 28 27 68 74 74 70 3a 2f 2f 62 61 72 74 73 69 6d 70 73 6f 6e 32 2e 69 67 6e 6f 72 65 6c 69 73 74 2e 63 6f 6d 2f 62 61 72 74 2e 6a 70 67 27 } //1 .DownloadFile('http://bartsimpson2.ignorelist.com/bart.jpg'
		$a_01_3 = {2d 46 69 6c 65 50 61 74 68 20 24 65 6e 76 3a 54 45 4d 50 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //1 -FilePath $env:TEMP\svchost.exe
		$a_01_4 = {53 68 65 6c 6c 20 28 65 78 65 63 32 29 } //1 Shell (exec2)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}