
rule Ransom_MSIL_HiddenTear_DE_MTB{
	meta:
		description = "Ransom:MSIL/HiddenTear.DE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {66 69 6c 65 45 6e 63 72 79 70 74 69 6f 6e 72 63 34 } //1 fileEncryptionrc4
		$a_81_1 = {2e 5b 6e 65 66 74 65 74 40 74 75 74 61 6e 6f 74 61 2e 63 6f 6d 5d 2e 62 6f 6f 6d } //1 .[neftet@tutanota.com].boom
		$a_81_2 = {52 45 41 44 5f 4d 45 2e 68 74 61 } //1 READ_ME.hta
		$a_81_3 = {2f 43 20 63 68 6f 69 63 65 20 2f 43 20 59 20 2f 4e 20 2f 44 20 59 20 2f 54 20 31 20 26 20 44 65 6c } //1 /C choice /C Y /N /D Y /T 1 & Del
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}