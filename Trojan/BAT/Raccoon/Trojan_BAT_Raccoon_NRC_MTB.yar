
rule Trojan_BAT_Raccoon_NRC_MTB{
	meta:
		description = "Trojan:BAT/Raccoon.NRC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {28 c7 00 00 06 06 28 ?? 00 00 06 6f ?? 00 00 0a 6f ?? 00 00 0a 0b 73 ?? 00 00 0a 0c 7e ?? 00 00 04 08 07 16 73 ?? 00 00 0a } //5
		$a_01_1 = {69 6e 74 65 72 6e 61 6c 2e 61 6e 6e 6f 74 61 74 69 6f 6e 73 2e 47 75 61 72 64 65 64 42 79 2e 6d 6f 64 75 6c 65 32 33 } //1 internal.annotations.GuardedBy.module23
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}