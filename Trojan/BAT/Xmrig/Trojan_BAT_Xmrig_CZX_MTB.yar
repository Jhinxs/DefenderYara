
rule Trojan_BAT_Xmrig_CZX_MTB{
	meta:
		description = "Trojan:BAT/Xmrig.CZX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_03_0 = {28 11 00 00 06 0a 28 ?? ?? ?? ?? 06 6f ?? ?? ?? ?? 28 ?? ?? ?? ?? 28 ?? ?? ?? ?? 0b dd } //5
		$a_01_1 = {02 06 91 0c 02 06 02 07 91 9c 02 07 08 9c 06 17 58 0a 07 17 59 0b 06 07 32 } //5
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*5) >=10
 
}