
rule Trojan_Win32_CoinMiner_DG_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.DG!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 "
		
	strings :
		$a_03_0 = {68 74 74 70 3a 2f 2f 6f 77 77 77 63 2e 63 6f 6d 2f 6d 6d 2f [0-30] 2e 65 78 65 } //1
		$a_01_1 = {4d 7a 6b 75 4d 54 41 35 4c 6a 45 } //1 MzkuMTA5LjE
		$a_01_2 = {6d 69 6e 65 2e 63 33 70 6f 6f 6c 2e 63 6f 6d } //1 mine.c3pool.com
		$a_01_3 = {78 6d 72 2e 66 32 70 6f 6f 6c 2e 63 6f 6d } //1 xmr.f2pool.com
		$a_01_4 = {58 4d 52 69 67 2e 65 78 65 7c 58 4d 52 2e 65 78 65 7c } //1 XMRig.exe|XMR.exe|
		$a_01_5 = {64 53 35 76 64 33 64 33 59 79 35 6a 62 32 31 38 4f } //1 dS5vd3d3Yy5jb218O
		$a_01_6 = {34 39 68 6e 6d 76 54 68 33 67 48 46 5a 56 51 6a 4d 58 70 46 57 66 4b 75 76 46 31 53 67 44 47 57 43 51 52 4d 68 53 74 67 45 67 36 76 68 74 4a 66 51 38 52 64 53 41 66 33 54 59 72 33 46 6f 5a 43 59 79 44 79 4e 61 69 6e 77 77 7a 52 6d 50 61 6e 54 31 75 63 42 78 31 79 35 76 61 52 58 42 4d 2e 72 39 6e } //1 49hnmvTh3gHFZVQjMXpFWfKuvF1SgDGWCQRMhStgEg6vhtJfQ8RdSAf3TYr3FoZCYyDyNainwwzRmPanT1ucBx1y5vaRXBM.r9n
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=3
 
}