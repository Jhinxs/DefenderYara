
rule Trojan_BAT_AsyncRat_ADI_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.ADI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {26 06 09 28 ?? ?? ?? 06 25 26 20 67 03 00 00 28 ?? ?? ?? 06 25 26 28 ?? ?? ?? 06 25 26 0a 08 1f 70 28 ?? ?? ?? 06 58 0c 08 07 8e 69 32 a2 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}