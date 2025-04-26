
rule TrojanDownloader_Win32_Formon_A{
	meta:
		description = "TrojanDownloader:Win32/Formon.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {8b 75 0c 85 f6 c7 45 fc 31 32 33 00 8d 45 fc } //1
		$a_01_1 = {2e 70 68 70 00 55 73 65 72 44 61 74 61 00 } //1 瀮灨唀敳䑲瑡a
		$a_01_2 = {75 69 64 3d 25 73 26 } //1 uid=%s&
		$a_00_3 = {41 70 70 49 6e 69 74 5f 44 4c 4c 73 } //1 AppInit_DLLs
		$a_01_4 = {25 64 2e 65 78 65 00 00 6c 64 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}