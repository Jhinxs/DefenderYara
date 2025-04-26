
rule Trojan_Win32_Nevsyn_A{
	meta:
		description = "Trojan:Win32/Nevsyn.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {8d 50 01 8a 08 40 84 c9 75 f9 2b c2 33 c9 85 c0 7e 11 80 3e 2e 75 01 47 83 ff 02 74 06 } //2
		$a_01_1 = {44 44 4f 53 5c 53 79 6e 44 44 6f 73 5c 62 69 6e 5c 52 65 6c 65 61 73 65 5c 55 55 53 79 6e 53 65 72 76 65 72 } //1 DDOS\SynDDos\bin\Release\UUSynServer
		$a_01_2 = {50 72 6f 64 75 63 74 4e 61 6d 65 00 32 30 30 30 } //1 牐摯捵乴浡e〲〰
		$a_01_3 = {5c 43 65 6e 74 72 61 6c 50 72 6f 63 65 73 73 6f 72 5c 30 00 00 7e 4d 48 7a } //1
		$a_01_4 = {73 00 79 00 6e 00 73 00 65 00 72 00 76 00 65 00 72 00 } //1 synserver
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}