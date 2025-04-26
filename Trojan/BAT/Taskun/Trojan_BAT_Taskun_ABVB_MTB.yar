
rule Trojan_BAT_Taskun_ABVB_MTB{
	meta:
		description = "Trojan:BAT/Taskun.ABVB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {16 0d 2b 27 00 07 09 18 6f ?? 00 00 0a 1f 10 28 ?? 00 00 0a 28 ?? 00 00 0a 16 91 13 05 08 11 05 6f ?? 00 00 0a 00 09 18 58 0d 00 09 07 6f ?? 00 00 0a fe 04 13 06 11 06 2d ca } //4
		$a_01_1 = {34 00 44 00 35 00 41 00 39 00 30 00 } //1 4D5A90
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}