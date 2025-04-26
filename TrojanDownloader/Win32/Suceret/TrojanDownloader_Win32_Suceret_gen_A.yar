
rule TrojanDownloader_Win32_Suceret_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Suceret.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 06 00 00 "
		
	strings :
		$a_01_0 = {83 f8 02 75 f1 c6 45 e0 6b c6 45 e1 65 c6 45 e2 72 c6 45 e3 6e } //1
		$a_01_1 = {75 eb 8b 06 ff d0 2b c3 3d ec 14 00 00 72 f3 } //1
		$a_03_2 = {c6 43 0d 46 c6 43 0e 69 8b 07 ff d0 2b 05 ?? ?? ?? ?? 3d ?? ?? ?? ?? 72 ef } //1
		$a_01_3 = {c6 44 24 20 73 c6 44 24 21 76 c6 44 24 22 63 c6 44 24 23 68 c6 44 24 24 6f c6 44 24 25 73 c6 44 24 26 74 } //1
		$a_01_4 = {c6 44 24 13 75 c6 44 24 14 65 c6 44 24 15 55 c6 44 24 16 73 c6 44 24 17 65 c6 44 24 18 72 c6 44 24 19 41 c6 44 24 1a 50 c6 44 24 1b 43 } //1
		$a_03_5 = {78 0a c1 e9 02 8b 1c 88 49 53 79 f9 8b c4 8d 72 01 8b ce 49 85 c9 7c 10 41 8d 95 ?? ?? ff ff 8a 18 88 1a 42 40 49 75 f7 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1) >=2
 
}