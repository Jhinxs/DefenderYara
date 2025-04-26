
rule Trojan_Win32_Zmem_A{
	meta:
		description = "Trojan:Win32/Zmem.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {59 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 68 61 73 20 62 65 65 6e 20 74 72 61 73 68 65 64 20 62 79 20 74 68 65 20 4d 45 4d 5a 20 74 72 6f 6a 61 6e } //1 Your computer has been trashed by the MEMZ trojan
		$a_01_1 = {59 6f 75 72 20 50 43 20 69 73 20 66 75 63 6b 65 64 20 61 6e 79 77 61 79 } //1 Your PC is fucked anyway
		$a_01_2 = {4d 61 6b 65 4d 61 6c 77 61 72 65 47 72 65 61 74 41 67 61 69 6e } //1 MakeMalwareGreatAgain
		$a_01_3 = {47 45 54 20 4d 4c 47 20 41 4e 54 49 56 49 52 55 53 20 4e 45 58 54 20 54 49 4d 45 } //1 GET MLG ANTIVIRUS NEXT TIME
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}