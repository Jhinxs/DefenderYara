
rule TrojanDownloader_Win32_Nonaco_B{
	meta:
		description = "TrojanDownloader:Win32/Nonaco.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {44 4c 4c 00 25 66 00 00 5f 73 65 6c 66 } //1
		$a_01_1 = {44 4c 4c 00 25 66 00 00 25 64 00 00 5f 73 65 6c 66 } //1
		$a_03_2 = {2f 3f 6e 61 6d 65 3d 25 73 00 [0-04] 25 73 5c 25 } //1
		$a_01_3 = {54 69 6d 65 00 00 00 00 54 6f 46 65 65 64 00 00 79 65 73 00 4b 69 6c 6c 00 00 00 00 25 30 32 58 } //1
		$a_02_4 = {6a 06 99 59 f7 f9 8b da e8 ?? ?? 00 00 99 b9 8c 00 00 00 f7 f9 8b f2 46 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_02_4  & 1)*1) >=4
 
}