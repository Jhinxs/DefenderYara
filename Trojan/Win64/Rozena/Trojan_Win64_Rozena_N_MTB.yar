
rule Trojan_Win64_Rozena_N_MTB{
	meta:
		description = "Trojan:Win64/Rozena.N!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {4c 8b 4c 24 30 4c 89 4c ca 18 eb ?? 4c 8b 4c 24 30 e8 68 6e 04 00 4c 8b 4c 24 38 } //3
		$a_01_1 = {59 69 68 73 69 77 65 69 } //1 Yihsiwei
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1) >=4
 
}
rule Trojan_Win64_Rozena_N_MTB_2{
	meta:
		description = "Trojan:Win64/Rozena.N!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {48 8b 2d b0 32 0e 00 31 ff 65 48 8b 04 25 ?? ?? ?? ?? 48 8b 70 08 } //3
		$a_03_1 = {48 8b 05 e3 2f 0e 00 ff d0 bb ?? ?? ?? ?? 48 8d 45 d0 48 89 c1 e8 d0 f0 09 00 89 d8 } //3
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3) >=6
 
}