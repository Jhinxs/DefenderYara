
rule Backdoor_Win32_Qakbot_V_bit{
	meta:
		description = "Backdoor:Win32/Qakbot.V!bit,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {f3 0f 10 05 5c 40 00 70 f3 0f 10 0d 60 40 00 70 0f b6 05 24 ?? ?? ?? f3 0f 2a d0 f3 0f 59 d1 f3 0f 5e d0 0f b6 05 24 ?? ?? ?? f3 0f 11 14 85 dc ?? ?? ?? a0 24 ?? ?? ?? 04 01 a2 24 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}