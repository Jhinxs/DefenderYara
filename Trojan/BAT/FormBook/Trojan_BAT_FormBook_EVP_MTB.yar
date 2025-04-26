
rule Trojan_BAT_FormBook_EVP_MTB{
	meta:
		description = "Trojan:BAT/FormBook.EVP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {02 11 04 91 07 61 06 ?? ?? ?? ?? ?? 09 91 61 13 05 1d 13 0a } //1
		$a_01_1 = {02 02 8e 69 17 59 91 1f 70 61 0b 18 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}