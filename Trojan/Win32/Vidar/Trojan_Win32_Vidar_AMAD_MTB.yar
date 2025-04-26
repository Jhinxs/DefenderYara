
rule Trojan_Win32_Vidar_AMAD_MTB{
	meta:
		description = "Trojan:Win32/Vidar.AMAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {2b d0 8b 45 ?? 31 10 6a 00 e8 ?? ?? ?? ?? 6a 00 } //1
		$a_01_1 = {83 45 ec 04 6a 00 e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}