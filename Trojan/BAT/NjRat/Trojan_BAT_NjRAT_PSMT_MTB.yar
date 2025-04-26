
rule Trojan_BAT_NjRAT_PSMT_MTB{
	meta:
		description = "Trojan:BAT/NjRAT.PSMT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {26 72 af 00 00 70 28 ?? ?? ?? 0a 00 28 06 00 00 06 6f ?? ?? ?? 0a 72 d3 00 00 70 72 af 00 00 70 6f ?? ?? ?? 0a 00 73 ?? ?? ?? 0a 0d 09 6f ?? ?? ?? 0a 72 af 00 00 70 6f ?? ?? ?? 0a 00 09 6f 4c 00 00 0a 26 2a } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}