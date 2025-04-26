
rule Trojan_Win64_Qakbot_PAM_MTB{
	meta:
		description = "Trojan:Win64/Qakbot.PAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 98 48 29 c2 8b 85 ?? ?? 00 00 48 98 48 29 c2 48 89 d0 0f b6 84 05 ?? ?? 00 00 44 31 c8 41 88 00 48 83 85 ?? ?? 00 00 01 48 8b 85 ?? ?? 00 00 48 39 85 ?? ?? 00 00 0f } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}