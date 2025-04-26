
rule Trojan_BAT_FormBook_ZBN_MTB{
	meta:
		description = "Trojan:BAT/FormBook.ZBN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {26 2b 03 0b 2b 00 2b 3b 2b 3c 72 ?? ?? ?? 70 2b 3c 2b 41 } //1
		$a_03_1 = {26 1c 2c 0d 2b 3f 2b 40 2b 41 06 18 6f ?? ?? ?? 0a 02 0d 06 6f ?? ?? ?? 0a 09 16 09 8e 69 6f } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}