
rule Trojan_BAT_Redline_AGCQ_MTB{
	meta:
		description = "Trojan:BAT/Redline.AGCQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 01 11 03 11 02 11 03 8e 69 5d 91 7e ?? ?? ?? 04 11 02 91 61 d2 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}