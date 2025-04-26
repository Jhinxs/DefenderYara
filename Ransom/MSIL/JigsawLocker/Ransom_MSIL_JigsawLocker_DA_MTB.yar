
rule Ransom_MSIL_JigsawLocker_DA_MTB{
	meta:
		description = "Ransom:MSIL/JigsawLocker.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 07 00 00 "
		
	strings :
		$a_81_0 = {59 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //10 Your files have been encrypted
		$a_81_1 = {45 6e 63 72 79 70 74 65 64 46 69 6c 65 73 } //5 EncryptedFiles
		$a_81_2 = {42 69 74 63 6f 69 6e 42 6c 61 63 6b 6d 61 69 6c 65 72 } //4 BitcoinBlackmailer
		$a_81_3 = {2e 70 6f 72 6e 6f 72 61 6e 73 6f 6d } //3 .pornoransom
		$a_81_4 = {70 72 6f 74 6f 6e 6d 61 69 6c 2e 63 6f 6d } //5 protonmail.com
		$a_81_5 = {42 4c 4f 43 4b 45 44 } //4 BLOCKED
		$a_81_6 = {79 6f 75 72 20 6f 77 6e 20 72 69 73 6b } //3 your own risk
	condition:
		((#a_81_0  & 1)*10+(#a_81_1  & 1)*5+(#a_81_2  & 1)*4+(#a_81_3  & 1)*3+(#a_81_4  & 1)*5+(#a_81_5  & 1)*4+(#a_81_6  & 1)*3) >=22
 
}