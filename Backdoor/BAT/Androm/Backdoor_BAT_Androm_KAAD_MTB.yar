
rule Backdoor_BAT_Androm_KAAD_MTB{
	meta:
		description = "Backdoor:BAT/Androm.KAAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {2b 56 09 08 6f ?? 00 00 0a 5d 13 06 09 08 6f ?? 00 00 0a 5b 13 07 08 72 ?? ?? ?? ?? 18 18 8d ?? 00 00 01 25 16 11 06 8c ?? 00 00 01 a2 25 17 11 07 8c ?? 00 00 01 a2 28 ?? 00 00 0a a5 ?? 00 00 01 13 08 12 08 28 ?? 00 00 0a 13 09 07 11 09 6f ?? 00 00 0a 09 17 58 0d 09 08 6f ?? 00 00 0a 08 6f ?? 00 00 0a 5a 32 9a } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}