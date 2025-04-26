
rule Ransom_Win32_LaposadaCrypt_PAA_MTB{
	meta:
		description = "Ransom:Win32/LaposadaCrypt.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_81_0 = {2e 6c 61 70 6f 73 61 64 61 2d } //1 .laposada-
		$a_81_1 = {2d 2d 6b 69 6c 6c 2d 73 75 73 70 } //1 --kill-susp
		$a_01_2 = {45 6e 63 72 79 70 74 69 6f 6e 53 74 61 67 65 } //1 EncryptionStage
		$a_01_3 = {72 65 63 6f 76 65 72 20 61 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 2e } //1 recover all your files.
		$a_01_4 = {6e 65 74 77 6f 72 6b 20 77 61 73 20 63 6f 6d 70 72 6f 6d 69 73 65 64 2e } //1 network was compromised.
		$a_81_5 = {21 21 6c 61 70 6f 73 61 64 61 5f 68 6f 77 74 6f 64 65 63 69 70 68 65 72 2e 69 6e 66 } //1 !!laposada_howtodecipher.inf
		$a_81_6 = {21 20 63 79 6e 65 74 20 72 61 6e 73 6f 6d 20 70 72 6f 74 65 63 74 69 6f 6e 28 64 6f 6e 27 74 20 64 65 6c 65 74 65 29 } //1 ! cynet ransom protection(don't delete)
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=5
 
}