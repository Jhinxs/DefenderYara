
rule Trojan_Win32_Agent_EEC{
	meta:
		description = "Trojan:Win32/Agent.EEC,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {6a 00 8d 85 ?? ?? ff ff 50 68 00 2a 00 00 68 ?? ?? 40 00 8b 8d ?? ?? ff ff 51 8b 95 ?? ?? ff ff 8b 82 ?? 00 00 00 ff d0 } //1
		$a_03_1 = {68 67 6d 56 40 8b 4d ?? e8 ?? ?? 00 00 8b 4d ?? 89 41 40 68 81 69 4c 21 8b 4d } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}