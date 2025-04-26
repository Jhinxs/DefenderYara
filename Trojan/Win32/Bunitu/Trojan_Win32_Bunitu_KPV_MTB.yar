
rule Trojan_Win32_Bunitu_KPV_MTB{
	meta:
		description = "Trojan:Win32/Bunitu.KPV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b db 33 3d ?? ?? ?? ?? 8b cf b8 04 00 00 00 03 c1 83 e8 04 a3 ?? ?? ?? ?? a1 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 89 08 } //2
	condition:
		((#a_02_0  & 1)*2) >=2
 
}