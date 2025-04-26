
rule TrojanDownloader_Win32_Farfli_PJ_bit{
	meta:
		description = "TrojanDownloader:Win32/Farfli.PJ!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {4b 50 8d 45 ?? 50 c6 45 ?? 45 c6 45 ?? 52 c6 45 ?? 4e c6 45 ?? 45 c6 45 ?? 4c c6 45 ?? 33 c6 45 ?? 32 } //1
		$a_03_1 = {2e 66 33 33 32 32 2e 6f 72 67 3a 36 35 35 30 30 2f 43 6f 6e 73 79 73 90 05 03 03 30 2d 39 2e 64 6c 6c } //1
		$a_03_2 = {32 30 32 2e 31 30 37 2e 32 30 34 2e 32 30 39 3a 36 35 35 30 30 2f [0-10] 2e 65 78 65 } //1
		$a_01_3 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 41 70 70 50 61 74 63 68 5c 6d 79 73 71 6c 64 2e 64 6c 6c } //1 C:\Program Files\AppPatch\mysqld.dll
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}