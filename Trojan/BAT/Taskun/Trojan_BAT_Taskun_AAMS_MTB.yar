
rule Trojan_BAT_Taskun_AAMS_MTB{
	meta:
		description = "Trojan:BAT/Taskun.AAMS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {08 11 05 1f 16 5d 28 ?? 00 00 06 d2 13 08 07 11 05 17 58 07 8e 69 5d 91 13 09 } //2
		$a_01_1 = {11 07 11 08 61 11 09 20 00 01 00 00 58 20 00 01 00 00 5d 59 13 0a } //2
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}