
rule Trojan_Win32_Hupigon_AB_MTB{
	meta:
		description = "Trojan:Win32/Hupigon.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b 45 f8 8a 88 ?? ?? ?? ?? 88 4d ef 0f b6 45 ef 83 f0 47 88 45 ef 0f b6 45 ef f7 d8 88 45 ef 0f b6 45 ef 2d e8 00 00 00 88 45 ef 0f b6 45 ef f7 d8 } //1
		$a_03_1 = {88 45 ef 0f b6 45 ef 83 f0 6f 88 45 ef 8b 45 f8 8a 4d ef 88 88 ?? ?? ?? ?? e9 ?? ?? ff ff } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}