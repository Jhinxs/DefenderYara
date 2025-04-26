
rule Trojan_BAT_Kryptik_SAMD_MTB{
	meta:
		description = "Trojan:BAT/Kryptik.SAMD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,3e 00 3e 00 0c 00 00 "
		
	strings :
		$a_80_0 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //CreateDecryptor  10
		$a_81_1 = {47 65 74 42 79 74 65 73 } //10 GetBytes
		$a_81_2 = {47 65 74 4d 65 74 68 6f 64 } //10 GetMethod
		$a_81_3 = {47 65 74 54 79 70 65 } //10 GetType
		$a_01_4 = {00 50 61 79 00 } //10
		$a_81_5 = {49 6e 76 6f 6b 65 } //10 Invoke
		$a_01_6 = {46 55 43 4b 4d 75 73 72 } //1 FUCKMusr
		$a_01_7 = {56 6f 6f 72 46 6f 65 66 } //1 VoorFoef
		$a_01_8 = {44 65 65 6d 42 61 6c } //1 DeemBal
		$a_01_9 = {4d 75 73 72 } //1 Musr
		$a_01_10 = {47 65 6b 6b 6b } //1 Gekkk
		$a_01_11 = {53 65 35 66 73 } //1 Se5fs
	condition:
		((#a_80_0  & 1)*10+(#a_81_1  & 1)*10+(#a_81_2  & 1)*10+(#a_81_3  & 1)*10+(#a_01_4  & 1)*10+(#a_81_5  & 1)*10+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=62
 
}