
rule Trojan_BAT_Redline_QP_MTB{
	meta:
		description = "Trojan:BAT/Redline.QP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_03_0 = {04 fe 0c 02 00 91 61 d2 9c 00 fe 0c 02 00 20 ?? ?? ?? 00 58 fe 0e 02 00 fe 0c 02 00 7e ?? ?? ?? 04 8e 69 fe 04 fe 0e 03 00 fe 0c 03 00 } //10
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1) >=11
 
}