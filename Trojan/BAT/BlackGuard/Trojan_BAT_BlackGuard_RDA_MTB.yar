
rule Trojan_BAT_BlackGuard_RDA_MTB{
	meta:
		description = "Trojan:BAT/BlackGuard.RDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {61 63 39 63 65 39 32 61 2d 63 37 38 35 2d 34 33 36 30 2d 62 31 66 64 2d 31 39 35 33 35 62 62 35 62 36 37 39 } //1 ac9ce92a-c785-4360-b1fd-19535bb5b679
		$a_01_1 = {49 4a 53 46 49 48 42 } //1 IJSFIHB
		$a_01_2 = {42 44 49 43 2e 65 78 65 } //1 BDIC.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}