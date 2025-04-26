
rule Trojan_BAT_AsyncRat_AMBB_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.AMBB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 07 06 25 13 04 6f ?? 00 00 0a 11 04 6f ?? 00 00 0a 73 ?? 00 00 0a 0c 08 07 6f ?? 00 00 0a 17 73 ?? 00 00 0a 0d 09 02 1f 10 02 8e 69 1f 10 59 6f ?? 00 00 0a 09 6f ?? 00 00 0a 08 6f ?? 00 00 0a 2a } //2
		$a_03_1 = {06 0a 06 02 7d ?? 00 00 04 06 7b ?? 00 00 04 17 6f ?? 00 00 0a 06 fe ?? ?? 00 00 06 73 ?? 00 00 0a 28 ?? 00 00 2b 28 ?? 00 00 2b 73 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}