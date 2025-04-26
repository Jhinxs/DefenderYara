
rule Backdoor_Win32_Poison_BO{
	meta:
		description = "Backdoor:Win32/Poison.BO,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {50 f3 a5 66 c7 45 ?? 44 00 66 c7 45 ?? 74 00 66 c7 45 ?? 76 00 66 c7 45 ?? 72 00 66 c7 45 ?? 63 00 66 c7 45 ?? 75 00 66 c7 45 ?? 67 00 ff } //1
		$a_03_1 = {83 45 fc 02 8d 45 e8 83 c3 04 50 ff d6 39 45 fc 59 72 e9 90 09 04 00 66 83 33 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}