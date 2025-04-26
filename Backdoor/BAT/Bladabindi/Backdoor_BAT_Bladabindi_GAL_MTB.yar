
rule Backdoor_BAT_Bladabindi_GAL_MTB{
	meta:
		description = "Backdoor:BAT/Bladabindi.GAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {0b 07 06 6f ?? 00 00 0a 16 73 ?? 00 00 0a 0c 02 8e b7 17 d6 8d ?? 00 00 01 0d 08 09 16 02 8e b7 6f ?? 00 00 0a 13 04 11 04 17 d6 8d ?? 00 00 01 13 05 09 11 05 11 04 28 ?? 00 00 0a 08 6f ?? 00 00 0a de 10 } //3
		$a_01_1 = {30 00 48 00 55 00 73 00 66 00 32 00 4b 00 78 00 63 00 67 00 53 00 74 00 45 00 69 00 68 00 47 00 65 00 36 00 32 00 56 00 69 00 54 00 4d 00 36 00 32 00 6d 00 4c 00 65 00 31 00 45 00 78 00 62 00 30 00 68 00 65 00 39 00 4e 00 57 00 62 00 58 00 65 00 44 00 33 00 6c 00 41 00 77 00 } //2 0HUsf2KxcgStEihGe62ViTM62mLe1Exb0he9NWbXeD3lAw
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*2) >=5
 
}