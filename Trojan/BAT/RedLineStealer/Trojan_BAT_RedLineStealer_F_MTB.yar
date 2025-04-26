
rule Trojan_BAT_RedLineStealer_F_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.F!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_01_0 = {30 38 30 6c 34 38 61 47 5a 55 4c 69 74 67 4e 6f 33 34 2e 4e 51 51 38 6f 69 75 45 30 42 6f 6a 45 52 42 36 64 5a } //2 080l48aGZULitgNo34.NQQ8oiuE0BojERB6dZ
		$a_01_1 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 } //2 System.Reflection.ReflectionContext
		$a_01_2 = {58 00 32 00 4e 00 32 00 73 00 4a 00 59 00 68 00 66 00 71 00 6c 00 64 00 73 00 4c 00 75 00 72 00 55 00 6f 00 2e 00 61 00 6f 00 4a 00 52 00 5a 00 4a 00 57 00 67 00 62 00 63 00 35 00 32 00 4c 00 6b 00 6c 00 75 00 65 00 6d 00 } //2 X2N2sJYhfqldsLurUo.aoJRZJWgbc52Lkluem
		$a_01_3 = {70 00 6e 00 58 00 53 00 65 00 68 00 34 00 63 00 39 00 73 00 57 00 68 00 71 00 37 00 77 00 6b 00 5a 00 33 00 2e 00 4f 00 67 00 30 00 61 00 42 00 55 00 6f 00 33 00 4c 00 57 00 65 00 65 00 38 00 75 00 69 00 73 00 4c 00 31 00 } //2 pnXSeh4c9sWhq7wkZ3.Og0aBUo3LWee8uisL1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=8
 
}