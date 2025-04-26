
rule Trojan_O97M_Kerdown_B{
	meta:
		description = "Trojan:O97M/Kerdown.B,SIGNATURE_TYPE_MACROHSTR_EXT,15 00 14 00 04 00 00 "
		
	strings :
		$a_01_0 = {77 73 68 2e 52 75 6e 20 22 63 6d 64 2e 65 78 65 20 2f 53 20 2f 43 20 72 65 67 20 61 64 64 20 20 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c } //10 wsh.Run "cmd.exe /S /C reg add  HKEY_CURRENT_USER\
		$a_01_1 = {49 66 20 52 65 67 4b 65 79 45 78 69 73 74 73 28 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 43 6c 61 73 73 65 73 5c 43 4c 53 49 44 5c 7b 32 44 45 41 36 35 38 46 2d 35 34 43 31 2d 34 32 32 37 2d 41 46 39 42 2d 32 36 30 41 42 35 46 43 33 35 34 33 7d 5c 49 6e 70 72 6f 63 53 65 72 76 65 72 33 32 5c 22 29 } //10 If RegKeyExists("HKEY_CURRENT_USER\Software\Classes\CLSID\{2DEA658F-54C1-4227-AF9B-260AB5FC3543}\InprocServer32\")
		$a_01_2 = {5c 6d 61 69 6e 5f 62 61 63 6b 67 72 6f 75 6e 64 2e 70 6e 67 } //1 \main_background.png
		$a_01_3 = {5c 53 65 63 75 72 69 74 79 41 6e 64 4d 61 69 6e 74 65 6e 61 6e 63 65 5f 45 72 72 6f 72 2e 70 6e 67 } //1 \SecurityAndMaintenance_Error.png
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=20
 
}