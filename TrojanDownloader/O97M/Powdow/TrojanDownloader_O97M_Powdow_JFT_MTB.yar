
rule TrojanDownloader_O97M_Powdow_JFT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.JFT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {55 52 4c 20 3d 20 22 68 74 74 70 3a 2f 2f 31 39 32 2e 31 31 39 2e 37 31 2e 38 39 2f 70 75 72 63 68 61 73 65 5f 6c 69 73 74 2e 74 78 74 } //1 URL = "http://192.119.71.89/purchase_list.txt
		$a_01_1 = {3d 20 22 43 3a 5c 55 73 65 72 73 5c 22 20 26 20 45 6e 76 69 72 6f 6e 28 22 55 73 65 72 4e 61 6d 65 22 29 20 26 20 22 5c 64 6f 77 6e 6c 6f 61 64 73 5c 70 75 72 63 68 61 73 65 5f 6c 69 73 74 2e 74 78 74 } //1 = "C:\Users\" & Environ("UserName") & "\downloads\purchase_list.txt
		$a_01_2 = {53 68 65 6c 6c 20 28 22 43 3a 5c 55 73 65 72 73 5c 22 20 26 20 45 6e 76 69 72 6f 6e 28 22 55 73 65 72 4e 61 6d 65 22 29 20 26 20 22 5c 64 6f 77 6e 6c 6f 61 64 73 5c 70 75 72 63 68 61 73 65 5f 6c 69 73 74 2e 65 78 65 20 2d 65 20 63 6d 64 2e 65 78 65 22 29 } //1 Shell ("C:\Users\" & Environ("UserName") & "\downloads\purchase_list.exe -e cmd.exe")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}