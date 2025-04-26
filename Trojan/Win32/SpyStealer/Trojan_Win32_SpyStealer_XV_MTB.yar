
rule Trojan_Win32_SpyStealer_XV_MTB{
	meta:
		description = "Trojan:Win32/SpyStealer.XV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_03_0 = {0f be da 89 9d 4c ff ff ff ?? ?? 83 ca ?? 0f be da 89 9d ?? ?? ?? ?? 8b 9d ?? ?? ?? ?? 33 9d ?? ?? ?? ?? 69 db ?? ?? ?? ?? 89 9d ?? ?? ?? ?? eb } //10
		$a_01_1 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1) >=11
 
}