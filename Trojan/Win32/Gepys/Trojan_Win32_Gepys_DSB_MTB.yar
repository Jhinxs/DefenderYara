
rule Trojan_Win32_Gepys_DSB_MTB{
	meta:
		description = "Trojan:Win32/Gepys.DSB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 55 e8 8d 84 0a ?? ?? ?? ?? 33 45 f0 89 45 f0 8b 4d dc 8b 55 f0 89 11 8b 45 e8 83 c0 04 89 45 e8 b9 bc 01 00 00 85 c9 75 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}