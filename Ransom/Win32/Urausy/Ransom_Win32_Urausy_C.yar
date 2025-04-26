
rule Ransom_Win32_Urausy_C{
	meta:
		description = "Ransom:Win32/Urausy.C,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {81 3e 53 45 4c 46 0f 84 ?? ?? ?? ?? 81 3e 00 50 4b 00 } //1
		$a_03_1 = {83 c9 ff 31 c0 f2 66 af c7 47 fa 6e 00 69 00 c7 47 f6 2e 00 69 00 56 ff 93 ?? ?? ?? ?? c7 47 fa 61 00 74 00 c7 47 f6 2e 00 64 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}