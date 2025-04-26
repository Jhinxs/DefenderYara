
rule Trojan_BAT_SnakeKeylogger_NEC_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.NEC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {28 b8 00 00 0a 28 c9 00 00 0a 14 72 ?? 08 00 70 72 ?? 08 00 70 72 ?? 08 00 70 28 b8 00 00 0a 1b 8d 17 00 00 01 25 } //1
		$a_01_1 = {67 65 74 5f 76 34 5f 34 36 30 70 78 5f 4b 6e 6f 77 5f 69 66 5f 59 6f 75 72 5f 47 69 72 6c 66 72 69 65 6e 64 5f 49 73 } //1 get_v4_460px_Know_if_Your_Girlfriend_Is
		$a_01_2 = {42 00 75 00 6e 00 69 00 35 00 35 00 35 00 66 00 75 00 5f 00 54 00 65 00 35 00 35 00 35 00 35 00 78 00 74 00 42 00 35 00 35 00 35 00 6f 00 78 00 } //1 Buni555fu_Te5555xtB555ox
		$a_01_3 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 43 00 30 00 6e 00 76 00 65 00 72 00 74 00 } //1 System.C0nvert
		$a_01_4 = {49 00 6e 00 76 00 30 00 6b 00 65 00 4d 00 65 00 6d 00 62 00 65 00 72 00 } //1 Inv0keMember
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}