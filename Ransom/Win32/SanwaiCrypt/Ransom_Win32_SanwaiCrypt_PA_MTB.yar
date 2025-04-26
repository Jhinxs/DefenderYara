
rule Ransom_Win32_SanwaiCrypt_PA_MTB{
	meta:
		description = "Ransom:Win32/SanwaiCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {2e 73 61 6e 77 61 69 } //1 .sanwai
		$a_01_1 = {79 6f 75 72 20 6f 77 6e 20 72 69 73 6b } //1 your own risk
		$a_01_2 = {49 4d 50 4f 52 54 41 4e 54 2e 68 74 6d 6c } //1 IMPORTANT.html
		$a_01_3 = {52 45 41 44 4d 45 21 21 21 21 2e 74 78 74 } //1 README!!!!.txt
		$a_01_4 = {5c 67 65 72 6a 6a 6b 72 6b 6a 6a 6b 33 33 2e 70 64 62 } //1 \gerjjkrkjjk33.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}