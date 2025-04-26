
rule Ransom_MSIL_Kuhuqubata_A{
	meta:
		description = "Ransom:MSIL/Kuhuqubata.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {65 6e 63 72 79 70 74 44 69 72 65 63 74 6f 72 79 } //1 encryptDirectory
		$a_01_1 = {53 00 65 00 65 00 20 00 79 00 6f 00 75 00 20 00 69 00 6e 00 20 00 6d 00 79 00 20 00 49 00 43 00 51 00 } //1 See you in my ICQ
		$a_01_2 = {2e 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 00 0b 2e 00 64 00 6f 00 63 00 78 } //1
		$a_01_3 = {5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 52 00 45 00 41 00 44 00 4d 00 45 00 21 00 21 00 21 00 2e 00 74 00 78 00 74 00 } //2 \Desktop\README!!!.txt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2) >=4
 
}