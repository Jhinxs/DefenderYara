
rule Trojan_BAT_Remcos_RBN_MTB{
	meta:
		description = "Trojan:BAT/Remcos.RBN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {26 06 08 6f ?? ?? ?? 0a 06 18 6f ?? ?? ?? 0a 02 0d 06 6f ?? ?? ?? 0a 09 16 09 8e 69 6f ?? ?? ?? 0a 13 04 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}