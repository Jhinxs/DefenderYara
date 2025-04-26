
rule TrojanDownloader_Win32_VB_GO{
	meta:
		description = "TrojanDownloader:Win32/VB.GO,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {2e 00 32 00 7a 00 30 00 6f 00 2e 00 6e 00 65 00 74 00 } //1 .2z0o.net
		$a_00_1 = {53 00 65 00 72 00 76 00 69 00 63 00 65 00 45 00 78 00 65 00 4e 00 61 00 6d 00 65 00 20 00 73 00 65 00 74 00 3a 00 } //1 ServiceExeName set:
		$a_00_2 = {4c 00 6f 00 67 00 67 00 69 00 6e 00 67 00 20 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 77 00 69 00 74 00 68 00 20 00 41 00 64 00 6d 00 69 00 6e 00 20 00 73 00 65 00 72 00 76 00 65 00 72 00 2e 00 2e 00 2e 00 } //1 Logging install with Admin server...
		$a_01_3 = {13 00 00 00 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}