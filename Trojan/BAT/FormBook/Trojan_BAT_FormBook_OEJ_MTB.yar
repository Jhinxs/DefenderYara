
rule Trojan_BAT_FormBook_OEJ_MTB{
	meta:
		description = "Trojan:BAT/FormBook.OEJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 0e 11 0f 9a 13 05 07 11 05 6f ?? ?? ?? 0a 74 ?? ?? ?? 1b 13 06 06 11 06 6f ?? ?? ?? 0a 11 0f 17 58 13 0f 11 0f 11 0e 8e 69 32 d4 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}