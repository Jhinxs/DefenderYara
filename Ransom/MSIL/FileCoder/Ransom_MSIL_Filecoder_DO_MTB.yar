
rule Ransom_MSIL_Filecoder_DO_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.DO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {59 4f 55 20 48 41 56 45 20 42 45 45 4e 20 41 54 54 41 43 4b 45 44 2e 20 50 4c 45 41 53 45 20 43 4f 4e 54 41 43 54 20 4f 4e 20 54 48 49 53 20 45 4d 41 49 4c 20 49 46 20 59 4f 55 20 57 41 4e 54 20 54 4f 20 47 45 54 20 59 4f 55 52 20 46 49 4c 45 53 20 42 41 43 4b 2e } //1 YOU HAVE BEEN ATTACKED. PLEASE CONTACT ON THIS EMAIL IF YOU WANT TO GET YOUR FILES BACK.
		$a_81_1 = {54 33 63 68 5a 30 6e 33 40 31 32 33 34 } //1 T3chZ0n3@1234
		$a_81_2 = {65 6e 63 72 79 70 74 2e 65 78 65 } //1 encrypt.exe
		$a_81_3 = {45 6e 63 72 79 70 74 46 69 6c 65 } //1 EncryptFile
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}