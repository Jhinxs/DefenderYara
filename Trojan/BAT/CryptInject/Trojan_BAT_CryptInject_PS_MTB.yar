
rule Trojan_BAT_CryptInject_PS_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.PS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {24 64 65 39 39 64 36 38 30 2d 36 35 33 31 2d 34 32 33 62 2d 38 65 35 62 2d 61 31 35 66 39 63 66 66 66 65 31 32 } //1 $de99d680-6531-423b-8e5b-a15f9cfffe12
		$a_81_1 = {41 6b 75 20 46 6f 72 6d } //1 Aku Form
		$a_81_2 = {41 6b 75 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 Aku.Properties.Resources
		$a_81_3 = {56 65 6e 64 65 74 74 61 20 49 6e 63 2e } //1 Vendetta Inc.
		$a_81_4 = {41 63 63 6f 75 6e 74 20 63 72 65 61 74 65 64 2c 20 70 6c 65 61 73 65 20 6c 6f 67 69 6e 21 } //1 Account created, please login!
		$a_81_5 = {73 63 61 6e 6e 65 64 62 61 72 63 6f 64 65 22 3a 22 } //1 scannedbarcode":"
		$a_81_6 = {44 65 76 65 6c 6f 70 65 72 3a 20 54 61 72 61 76 61 6e 6e 20 48 65 6e 67 } //1 Developer: Taravann Heng
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}