
rule Trojan_Win64_Winnti_F_dha{
	meta:
		description = "Trojan:Win64/Winnti.F!dha,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {25 73 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 22 25 73 22 2c 20 44 6c 67 50 72 6f 63 20 25 73 } //1 %s\rundll32.exe "%s", DlgProc %s
		$a_01_1 = {41 65 6d 61 4e 65 6c 69 46 70 6d 65 54 74 65 47 } //1 AemaNeliFpmeTteG
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Trojan_Win64_Winnti_F_dha_2{
	meta:
		description = "Trojan:Win64/Winnti.F!dha,SIGNATURE_TYPE_PEHSTR,64 00 64 00 02 00 00 "
		
	strings :
		$a_01_0 = {25 73 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 22 25 73 22 2c 20 44 6c 67 50 72 6f 63 20 25 73 } //1 %s\rundll32.exe "%s", DlgProc %s
		$a_01_1 = {41 65 6d 61 4e 65 6c 69 46 70 6d 65 54 74 65 47 } //1 AemaNeliFpmeTteG
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=100
 
}