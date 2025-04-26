
rule Trojan_Win32_Trickbot_PE_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.PE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 02 00 00 "
		
	strings :
		$a_02_0 = {c1 e9 02 8b 06 83 c6 04 8b 5d ?? 31 d8 89 07 83 c7 04 e2 ?? ff 65 } //1
		$a_02_1 = {8b 04 24 89 45 ?? 83 c4 04 8b 55 ?? 8b 12 8d bd ?? ?? ff ff 8b 75 ?? 83 c6 04 b9 31 00 00 00 8b 1e 31 d3 89 1f b8 04 00 00 00 01 c6 01 c7 49 83 f9 00 75 ?? 8b 45 ?? 66 31 c0 66 bb 4d 5a 66 39 18 74 } //20
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*20) >=21
 
}