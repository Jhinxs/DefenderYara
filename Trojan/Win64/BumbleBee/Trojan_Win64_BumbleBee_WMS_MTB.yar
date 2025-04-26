
rule Trojan_Win64_BumbleBee_WMS_MTB{
	meta:
		description = "Trojan:Win64/BumbleBee.WMS!MTB,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_01_0 = {4d 8b 81 70 03 00 00 49 63 81 34 05 00 00 49 63 91 30 05 00 00 41 8b 0c 80 41 31 0c 90 41 8b 89 4c 05 00 00 81 e1 1f 00 00 80 7d 07 } //10
		$a_01_1 = {43 53 53 43 6f 64 65 } //1 CSSCode
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1) >=11
 
}