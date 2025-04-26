
rule Ransom_MSIL_Troli_A{
	meta:
		description = "Ransom:MSIL/Troli.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {69 54 6f 72 4c 6f 63 6b } //1 iTorLock
		$a_01_1 = {2a 00 2e 00 63 00 72 00 79 00 } //1 *.cry
		$a_01_2 = {50 00 61 00 79 00 6d 00 65 00 6e 00 74 00 43 00 65 00 63 00 6b 00 24 00 } //1 PaymentCeck$
		$a_01_3 = {53 00 65 00 6e 00 64 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 26 00 55 00 73 00 65 00 72 00 3d 00 74 00 72 00 75 00 65 00 26 00 49 00 72 00 6f 00 6e 00 3d 00 } //1 SendMessage&User=true&Iron=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}