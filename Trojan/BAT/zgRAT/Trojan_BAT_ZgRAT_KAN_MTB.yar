
rule Trojan_BAT_ZgRAT_KAN_MTB{
	meta:
		description = "Trojan:BAT/ZgRAT.KAN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {34 41 41 41 42 6c 41 47 30 41 59 51 42 4f 41 47 77 41 59 51 42 75 41 48 49 41 5a 51 42 30 41 } //1 4AAABlAG0AYQBOAGwAYQBuAHIAZQB0A
		$a_01_1 = {34 41 59 51 42 77 41 47 30 41 62 77 42 44 41 41 45 41 41 51 41 69 } //1 4AYQBwAG0AbwBDAAEAAQAi
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}