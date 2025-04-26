
rule Trojan_Win32_Msposer_L{
	meta:
		description = "Trojan:Win32/Msposer.L,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {7c 00 7c 00 53 00 70 00 6c 00 69 00 74 00 4d 00 65 00 7c 00 7c 00 } //1 ||SplitMe||
		$a_01_1 = {5c 54 65 6d 70 6f 72 61 72 79 20 50 72 6f 6a 65 63 74 73 5c 43 68 72 6f 6d 65 5c 6f 62 6a 5c 78 38 36 5c 44 65 62 75 67 5c 43 68 72 6f 6d 65 2e 70 64 62 } //1 \Temporary Projects\Chrome\obj\x86\Debug\Chrome.pdb
		$a_03_2 = {43 6f 70 79 72 69 67 68 74 20 c2 a9 20 4d (69 63 72 6f 73|65 67 61 53) 6f 66 74 20 32 30 31 32 [0-0f] 43 68 72 6f 6d 65 [0-0f] 4d (69 63 72 6f 73|65 67 61 53) 6f 66 74 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}