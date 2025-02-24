
rule Trojan_BAT_Bladabindi_NB_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.NB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_03_0 = {20 29 27 00 00 28 ?? 00 00 06 28 ?? 00 00 0a 02 18 16 8d 01 00 00 01 28 ?? 00 00 0a 0a 06 2a } //3
		$a_03_1 = {20 66 08 00 00 28 ?? 00 00 0a 20 45 15 00 00 72 bb 02 00 70 28 ?? 00 00 06 28 ?? 00 00 0a 0a 06 2a } //2
		$a_01_2 = {63 78 7a 63 78 7a 78 63 7a } //1 cxzcxzxcz
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*2+(#a_01_2  & 1)*1) >=6
 
}
rule Trojan_BAT_Bladabindi_NB_MTB_2{
	meta:
		description = "Trojan:BAT/Bladabindi.NB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_01_0 = {07 6f 96 00 00 0a 28 a9 01 00 06 02 7b c3 01 00 04 6f a9 01 00 0a 13 09 11 09 39 dd 00 00 00 07 6f 96 00 00 0a 02 7b c3 01 00 04 28 aa 01 00 06 13 04 02 7b c1 01 00 04 13 06 11 06 14 fe 01 16 fe 01 13 09 11 09 2c 2a } //3
		$a_01_1 = {8d 05 00 00 01 13 07 11 07 16 16 8c 4e 00 00 01 a2 00 11 07 14 28 1a 01 00 0a 74 18 00 00 1b 6f f4 01 00 06 } //2
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*2) >=5
 
}
rule Trojan_BAT_Bladabindi_NB_MTB_3{
	meta:
		description = "Trojan:BAT/Bladabindi.NB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_01_0 = {28 2f 00 00 0a 0b 11 06 1f 78 91 13 05 38 50 ff ff ff 06 17 58 0a 1f 6b 0d 20 ef 00 00 00 0c 20 cd 02 00 00 08 09 19 5a 59 30 12 11 07 1f 18 93 20 b4 86 00 00 59 13 05 38 25 ff ff ff 16 2b f6 11 07 20 a6 00 00 00 93 20 fe 9c 00 00 59 13 05 38 0d ff ff ff 07 74 09 00 00 01 2a 11 07 1f 71 93 20 7f 4e 00 00 59 13 05 } //5
		$a_01_1 = {42 50 4e 49 47 4c 57 5a 48 41 51 4a } //1 BPNIGLWZHAQJ
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}