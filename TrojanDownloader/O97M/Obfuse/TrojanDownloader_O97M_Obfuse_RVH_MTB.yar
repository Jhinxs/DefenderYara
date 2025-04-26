
rule TrojanDownloader_O97M_Obfuse_RVH_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {31 38 35 2e 32 34 33 2e 32 31 35 2e 32 31 33 2f 73 79 73 5f 69 6e 66 6f 2e 76 62 73 22 2c 20 46 61 6c 73 65 90 0a 3e 00 78 48 74 74 70 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 22 68 74 74 70 3a 2f 2f } //1
		$a_00_1 = {2e 73 61 76 65 74 6f 66 69 6c 65 20 22 73 79 73 5f 69 6e 66 6f 2e 76 62 73 22 2c 20 32 } //1 .savetofile "sys_info.vbs", 2
		$a_00_2 = {53 68 65 6c 6c 20 22 77 73 63 72 69 70 74 20 73 79 73 5f 69 6e 66 6f 2e 76 62 73 22 2c 20 76 62 4e 6f 72 6d 61 6c 46 6f 63 75 73 } //1 Shell "wscript sys_info.vbs", vbNormalFocus
		$a_00_3 = {62 53 74 72 6d 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 41 64 6f 64 62 2e 53 74 72 65 61 6d 22 29 } //1 bStrm = CreateObject("Adodb.Stream")
		$a_00_4 = {78 48 74 74 70 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 69 63 72 6f 73 6f 66 74 2e 58 4d 4c 48 54 54 50 22 29 } //1 xHttp = CreateObject("Microsoft.XMLHTTP")
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}