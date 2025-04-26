
rule Ransom_MSIL_KfualdCrypt_PA_MTB{
	meta:
		description = "Ransom:MSIL/KfualdCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2e 00 6b 00 66 00 75 00 61 00 6c 00 64 00 } //1 .kfuald
		$a_01_1 = {5f 00 45 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 24 00 } //1 _Encrypted$
		$a_01_2 = {55 00 6d 00 46 00 75 00 63 00 32 00 39 00 74 00 4a 00 41 00 3d 00 3d 00 } //1 UmFuc29tJA==
		$a_03_3 = {5c 52 61 6e 73 6f 6d 5c 52 61 6e 73 6f 6d 5c [0-08] 5c [0-10] 5c 52 61 6e 73 6f 6d 2e 70 64 62 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}