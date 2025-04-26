
rule Ransom_MSIL_Filecoder_DW_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.DW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_81_0 = {49 6e 73 74 72 75 63 74 69 6f 6e 73 2e 74 78 74 } //1 Instructions.txt
		$a_81_1 = {61 6c 6c 20 79 6f 75 72 20 64 65 73 6b 74 6f 70 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 21 } //1 all your desktop files have been encrypted!
		$a_81_2 = {52 49 50 20 59 6f 75 72 20 70 65 72 73 6f 6e 61 6c 20 66 69 6c 65 73 20 69 66 20 79 6f 75 20 64 6f 6e 74 20 70 61 79 2e 2e 2e } //1 RIP Your personal files if you dont pay...
		$a_03_3 = {54 6f 20 64 65 63 72 79 70 74 2c 20 73 65 6e 64 20 24 [0-04] 20 74 6f 20 74 68 65 20 62 69 74 63 6f 69 6e 20 77 61 6c 6c 65 74 3a } //1
		$a_81_4 = {2e 68 69 6d 72 } //1 .himr
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_03_3  & 1)*1+(#a_81_4  & 1)*1) >=4
 
}