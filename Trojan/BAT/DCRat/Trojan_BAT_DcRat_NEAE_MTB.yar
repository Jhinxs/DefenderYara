
rule Trojan_BAT_DcRat_NEAE_MTB{
	meta:
		description = "Trojan:BAT/DcRat.NEAE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 03 00 00 "
		
	strings :
		$a_01_0 = {8d 3c 00 00 01 25 d0 0a 06 00 04 28 78 01 00 0a 6f dd 01 00 0a 06 07 6f de 01 00 0a 17 73 8a 01 00 0a } //5
		$a_01_1 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 52 00 75 00 6e 00 74 00 69 00 6d 00 65 00 4d 00 6f 00 64 00 75 00 6c 00 65 00 } //2 System.Reflection.RuntimeModule
		$a_01_2 = {45 00 7a 00 69 00 72 00 69 00 7a 00 27 00 73 00 20 00 22 00 2e 00 4e 00 45 00 54 00 20 00 52 00 65 00 61 00 63 00 74 00 6f 00 72 00 22 00 } //2 Eziriz's ".NET Reactor"
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=9
 
}