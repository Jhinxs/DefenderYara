
rule Trojan_BAT_RedLine_RDAI_MTB{
	meta:
		description = "Trojan:BAT/RedLine.RDAI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 64 6b 70 62 49 67 69 67 68 49 49 49 } //1 AdkpbIgighIII
		$a_01_1 = {72 00 68 00 37 00 4b 00 4c 00 4d 00 69 00 61 00 73 00 76 00 41 00 3d 00 } //1 rh7KLMiasvA=
		$a_01_2 = {71 00 76 00 33 00 6b 00 6c 00 66 00 67 00 33 00 4f 00 78 00 6b 00 3d 00 } //1 qv3klfg3Oxk=
		$a_01_3 = {42 00 55 00 5a 00 4c 00 55 00 6c 00 51 00 36 00 2b 00 51 00 54 00 6a 00 50 00 51 00 50 00 78 00 62 00 56 00 4f 00 38 00 31 00 67 00 49 00 4d 00 4f 00 61 00 50 00 32 00 77 00 65 00 4f 00 68 00 } //1 BUZLUlQ6+QTjPQPxbVO81gIMOaP2weOh
		$a_01_4 = {62 00 78 00 70 00 53 00 71 00 72 00 50 00 65 00 65 00 35 00 58 00 4d 00 78 00 53 00 51 00 74 00 4d 00 71 00 45 00 50 00 6a 00 41 00 3d 00 3d 00 } //1 bxpSqrPee5XMxSQtMqEPjA==
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}