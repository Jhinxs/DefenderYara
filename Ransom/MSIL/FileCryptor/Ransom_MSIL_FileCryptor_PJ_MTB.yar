
rule Ransom_MSIL_FileCryptor_PJ_MTB{
	meta:
		description = "Ransom:MSIL/FileCryptor.PJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {34 00 35 00 2d 00 35 00 31 00 32 00 5f 00 33 00 35 00 31 00 38 00 32 00 } //1 45-512_35182
		$a_01_1 = {2e 00 6a 00 67 00 79 00 } //1 .jgy
		$a_01_2 = {4a 00 47 00 59 00 2e 00 65 00 78 00 65 00 } //1 JGY.exe
		$a_01_3 = {55 00 48 00 2d 00 4f 00 48 00 21 00 20 00 59 00 4f 00 55 00 52 00 20 00 46 00 49 00 4c 00 45 00 53 00 20 00 48 00 41 00 56 00 45 00 20 00 42 00 45 00 45 00 4e 00 20 00 54 00 41 00 4b 00 45 00 4e 00 20 00 4f 00 56 00 45 00 52 00 21 00 } //1 UH-OH! YOUR FILES HAVE BEEN TAKEN OVER!
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Ransom_MSIL_FileCryptor_PJ_MTB_2{
	meta:
		description = "Ransom:MSIL/FileCryptor.PJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 00 52 00 65 00 61 00 64 00 4d 00 65 00 5f 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 2e 00 74 00 78 00 74 00 } //1 \ReadMe_ransom.txt
		$a_01_1 = {2e 00 6e 00 65 00 70 00 74 00 75 00 6e 00 65 00 70 00 } //1 .neptunep
		$a_01_2 = {21 00 20 00 43 00 79 00 6e 00 65 00 74 00 20 00 52 00 61 00 6e 00 73 00 6f 00 6d 00 20 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 28 00 44 00 4f 00 4e 00 27 00 54 00 20 00 44 00 45 00 4c 00 45 00 54 00 45 00 29 00 } //1 ! Cynet Ransom Protection(DON'T DELETE)
		$a_01_3 = {5c 4e 65 70 74 75 6e 65 5f 72 65 6d 6f 74 65 2e 70 64 62 } //1 \Neptune_remote.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}