
rule Trojan_Win32_Lokibot_JN_MTB{
	meta:
		description = "Trojan:Win32/Lokibot.JN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8a 00 88 45 ?? 90 05 10 01 90 8b 45 ?? 89 45 ?? 90 05 10 01 90 80 75 90 1b 00 ?? 90 05 10 01 90 8b 45 ?? 03 45 90 1b 03 73 ?? e8 ?? ?? ?? ff 8a 55 90 1b 00 88 10 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}