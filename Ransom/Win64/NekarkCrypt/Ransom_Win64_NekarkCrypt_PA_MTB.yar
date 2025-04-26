
rule Ransom_Win64_NekarkCrypt_PA_MTB{
	meta:
		description = "Ransom:Win64/NekarkCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {5c 52 45 41 44 4d 45 2e 74 78 74 } //1 \README.txt
		$a_01_1 = {2e 70 79 74 68 6f 6e 61 6e 79 77 68 65 72 65 2e 63 6f 6d } //1 .pythonanywhere.com
		$a_01_2 = {59 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //4 Your files have been encrypted
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*4) >=6
 
}