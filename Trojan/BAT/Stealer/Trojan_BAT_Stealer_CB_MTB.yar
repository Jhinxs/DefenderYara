
rule Trojan_BAT_Stealer_CB_MTB{
	meta:
		description = "Trojan:BAT/Stealer.CB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_00_0 = {57 ff 03 3e 09 1f 00 00 00 00 00 00 00 00 00 00 01 00 00 00 38 01 00 00 32 01 00 00 bb 04 00 00 49 0f 00 00 6f 09 00 00 3c 00 00 00 a7 03 } //3
		$a_81_1 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 2e 41 65 73 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //3 System.Security.Cryptography.AesCryptoServiceProvider
		$a_81_2 = {7b 31 31 31 31 31 2d 32 32 32 32 32 2d 31 30 30 30 39 2d 31 31 31 31 32 7d } //3 {11111-22222-10009-11112}
		$a_81_3 = {70 55 65 41 77 44 69 37 45 52 48 58 37 4b 33 78 75 66 2e 43 67 35 62 50 35 75 43 53 4d 5a 67 30 71 39 4a 48 42 } //3 pUeAwDi7ERHX7K3xuf.Cg5bP5uCSMZg0q9JHB
		$a_81_4 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //3 MD5CryptoServiceProvider
		$a_81_5 = {61 6a 45 43 42 65 54 59 31 67 71 49 56 41 76 4a 44 71 4a } //3 ajECBeTY1gqIVAvJDqJ
	condition:
		((#a_00_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3) >=18
 
}