
rule TrojanDownloader_O97M_Obfuse_RVAO_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVAO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {61 48 52 30 63 44 6f 76 4c 7a 42 72 62 6e 63 79 4d 7a 41 77 4c 6d 31 35 63 48 4a 6c 63 33 4e 76 62 6d 78 70 62 6d 55 75 59 32 39 74 4c 32 51 75 63 47 68 77 } //1 aHR0cDovLzBrbncyMzAwLm15cHJlc3NvbmxpbmUuY29tL2QucGhw
		$a_01_1 = {59 32 46 73 62 43 67 69 61 32 56 79 62 6d 56 73 4d 7a 49 69 4c 43 41 69 56 32 6c 75 52 58 68 6c 59 79 49 73 49 43 4a 4b 52 6b 6f 69 4c 43 41 69 64 33 4e 6a 63 6d 6c 77 64 43 41 76 4c 32 55 36 64 6d 4a 7a 59 33 4a 70 63 48 51 67 4c 79 39 69 49 43 49 69 } //1 Y2FsbCgia2VybmVsMzIiLCAiV2luRXhlYyIsICJKRkoiLCAid3NjcmlwdCAvL2U6dmJzY3JpcHQgLy9iICIi
		$a_01_2 = {77 6f 62 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 } //1 wob = CreateObject("wscript.shell")
		$a_01_3 = {26 20 22 5c 64 65 22 20 26 20 22 73 6b 22 20 26 20 22 74 6f 22 20 26 20 22 70 2e 69 6e 69 22 } //1 & "\de" & "sk" & "to" & "p.ini"
		$a_01_4 = {69 6e 69 20 3d 20 52 65 70 6c 61 63 65 28 69 6e 69 2c 20 22 5c 22 2c 20 22 5c 5c 22 29 } //1 ini = Replace(ini, "\", "\\")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}