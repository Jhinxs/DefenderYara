
rule Trojan_Win64_Emotetcrypt_FS_MTB{
	meta:
		description = "Trojan:Win64/Emotetcrypt.FS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0b 00 00 "
		
	strings :
		$a_81_0 = {44 6c 6c 4d 61 69 6e } //10 DllMain
		$a_81_1 = {66 7a 73 63 73 63 75 67 6a 61 79 2e 64 6c 6c } //1 fzscscugjay.dll
		$a_81_2 = {61 71 67 78 73 70 68 67 6a 69 6a 65 74 66 6c 75 76 } //1 aqgxsphgjijetfluv
		$a_81_3 = {61 72 69 6e 6b 68 66 73 66 79 69 64 69 76 6e 65 6b } //1 arinkhfsfyidivnek
		$a_81_4 = {64 75 6a 6f 6f 63 79 66 65 63 6e 67 73 6a 7a 6d 78 } //1 dujoocyfecngsjzmx
		$a_81_5 = {67 78 79 78 68 77 61 64 72 6f 75 76 75 76 6d 6f 76 } //1 gxyxhwadrouvuvmov
		$a_81_6 = {7a 75 69 63 6d 74 6e 6d 2e 64 6c 6c } //1 zuicmtnm.dll
		$a_81_7 = {61 67 6a 79 7a 78 6c 6b 6e 6b 65 72 71 6b 76 76 } //1 agjyzxlknkerqkvv
		$a_81_8 = {61 6b 69 68 64 70 70 79 64 63 68 61 6f 64 6c 70 61 } //1 akihdppydchaodlpa
		$a_81_9 = {63 77 69 71 62 67 61 67 64 6f 71 6f 65 79 69 68 7a } //1 cwiqbgagdoqoeyihz
		$a_81_10 = {63 79 76 6a 64 7a 73 73 6f 67 78 74 74 69 64 7a } //1 cyvjdzssogxttidz
	condition:
		((#a_81_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1) >=15
 
}