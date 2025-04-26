
rule Trojan_BAT_AsyncRAT_KAA_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.KAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {62 00 6e 00 64 00 66 00 2e 00 65 00 78 00 65 00 } //1 bndf.exe
		$a_01_1 = {50 61 73 73 77 6f 72 64 44 65 72 69 76 65 42 79 74 65 73 } //1 PasswordDeriveBytes
		$a_01_2 = {44 65 63 72 79 70 74 } //1 Decrypt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}