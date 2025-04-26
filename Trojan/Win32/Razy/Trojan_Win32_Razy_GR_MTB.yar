
rule Trojan_Win32_Razy_GR_MTB{
	meta:
		description = "Trojan:Win32/Razy.GR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {5a 01 d8 e8 ?? ?? ?? ?? 48 21 db 31 16 43 68 ?? ?? ?? ?? 8b 1c 24 83 c4 04 81 c6 ?? ?? ?? ?? 81 c0 ?? ?? ?? ?? 39 fe 75 d2 } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}