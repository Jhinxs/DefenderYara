
rule Trojan_Win32_Bunitu_PVF_MTB{
	meta:
		description = "Trojan:Win32/Bunitu.PVF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b c7 eb 00 eb 00 33 05 ?? ?? ?? ?? 8b c8 8b d1 89 15 ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 89 02 } //2
	condition:
		((#a_02_0  & 1)*2) >=2
 
}