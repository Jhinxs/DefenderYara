
rule Trojan_BAT_FormBook_XZBA_MTB{
	meta:
		description = "Trojan:BAT/FormBook.XZBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {18 17 8d 18 00 00 01 25 16 07 a2 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 28 ?? ?? ?? 06 26 07 28 ?? ?? ?? 0a 0a 2b 00 06 2a } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}