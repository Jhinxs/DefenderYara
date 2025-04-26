
rule Trojan_BAT_Njrat_RPY_MTB{
	meta:
		description = "Trojan:BAT/Njrat.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {20 6f 24 00 00 9d 06 1a 20 f7 29 00 00 9d 06 16 20 79 1b 00 00 9d 06 1d 20 18 0f 00 00 9d 06 17 20 d0 2b 00 00 9d 06 19 20 59 3f 00 00 9d 06 1b 20 ab 38 00 00 9d 06 1c 20 c9 04 00 00 9d 20 be 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Njrat_RPY_MTB_2{
	meta:
		description = "Trojan:BAT/Njrat.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {14 0a 73 20 00 00 0a 0b 07 28 21 00 00 0a 02 6f 22 00 00 0a 6f 23 00 00 0a 0a 07 6f 24 00 00 0a 06 2a } //1
		$a_01_1 = {63 6c 61 73 68 20 6e 6a 72 61 74 } //1 clash njrat
		$a_01_2 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_01_3 = {54 6f 53 74 72 69 6e 67 } //1 ToString
		$a_01_4 = {53 6c 65 65 70 } //1 Sleep
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_BAT_Njrat_RPY_MTB_3{
	meta:
		description = "Trojan:BAT/Njrat.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {4e 00 6a 00 72 00 61 00 74 00 20 00 30 00 2e 00 37 00 } //1 Njrat 0.7
		$a_01_1 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 70 00 69 00 6e 00 67 00 20 00 30 00 20 00 2d 00 6e 00 20 00 32 00 20 00 26 00 20 00 64 00 65 00 6c 00 } //1 cmd.exe /c ping 0 -n 2 & del
		$a_01_2 = {77 00 77 00 77 00 2e 00 75 00 70 00 6c 00 6f 00 61 00 64 00 2e 00 65 00 65 00 } //1 www.upload.ee
		$a_01_3 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 73 00 63 00 20 00 6d 00 69 00 6e 00 75 00 74 00 65 00 20 00 2f 00 6d 00 6f 00 20 00 31 00 20 00 2f 00 74 00 6e 00 20 00 53 00 65 00 72 00 76 00 65 00 72 00 20 00 2f 00 74 00 72 00 20 00 } //1 schtasks /create /sc minute /mo 1 /tn Server /tr 
		$a_01_4 = {5b 00 53 00 63 00 72 00 6f 00 6c 00 6c 00 4c 00 6f 00 63 00 6b 00 5d 00 } //1 [ScrollLock]
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}