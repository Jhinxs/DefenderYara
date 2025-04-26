
rule Trojan_Win32_Risepro_RPZ_MTB{
	meta:
		description = "Trojan:Win32/Risepro.RPZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {ff d7 80 b6 ?? ?? ?? ?? b4 6a 00 ff d7 80 86 ?? ?? ?? ?? f6 6a 00 ff d7 80 86 ?? ?? ?? ?? f9 6a 00 ff d7 80 b6 ?? ?? ?? ?? fd 6a 00 ff d7 80 86 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}