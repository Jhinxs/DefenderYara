
rule Ransom_MSIL_EqautorCrypt_PA_MTB{
	meta:
		description = "Ransom:MSIL/EqautorCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {65 6e 63 72 79 70 74 65 72 2e 65 78 65 } //1 encrypter.exe
		$a_01_1 = {55 00 4e 00 4c 00 4f 00 43 00 4b 00 45 00 44 00 } //1 UNLOCKED
		$a_01_2 = {65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 45 00 51 00 41 00 55 00 54 00 4f 00 52 00 20 00 52 00 41 00 4e 00 53 00 4f 00 4d 00 45 00 57 00 41 00 52 00 45 00 } //1 encrypted by EQAUTOR RANSOMEWARE
		$a_01_3 = {4d 00 59 00 50 00 45 00 52 00 53 00 4f 00 4e 00 41 00 4c 00 40 00 50 00 52 00 4f 00 54 00 4f 00 4e 00 4d 00 41 00 49 00 4c 00 2e 00 43 00 4f 00 4d 00 } //1 MYPERSONAL@PROTONMAIL.COM
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}