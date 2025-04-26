
rule Trojan_BAT_NjRat_NEDW_MTB{
	meta:
		description = "Trojan:BAT/NjRat.NEDW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 06 28 54 00 00 0a 72 ?? 30 01 70 18 18 28 54 05 00 06 0b 07 28 55 00 00 0a 0c 08 6f ?? 00 00 0a 14 14 6f ?? 00 00 0a 26 2a } //10
		$a_01_1 = {6f 6d 61 72 5f 69 72 61 71 } //2 omar_iraq
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*2) >=12
 
}