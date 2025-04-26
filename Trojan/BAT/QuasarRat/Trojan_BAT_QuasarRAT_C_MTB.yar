
rule Trojan_BAT_QuasarRAT_C_MTB{
	meta:
		description = "Trojan:BAT/QuasarRAT.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_01_0 = {08 11 04 02 11 04 91 11 0a 61 d2 9c } //2
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}