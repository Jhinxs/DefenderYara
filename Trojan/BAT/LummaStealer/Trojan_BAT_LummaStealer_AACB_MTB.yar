
rule Trojan_BAT_LummaStealer_AACB_MTB{
	meta:
		description = "Trojan:BAT/LummaStealer.AACB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_03_0 = {16 13 07 2b 3e 00 08 13 08 16 13 09 11 08 12 09 28 ?? 00 00 0a 00 08 07 11 07 18 6f ?? 00 00 0a 1f 10 28 ?? 00 00 0a 6f ?? 00 00 0a 00 de 0d 11 09 2c 08 11 08 28 ?? 00 00 0a 00 dc } //4
	condition:
		((#a_03_0  & 1)*4) >=4
 
}