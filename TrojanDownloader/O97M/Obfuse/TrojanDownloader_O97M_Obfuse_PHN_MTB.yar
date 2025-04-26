
rule TrojanDownloader_O97M_Obfuse_PHN_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PHN!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {22 73 74 61 72 74 20 2f 4d 49 4e 20 43 3a 5c 57 69 6e 64 6f 22 } //1 "start /MIN C:\Windo"
		$a_01_1 = {22 77 73 5c 53 79 73 74 65 6d 33 32 5c 22 20 2b 20 22 57 69 6e 64 6f 77 73 50 6f 22 20 2b 20 22 77 65 72 53 68 65 6c 6c 5c 76 31 2e 30 5c 70 6f 77 22 20 2b 20 22 65 72 73 68 65 6c 6c 2e 65 78 65 22 } //1 "ws\System32\" + "WindowsPo" + "werShell\v1.0\pow" + "ershell.exe"
		$a_01_2 = {22 20 2d 77 69 6e 20 31 20 2d 65 6e 63 22 } //1 " -win 1 -enc"
		$a_01_3 = {53 68 65 6c 6c 28 62 61 74 63 68 2c 20 30 29 } //1 Shell(batch, 0)
		$a_01_4 = {4a 41 42 51 41 48 49 41 62 77 42 6a 41 45 } //1 JABQAHIAbwBjAE
		$a_03_5 = {62 61 74 63 68 20 3d 20 22 [0-19] 2e 62 61 74 22 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}
rule TrojanDownloader_O97M_Obfuse_PHN_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PHN!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 73 68 65 65 65 20 26 20 22 6c 2e 61 70 70 6c 69 63 61 74 69 6f 6e 22 29 2e 4f 70 65 6e 28 6c 69 6e 65 61 67 65 6e 63 79 29 } //1 CreateObject(sheee & "l.application").Open(lineagency)
		$a_03_1 = {43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c [0-0f] 2e 62 61 74 } //1
		$a_01_2 = {49 41 41 6e 41 47 34 41 52 51 41 74 41 43 30 41 4c 51 41 74 41 43 30 41 4c 51 41 74 41 43 30 41 4c 51 41 74 41 43 30 41 4c 51 41 74 41 43 30 41 4c 51 41 74 41 45 55 41 59 67 42 44 41 43 73 41 4b 77 41 72 41 43 73 41 4b 77 41 72 41 43 73 41 4b 77 41 72 41 43 } //1 IAAnAG4ARQAtAC0ALQAtAC0ALQAtAC0ALQAtAC0ALQAtAC0ALQAtAEUAYgBDACsAKwArACsAKwArACsAKwArAC
		$a_01_3 = {43 34 41 55 67 42 6c 41 48 41 41 62 41 42 68 41 47 4d 41 5a 51 41 6f 41 43 63 41 50 41 41 38 41 44 77 41 50 41 41 38 41 44 77 41 50 41 41 38 41 44 77 41 50 67 41 } //1 C4AUgBlAHAAbABhAGMAZQAoACcAPAA8ADwAPAA8ADwAPAA8ADwAPgA
		$a_01_4 = {3d 20 22 70 5e 6f 5e 77 5e 65 5e 52 5e 53 68 5e 65 4c 4c 5e 2e 65 5e 58 5e 65 20 5e 2d 65 5e 78 5e 65 63 5e 75 5e 74 49 5e 6f 5e 6e 50 5e 4f 4c 49 63 59 } //1 = "p^o^w^e^R^Sh^eLL^.e^X^e ^-e^x^ec^u^tI^o^nP^OLIcY
		$a_01_5 = {43 6c 6f 73 65 20 6c 65 74 74 65 72 72 61 74 65 } //1 Close letterrate
		$a_01_6 = {41 43 63 41 4c 41 41 6e 41 45 55 41 52 67 42 48 41 45 67 41 53 67 41 70 41 43 34 41 4a 41 42 54 41 46 67 41 52 41 42 44 41 45 59 41 56 67 42 48 41 45 49 41 53 41 42 4f 41 45 6f 41 57 41 42 45 41 45 4d 41 52 67 42 57 41 45 63 41 51 67 42 49 41 45 6f 41 53 77 41 6f 41 43 51 41 55 77 42 61 41 46 67 41 52 41 42 44 41 45 59 41 56 67 41 6e 41 43 6b 41 4f 77 41 4e 41 41 6f 41 4a 67 } //1 ACcALAAnAEUARgBHAEgASgApAC4AJABTAFgARABDAEYAVgBHAEIASABOAEoAWABEAEMARgBWAEcAQgBIAEoASwAoACQAUwBaAFgARABDAEYAVgAnACkAOwANAAoAJg
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}