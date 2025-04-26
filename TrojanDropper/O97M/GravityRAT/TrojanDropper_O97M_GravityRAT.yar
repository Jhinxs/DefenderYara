
rule TrojanDropper_O97M_GravityRAT{
	meta:
		description = "TrojanDropper:O97M/GravityRAT,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {44 69 72 28 45 6e 76 69 72 6f 6e 28 22 41 50 50 44 41 54 41 22 29 20 2b 20 22 5c 69 6d 61 67 65 } //1 Dir(Environ("APPDATA") + "\image
		$a_00_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 45 78 70 61 6e 64 45 6e 76 69 72 6f 6e 6d 65 6e 74 53 74 72 69 6e 67 73 28 22 25 41 50 50 44 41 54 41 25 22 29 20 2b 20 22 5c 74 65 6d 70 6f 72 61 72 79 2e 7a 69 70 22 } //1 = CreateObject("WScript.Shell").ExpandEnvironmentStrings("%APPDATA%") + "\temporary.zip"
		$a_00_2 = {28 45 6e 76 69 72 6f 6e 28 22 41 50 50 44 41 54 41 22 29 20 2b 20 22 5c 74 65 6d 70 6f 72 61 72 79 2e 7a 69 70 22 29 2c 20 22 65 78 65 22 } //1 (Environ("APPDATA") + "\temporary.zip"), "exe"
		$a_00_3 = {73 63 68 74 61 73 6b 73 20 2f 63 72 65 61 74 65 20 2f 74 6e 20 77 6f 72 64 74 65 73 74 20 2f 74 72 20 25 41 50 50 44 41 54 41 25 5c 69 6d 61 67 65 } //1 schtasks /create /tn wordtest /tr %APPDATA%\image
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}