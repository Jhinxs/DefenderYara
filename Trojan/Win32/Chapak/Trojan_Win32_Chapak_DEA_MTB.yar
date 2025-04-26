
rule Trojan_Win32_Chapak_DEA_MTB{
	meta:
		description = "Trojan:Win32/Chapak.DEA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 05 00 00 "
		
	strings :
		$a_81_0 = {72 65 68 37 37 37 6b 36 6a 68 35 34 67 7a 34 } //1 reh777k6jh54gz4
		$a_81_1 = {71 66 77 6f 70 6b 65 61 6d 6b 6f 66 76 76 63 73 } //1 qfwopkeamkofvvcs
		$a_81_2 = {6e 63 76 76 67 62 65 66 6a 77 6e 72 65 72 } //1 ncvvgbefjwnrer
		$a_81_3 = {6d 6e 61 6f 69 6a 66 77 65 70 6b 77 69 34 66 72 67 } //1 mnaoijfwepkwi4frg
		$a_81_4 = {65 69 73 68 66 61 77 69 6e 6f 65 66 6a 66 } //1 eishfawinoefjf
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=1
 
}