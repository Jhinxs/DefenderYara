
rule Trojan_Win32_Albdue_A{
	meta:
		description = "Trojan:Win32/Albdue.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {83 7d fc 02 75 2e 8b 45 fc 6a 02 99 59 c7 45 f0 bb 01 00 00 f7 f9 8d 85 0c ff ff ff 85 d2 74 06 8d 85 5c ff ff ff } //1
		$a_03_1 = {89 5d fc 57 50 e8 ?? ?? 00 00 83 c4 0c 83 ff 05 a3 ?? ?? 00 10 0f 8c ?? ?? 00 00 81 bd ?? ?? ff ff 21 40 23 24 0f 85 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}