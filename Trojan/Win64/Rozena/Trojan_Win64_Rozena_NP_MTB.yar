
rule Trojan_Win64_Rozena_NP_MTB{
	meta:
		description = "Trojan:Win64/Rozena.NP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {48 83 ec 18 48 8b 44 24 ?? 48 83 f8 00 75 18 48 8b 0d fe a8 0d 00 65 48 8b 09 48 8b 5c 24 30 } //3
		$a_03_1 = {48 89 19 e9 20 01 00 00 48 8b 0d e6 a8 0d 00 65 48 8b 09 bb ?? ?? ?? ?? 48 83 f9 00 74 03 } //3
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3) >=6
 
}