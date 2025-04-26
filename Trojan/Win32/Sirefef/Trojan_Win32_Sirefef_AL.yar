
rule Trojan_Win32_Sirefef_AL{
	meta:
		description = "Trojan:Win32/Sirefef.AL,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {b9 78 56 34 12 31 08 d1 c1 83 c0 04 4b 75 f6 } //1
		$a_01_1 = {74 1e 68 02 01 00 00 eb 0e ff 75 f4 ff 15 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Trojan_Win32_Sirefef_AL_2{
	meta:
		description = "Trojan:Win32/Sirefef.AL,SIGNATURE_TYPE_ARHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {b9 78 56 34 12 31 08 d1 c1 83 c0 04 4b 75 f6 } //1
		$a_01_1 = {74 1e 68 02 01 00 00 eb 0e ff 75 f4 ff 15 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}