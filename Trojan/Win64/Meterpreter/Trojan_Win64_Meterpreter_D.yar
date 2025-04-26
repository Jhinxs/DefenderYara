
rule Trojan_Win64_Meterpreter_D{
	meta:
		description = "Trojan:Win64/Meterpreter.D,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {49 c7 c2 2d 06 18 7b ff d5 } //1
		$a_01_1 = {49 ba 58 a4 53 e5 00 00 00 00 ff d5 } //1
		$a_01_2 = {49 ba 12 96 89 e2 00 00 00 00 ff d5 } //1
		$a_01_3 = {49 c7 c2 f0 b5 a2 56 ff d5 } //1
		$a_01_4 = {65 48 8b 52 60 48 8b 52 18 48 8b 52 20 48 8b 72 50 48 0f b7 4a 4a 4d 31 c9 } //1
		$a_03_5 = {49 be 77 69 6e 69 6e 65 74 00 [0-08] 49 c7 c2 4c 77 26 07 ff d5 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1) >=5
 
}