
rule Trojan_Win32_Squida_A{
	meta:
		description = "Trojan:Win32/Squida.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {00 73 6c 6f 77 70 6f 73 74 00 73 6c 6f 77 6c 6f 72 69 73 00 } //1 猀潬灷獯t汳睯潬楲s
		$a_01_1 = {53 43 48 54 41 53 4b 53 20 2f 43 52 45 41 54 45 20 2f 53 43 20 4f 4e 4c 4f 47 4f 4e 20 2f 54 4e 20 41 } //1 SCHTASKS /CREATE /SC ONLOGON /TN A
		$a_01_2 = {25 73 20 25 73 20 3a 25 73 20 49 52 43 20 57 61 72 3a 20 53 74 6f 70 70 65 64 20 4b 69 6c 6c 20 4d 75 6c 74 69 70 6c 65 20 55 73 65 72 73 } //1 %s %s :%s IRC War: Stopped Kill Multiple Users
		$a_01_3 = {41 ba 05 15 00 00 89 d6 c1 e6 05 8d 04 06 01 c2 0f be 01 41 85 c0 75 ee } //3
		$a_01_4 = {73 6b 79 70 65 00 6c 6f 63 6b 00 62 6f 74 6b 69 6c 6c 00 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*3+(#a_01_4  & 1)*2) >=4
 
}