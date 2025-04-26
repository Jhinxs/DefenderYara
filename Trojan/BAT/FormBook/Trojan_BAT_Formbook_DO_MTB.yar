
rule Trojan_BAT_Formbook_DO_MTB{
	meta:
		description = "Trojan:BAT/Formbook.DO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {52 65 65 70 61 68 44 61 74 61 53 65 74 32 42 69 6e 64 69 6e 67 53 6f 75 72 63 65 } //1 ReepahDataSet2BindingSource
		$a_81_1 = {52 65 65 70 61 68 43 6f 6e 6e 65 63 74 69 6f 6e 53 74 72 69 6e 67 } //1 ReepahConnectionString
		$a_81_2 = {52 65 65 70 61 68 44 61 74 61 53 65 74 } //1 ReepahDataSet
		$a_81_3 = {67 65 74 5f 43 6f 6e 6e 65 63 74 69 6f 6e 53 74 72 69 6e 67 } //1 get_ConnectionString
		$a_81_4 = {49 6e 74 65 72 6c 6f 63 6b 65 64 } //1 Interlocked
		$a_81_5 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_81_6 = {43 6f 6d 70 61 72 65 53 74 72 69 6e 67 } //1 CompareString
		$a_81_7 = {2e 22 34 23 37 26 3c 27 41 28 46 29 49 2a 4c 2b 4e 2c 50 2d 55 2e 5a } //1 ."4#7&<'A(F)I*L+N,P-U.Z
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}