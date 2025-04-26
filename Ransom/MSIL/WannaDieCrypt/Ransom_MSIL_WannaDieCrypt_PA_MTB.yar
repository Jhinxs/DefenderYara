
rule Ransom_MSIL_WannaDieCrypt_PA_MTB{
	meta:
		description = "Ransom:MSIL/WannaDieCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4d 69 63 72 6f 73 6f 66 74 20 53 79 73 74 65 6d 2e 65 78 65 } //1 Microsoft System.exe
		$a_01_1 = {59 00 6f 00 75 00 72 00 20 00 50 00 43 00 20 00 69 00 73 00 20 00 6e 00 6f 00 77 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 21 00 } //1 Your PC is now encrypted!
		$a_01_2 = {59 00 6f 00 75 00 72 00 20 00 50 00 43 00 20 00 69 00 73 00 20 00 6e 00 6f 00 77 00 20 00 69 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 20 00 77 00 69 00 74 00 68 00 20 00 57 00 61 00 6e 00 6e 00 61 00 44 00 69 00 65 00 20 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 } //1 Your PC is now infected with WannaDie ransomware
		$a_01_3 = {57 00 61 00 6e 00 6e 00 61 00 44 00 69 00 65 00 2d 00 49 00 44 00 2d 00 32 00 33 00 34 00 31 00 35 00 33 00 } //1 WannaDie-ID-234153
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}