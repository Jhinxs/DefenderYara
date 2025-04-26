
rule Trojan_Win64_Meterpreter_CRHG_MTB{
	meta:
		description = "Trojan:Win64/Meterpreter.CRHG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {65 48 8b 52 60 48 8b 52 18 48 8b 52 20 48 0f b7 4a 4a 48 8b 72 50 4d 31 c9 48 31 c0 ac 3c ?? 7c ?? 2c 20 41 c1 c9 0d 41 01 c1 e2 ed } //1
		$a_03_1 = {48 31 c0 ac 41 c1 c9 0d 41 01 c1 38 e0 75 ?? 4c 03 4c 24 08 45 39 d1 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}