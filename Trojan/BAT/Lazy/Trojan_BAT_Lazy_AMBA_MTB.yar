
rule Trojan_BAT_Lazy_AMBA_MTB{
	meta:
		description = "Trojan:BAT/Lazy.AMBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 08 91 06 09 91 58 20 00 01 00 00 5d 13 08 02 11 05 8f ?? 00 00 01 25 71 ?? 00 00 01 06 11 08 91 61 d2 81 ?? 00 00 01 11 05 17 58 13 05 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}