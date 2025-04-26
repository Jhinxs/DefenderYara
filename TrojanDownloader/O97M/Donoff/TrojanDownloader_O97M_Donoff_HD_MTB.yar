
rule TrojanDownloader_O97M_Donoff_HD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.HD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_03_0 = {77 77 77 2e 63 6a 6f 69 6e 74 2e 63 6f 6d 2f 64 6f 63 2f 32 31 5f 30 36 2f 4b 46 41 6d 50 58 70 35 50 69 33 5f 72 65 67 6c 65 73 33 30 2e 63 6d 64 90 0a 39 00 68 74 74 70 73 3a 2f 2f } //2
		$a_01_1 = {73 65 63 6f 6e 64 20 26 20 22 20 22 20 26 20 22 63 3a 5c 70 77 5c 72 65 67 6c 65 73 33 30 2e 63 6d 64 22 } //2 second & " " & "c:\pw\regles30.cmd"
		$a_01_2 = {50 53 5f 45 78 65 63 75 74 65 20 74 72 6f 69 73 69 65 6d 65 } //2 PS_Execute troisieme
		$a_01_3 = {57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 52 75 6e 20 73 50 53 43 6d 64 } //1 WScript.Shell").Run sPSCmd
		$a_01_4 = {57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 45 78 65 63 20 73 50 53 43 6d 64 } //1 WScript.Shell").Exec sPSCmd
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=7
 
}