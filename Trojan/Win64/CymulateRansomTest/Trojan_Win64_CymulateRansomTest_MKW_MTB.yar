
rule Trojan_Win64_CymulateRansomTest_MKW_MTB{
	meta:
		description = "Trojan:Win64/CymulateRansomTest.MKW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {b9 04 00 00 00 2a ca 41 0f b6 00 02 c8 80 f1 28 80 c1 0c 41 88 08 48 ff c2 4d 8d 40 ?? 48 83 fa ?? 72 } //1
		$a_03_1 = {80 f1 01 c0 e1 05 80 c1 ?? 88 08 c6 40 ?? ?? e9 ?? ?? ?? ?? b8 ?? ?? ?? ?? 4d 39 1e 7d 05 88 02 48 ff c3 8a 84 24 ?? ?? ?? ?? 4c 8d 63 ?? 34 01 41 bf ?? ?? ?? ?? 44 0f b6 e8 41 b8 ?? ?? ?? ?? 41 8b ed } //1
		$a_03_2 = {5c 55 73 65 72 73 5c 59 6f 61 76 53 68 61 68 61 72 61 62 61 6e 69 5c 73 6f 75 72 63 65 5c 72 65 70 6f 73 5c 77 69 6e 64 6f 77 73 2d 73 63 65 6e 61 72 69 6f 73 5c 50 61 79 6c 6f 61 64 73 5c 4e 61 74 69 76 65 52 61 6e 73 6f 6d 65 77 61 72 65 44 6c 6c 5c 78 36 34 5c [0-30] 5c 4e 61 74 69 76 65 52 61 6e 73 6f 6d 65 77 61 72 65 44 6c 6c 2e 70 64 62 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}