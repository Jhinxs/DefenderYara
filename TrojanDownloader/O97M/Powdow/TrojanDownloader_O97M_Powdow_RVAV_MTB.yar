
rule TrojanDownloader_O97M_Powdow_RVAV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVAV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {2e 44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 28 27 68 74 74 70 3a 2f 2f 34 36 2e 34 2e 31 39 38 2e 35 35 2f ?? 2f 62 6f 6f 6b 2e 70 73 31 27 29 } //1
		$a_01_1 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 28 30 26 2c 20 43 68 72 28 31 31 32 29 20 2b 20 22 6f 77 65 72 22 20 2b 20 22 73 68 65 6c 6c 2e 65 78 65 20 22 20 2b 20 43 68 72 28 31 35 30 29 20 2b 20 22 57 69 6e 64 6f 77 53 74 79 6c 65 20 48 69 64 64 65 6e 22 } //1 CreateProcessA(0&, Chr(112) + "ower" + "shell.exe " + Chr(150) + "WindowStyle Hidden"
		$a_01_2 = {22 70 6f 77 65 72 73 68 65 6c 6c 2e 65 78 65 22 2c 20 30 26 2c 20 30 26 2c 20 31 26 2c 20 4e 4f 52 4d 41 4c 5f 50 52 49 4f 52 49 54 59 5f 43 4c 41 53 53 2c 20 30 26 2c 20 30 26 2c 20 73 74 61 72 74 2c 20 70 72 6f 63 29 } //1 "powershell.exe", 0&, 0&, 1&, NORMAL_PRIORITY_CLASS, 0&, 0&, start, proc)
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}