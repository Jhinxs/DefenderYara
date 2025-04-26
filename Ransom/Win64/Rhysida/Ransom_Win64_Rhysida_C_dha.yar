
rule Ransom_Win64_Rhysida_C_dha{
	meta:
		description = "Ransom:Win64/Rhysida.C!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {52 68 79 73 69 64 61 } //1 Rhysida
		$a_00_1 = {43 3a 2f 57 69 6e 64 6f 77 73 2f 46 6f 6e 74 73 2f 41 72 69 61 6c 2e 74 74 66 } //1 C:/Windows/Fonts/Arial.ttf
		$a_00_2 = {43 3a 2f 55 73 65 72 73 2f 50 75 62 6c 69 63 2f 62 67 2e 6a 70 67 } //1 C:/Users/Public/bg.jpg
		$a_00_3 = {49 74 27 73 20 76 69 74 61 6c 20 74 6f 20 6e 6f 74 65 20 74 68 61 74 20 61 6e 79 20 61 74 74 65 6d 70 74 73 20 74 6f 20 64 65 63 72 79 70 74 20 74 68 65 20 65 6e 63 72 79 70 74 65 64 20 66 69 6c 65 73 20 69 6e 64 65 70 65 6e 64 65 6e 74 6c 79 20 63 6f 75 6c 64 20 6c 65 61 64 20 74 6f 20 70 65 72 6d 61 6e 65 6e 74 20 64 61 74 61 20 6c 6f 73 73 2e } //1 It's vital to note that any attempts to decrypt the encrypted files independently could lead to permanent data loss.
		$a_02_4 = {54 6f 20 75 74 69 6c 69 7a 65 20 74 68 69 73 20 6b 65 79 2c 20 76 69 73 69 74 20 6f 75 72 20 73 65 63 75 72 65 20 70 6f 72 74 61 6c 3a 20 [0-ff] 6f 6e 69 6f 6e } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1) >=5
 
}