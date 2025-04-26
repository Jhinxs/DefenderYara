
rule Trojan_BAT_DcRat_NED_MTB{
	meta:
		description = "Trojan:BAT/DcRat.NED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 07 00 00 "
		
	strings :
		$a_01_0 = {51 4d 59 77 44 78 75 4c 54 75 } //2 QMYwDxuLTu
		$a_01_1 = {57 52 4c 56 31 6c 58 49 73 57 } //2 WRLV1lXIsW
		$a_01_2 = {57 6a 49 78 4b 6a 62 65 4e 30 } //2 WjIxKjbeN0
		$a_01_3 = {43 41 61 55 41 41 6b 65 79 35 } //2 CAaUAAkey5
		$a_01_4 = {70 48 52 74 74 65 30 52 4c 35 } //2 pHRtte0RL5
		$a_01_5 = {67 65 74 5f 50 72 6f 63 65 73 73 6f 72 43 6f 75 6e 74 } //1 get_ProcessorCount
		$a_01_6 = {50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 79 6c 65 } //1 ProcessWindowStyle
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=12
 
}