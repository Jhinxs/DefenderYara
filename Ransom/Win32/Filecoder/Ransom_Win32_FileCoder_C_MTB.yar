
rule Ransom_Win32_FileCoder_C_MTB{
	meta:
		description = "Ransom:Win32/FileCoder.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_81_0 = {5c 44 65 63 72 79 70 74 20 49 6e 73 74 72 75 63 74 69 6f 6e 73 2e 74 78 74 } //1 \Decrypt Instructions.txt
		$a_81_1 = {41 6c 6c 20 6f 66 20 79 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 2c 20 74 6f 20 64 65 63 72 79 70 74 20 74 68 65 6d 20 77 72 69 74 65 20 75 73 20 74 6f 20 65 6d 61 69 6c 3a } //1 All of your files are encrypted, to decrypt them write us to email:
		$a_81_2 = {64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //1 delete shadows /all /quiet
		$a_81_3 = {44 65 63 72 79 70 74 69 6f 6e 20 4b 65 79 3a } //1 Decryption Key:
		$a_81_4 = {5c 52 65 6c 65 61 73 65 5c 50 61 72 61 45 6e 63 72 79 70 74 2e 70 64 62 } //1 \Release\ParaEncrypt.pdb
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=4
 
}