
rule Trojan_Win32_Qakbot_TG_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.TG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0f af c7 89 43 10 33 c0 40 2b c1 8b 4b 68 01 83 ?? ?? ?? ?? 8b c6 35 ?? ?? ?? ?? 0f af c6 89 43 2c 0f b6 c2 0f b6 53 60 0f af d0 8b 83 ?? ?? ?? ?? 88 14 01 } //1
		$a_00_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}