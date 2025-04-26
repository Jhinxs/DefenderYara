
rule Trojan_Win32_FineCrash_A_dha{
	meta:
		description = "Trojan:Win32/FineCrash.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {ba ab f2 00 00 48 8b c8 ff 15 ?? ?? ?? ?? 48 c7 45 ?? 07 00 00 00 } //1
		$a_01_1 = {44 8b 42 08 8b 49 10 48 83 c1 09 41 8b c0 4c 3b c1 72 e6 33 c0 } //1
		$a_03_2 = {45 33 f6 44 89 74 24 ?? c7 45 ?? 43 00 3a 00 c7 45 ?? 5c 00 00 00 44 89 74 24 } //2
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*2) >=2
 
}