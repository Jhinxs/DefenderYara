
rule Trojan_Win32_VBCrypt_YL_MSR{
	meta:
		description = "Trojan:Win32/VBCrypt.YL!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {72 00 49 00 38 00 7a 00 56 00 4f 00 70 00 66 00 7a 00 33 00 6e 00 79 00 6e 00 4d 00 35 00 35 00 33 00 38 00 39 00 50 00 67 00 73 00 79 00 43 00 32 00 59 00 4c 00 57 00 75 00 44 00 30 00 56 00 4e 00 66 00 37 00 39 00 } //1 rI8zVOpfz3nynM55389PgsyC2YLWuD0VNf79
		$a_01_1 = {37 00 2e 00 30 00 38 00 2e 00 30 00 30 00 30 00 33 00 } //1 7.08.0003
		$a_01_2 = {68 48 73 32 68 48 73 44 68 48 73 58 68 48 73 6a 68 48 73 } //1 hHs2hHsDhHsXhHsjhHs
		$a_01_3 = {47 73 38 4c 48 73 7a 4a 48 73 } //1 Gs8LHszJHs
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}