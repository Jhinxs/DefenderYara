
rule TrojanDownloader_Win32_Kotibu_A{
	meta:
		description = "TrojanDownloader:Win32/Kotibu.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {2e 00 61 00 73 00 70 00 3f 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 26 00 6d 00 61 00 63 00 3d 00 } //1 .asp?action=install&mac=
		$a_02_1 = {23 00 53 00 74 00 61 00 72 00 74 00 ?? ?? 23 00 68 00 74 00 74 00 70 00 [0-40] 3c 00 45 00 6e 00 64 00 45 00 4f 00 53 00 3e 00 } //1
		$a_00_2 = {77 00 69 00 6e 00 6d 00 67 00 6d 00 74 00 73 00 3a 00 5c 00 5c 00 2e 00 5c 00 72 00 6f 00 6f 00 74 00 5c 00 63 00 69 00 6d 00 76 00 32 00 } //1 winmgmts:\\.\root\cimv2
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}