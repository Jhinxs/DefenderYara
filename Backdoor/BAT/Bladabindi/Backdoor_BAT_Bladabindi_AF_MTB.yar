
rule Backdoor_BAT_Bladabindi_AF_MTB{
	meta:
		description = "Backdoor:BAT/Bladabindi.AF!MTB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {52 65 61 64 53 71 75 61 64 } //1 ReadSquad
		$a_01_1 = {54 56 71 51 2c 4d 2c 2c 45 2c 2c 2f 2f 38 2c 4c 67 2c 2c 2c 2c 41 51 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 2c 41 67 2c 2c 41 34 66 75 67 34 41 74 41 6e 4e 49 62 67 42 54 4d 30 68 56 47 68 70 63 79 42 77 63 6d 39 6e 63 6d 46 74 49 47 4e 68 62 6d 35 76 64 43 42 69 5a 53 42 79 64 57 34 67 61 57 34 67 52 45 39 54 49 47 31 76 5a 47 55 75 44 51 30 4b 4a } //1 TVqQ,M,,E,,//8,Lg,,,,AQ,,,,,,,,,,,,,,,,,,,,,,,Ag,,A4fug4AtAnNIbgBTM0hVGhpcyBwcm9ncmFtIGNhbm5vdCBiZSBydW4gaW4gRE9TIG1vZGUuDQ0KJ
		$a_01_2 = {54 00 56 00 71 00 51 00 41 00 41 00 4d 00 2c 00 2c 00 45 00 2c 00 2c 00 41 00 41 00 2c 00 45 00 2c 00 2c 00 2f 00 2f 00 38 00 41 00 41 00 45 00 2c 00 2c 00 2f 00 2f 00 38 00 2c 00 4c 00 67 00 41 00 41 00 2c 00 2f 00 2f 00 38 00 2c 00 4c 00 67 00 2c 00 2c 00 2c 00 } //1 TVqQAAM,,E,,AA,E,,//8AAE,,//8,LgAA,//8,Lg,,,
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}