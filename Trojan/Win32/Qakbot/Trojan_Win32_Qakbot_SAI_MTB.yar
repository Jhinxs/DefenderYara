
rule Trojan_Win32_Qakbot_SAI_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.SAI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8a 04 3e 8b 4d ?? 02 c2 0f b6 c0 8a 04 38 30 04 ?? 43 8a 45 0b 3b 5d ?? 7c } //1
		$a_00_1 = {55 70 64 74 } //1 Updt
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}