
rule Trojan_Win32_Emotet_BX{
	meta:
		description = "Trojan:Win32/Emotet.BX,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_00_0 = {4a 45 52 4a 57 48 45 54 57 40 23 23 48 52 45 6a 77 72 2e 50 64 62 } //2 JERJWHETW@##HREjwr.Pdb
		$a_03_1 = {ff ff 74 13 09 d0 83 c8 01 83 c1 04 83 f8 00 8b 0d ?? ?? ?? ?? ff e1 31 c0 89 45 fc c3 31 c0 31 c0 } //1
	condition:
		((#a_00_0  & 1)*2+(#a_03_1  & 1)*1) >=3
 
}