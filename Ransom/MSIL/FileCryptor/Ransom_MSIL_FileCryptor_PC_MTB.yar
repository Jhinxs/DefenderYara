
rule Ransom_MSIL_FileCryptor_PC_MTB{
	meta:
		description = "Ransom:MSIL/FileCryptor.PC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {5c 00 41 00 54 00 54 00 45 00 4e 00 54 00 49 00 4f 00 4e 00 21 00 21 00 21 00 2e 00 74 00 78 00 74 00 } //1 \ATTENTION!!!.txt
		$a_01_1 = {54 00 68 00 65 00 20 00 74 00 65 00 72 00 72 00 69 00 62 00 6c 00 65 00 20 00 76 00 69 00 72 00 75 00 73 00 20 00 68 00 61 00 73 00 20 00 63 00 61 00 70 00 74 00 75 00 72 00 65 00 64 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //1 The terrible virus has captured your files
		$a_01_2 = {5c 52 75 6e 41 73 44 6c 6c 2e 70 64 62 } //1 \RunAsDll.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}