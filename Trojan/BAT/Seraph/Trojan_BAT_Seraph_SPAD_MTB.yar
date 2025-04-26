
rule Trojan_BAT_Seraph_SPAD_MTB{
	meta:
		description = "Trojan:BAT/Seraph.SPAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {73 82 00 00 0a 0c 08 28 ?? ?? ?? 0a 03 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0b 1f 10 8d 5c 00 00 01 0d 02 09 1f 10 28 ?? ?? ?? 0a 00 02 8e 69 } //2
		$a_03_1 = {11 05 07 6f ?? ?? ?? 0a 00 11 05 17 6f ?? ?? ?? 0a 00 11 05 09 6f ?? ?? ?? 0a 00 00 11 05 6f ?? ?? ?? 0a 13 06 11 06 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}