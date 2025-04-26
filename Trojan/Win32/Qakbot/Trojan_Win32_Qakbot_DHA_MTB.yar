
rule Trojan_Win32_Qakbot_DHA_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.DHA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {83 c1 01 a1 ?? ?? ?? ?? a3 ?? ?? ?? ?? a1 90 1b 01 31 0d 90 1b 01 8b ff c7 05 90 1b 00 00 00 00 00 a1 90 1b 01 01 05 90 1b 00 8b ff 8b 15 ?? ?? ?? ?? a1 90 1b 00 89 02 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}