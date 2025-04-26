
rule Ransom_Win32_Ikrik_A{
	meta:
		description = "Ransom:Win32/Ikrik.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {4c 69 63 6b 2e 72 65 61 6c 2e 64 65 63 72 79 70 74 65 72 } //1 Lick.real.decrypter
		$a_01_1 = {4b 69 72 6b 2e 72 65 61 6c } //1 Kirk.real
		$a_01_2 = {43 72 79 70 74 47 65 6e 52 61 6e 64 6f 6d } //1 CryptGenRandom
		$a_01_3 = {70 79 74 68 6f 6e } //1 python
		$a_01_4 = {73 70 79 69 62 6f 6f 74 } //1 spyiboot
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}