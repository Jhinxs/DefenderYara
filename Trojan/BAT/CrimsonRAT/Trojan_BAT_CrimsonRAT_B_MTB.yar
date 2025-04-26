
rule Trojan_BAT_CrimsonRAT_B_MTB{
	meta:
		description = "Trojan:BAT/CrimsonRAT.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {62 64 73 73 [0-20] 6f 6e 6c 69 6e 65 6e 74 3d 51 [0-20] 62 64 61 67 65 6e 74 [0-20] 6d 73 73 65 63 65 73 3d 4d [0-20] 66 73 73 6d } //1
		$a_00_1 = {44 45 53 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 DESCryptoServiceProvider
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}