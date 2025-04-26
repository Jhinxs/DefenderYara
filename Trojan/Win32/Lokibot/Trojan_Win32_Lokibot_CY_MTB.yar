
rule Trojan_Win32_Lokibot_CY_MTB{
	meta:
		description = "Trojan:Win32/Lokibot.CY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {55 8b ec 83 c4 f8 89 55 f8 89 45 fc 90 90 90 05 10 01 90 8b ?? fc ff 75 f8 01 ?? 24 c3 } //1
		$a_02_1 = {fa ff 8b d8 90 90 90 05 10 01 90 85 db 74 ?? 90 90 90 05 10 01 90 [0-08] 90 90 90 05 10 01 90 ba ?? ?? ?? ?? 8b c3 e8 ?? ?? fa ff 90 90 90 05 10 01 90 8b c3 e8 ?? ?? fa ff 90 90 90 05 15 01 90 [0-06] e8 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}