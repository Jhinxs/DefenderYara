
rule Trojan_BAT_FormBook_USL_MTB{
	meta:
		description = "Trojan:BAT/FormBook.USL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 07 03 07 91 6f ?? ?? ?? 0a 00 00 07 25 17 59 0b 16 fe 02 0c 08 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}