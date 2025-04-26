
rule Ransom_Win32_FileCoder_SG_MTB{
	meta:
		description = "Ransom:Win32/FileCoder.SG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {57 65 20 67 6f 74 20 79 6f 75 72 20 64 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 66 69 6c 65 73 20 65 6e 63 72 79 70 74 65 64 20 61 6e 64 20 79 6f 75 20 63 61 6e 6e 6f 74 20 61 63 63 65 73 73 20 74 68 65 6d 2e } //1 We got your documents and files encrypted and you cannot access them.
		$a_81_1 = {6c 6f 73 65 20 61 6c 6c 20 6f 66 20 79 6f 75 72 20 64 61 74 61 20 61 6e 64 20 66 69 6c 65 73 2e 20 48 6f 77 20 6d 75 63 68 20 74 69 6d 65 20 77 6f 75 6c 64 20 69 74 20 74 61 6b 65 20 74 6f 20 72 65 63 6f 76 65 72 20 6c 6f 73 73 65 73 3f 20 59 6f 75 20 6f 6e 6c 79 20 6d 61 79 20 67 75 65 73 73 2e } //1 lose all of your data and files. How much time would it take to recover losses? You only may guess.
		$a_81_2 = {77 65 20 77 69 6c 6c 20 65 69 74 68 65 72 20 73 65 6e 64 20 74 68 6f 73 65 20 64 61 74 61 20 74 6f 20 72 69 76 61 6c 73 2c 20 6f 72 20 70 75 62 6c 69 73 68 20 74 68 65 6d 2e } //1 we will either send those data to rivals, or publish them.
		$a_81_3 = {41 6c 6c 20 77 65 20 6e 65 65 64 20 69 73 20 74 6f 20 65 61 72 6e 2e 20 53 68 6f 75 6c 64 20 77 65 20 62 65 20 75 6e 66 61 69 72 20 67 75 79 73 2c 20 6e 6f 20 6f 6e 65 20 77 6f 75 6c 64 20 77 6f 72 6b 20 77 69 74 68 20 75 73 2e } //1 All we need is to earn. Should we be unfair guys, no one would work with us.
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}