
rule TrojanDownloader_O97M_Obfuse_PKC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PKC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {55 72 6c 20 3d 20 22 68 74 74 70 3a 2f 2f 32 31 31 2e 32 35 32 2e 31 33 31 2e 32 32 34 2f 32 30 32 31 2f 69 6d 61 67 65 2f 34 71 6d 61 6c 2e 67 69 66 } //1 Url = "http://211.252.131.224/2021/image/4qmal.gif
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 5f 47 6f 2e 53 61 76 65 54 6f 46 69 6c 65 20 22 43 3a 5c 54 65 6d 70 5c 34 71 6d 61 6c 2e 67 69 66 22 2c 20 32 } //1 Download_Go.SaveToFile "C:\Temp\4qmal.gif", 2
		$a_01_2 = {3d 20 56 42 41 2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1 = VBA.CreateObject("WScript.Shell")
		$a_01_3 = {3d 20 22 2f 63 20 22 20 26 20 22 72 65 6e 61 6d 65 20 22 20 26 20 22 43 3a 5c 54 65 6d 70 5c 34 71 6d 61 6c 2e 67 69 66 20 34 71 6d 61 6c 2e 65 78 65 22 } //1 = "/c " & "rename " & "C:\Temp\4qmal.gif 4qmal.exe"
		$a_01_4 = {77 73 68 2e 52 75 6e 20 22 43 3a 5c 57 69 6e 64 6f 77 73 5c 53 79 73 74 65 6d 33 32 5c 63 6d 64 2e 65 78 65 20 22 20 26 20 63 6d 64 54 65 78 74 2c } //1 wsh.Run "C:\Windows\System32\cmd.exe " & cmdText,
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}