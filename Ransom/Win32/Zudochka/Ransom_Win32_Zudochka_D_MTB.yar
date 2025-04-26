
rule Ransom_Win32_Zudochka_D_MTB{
	meta:
		description = "Ransom:Win32/Zudochka.D!MTB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {21 00 21 00 46 00 41 00 51 00 20 00 66 00 6f 00 72 00 20 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 21 00 21 00 2e 00 74 00 78 00 74 00 } //1 !!FAQ for Decryption!!.txt
		$a_01_1 = {43 72 79 70 74 41 70 70 2e 70 64 62 } //1 CryptApp.pdb
		$a_01_2 = {41 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //1 All your files are encrypted
		$a_01_3 = {44 6f 20 6e 6f 74 20 72 65 6e 61 6d 65 20 65 6e 63 72 79 70 74 65 64 20 66 69 6c 65 73 2e } //1 Do not rename encrypted files.
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}