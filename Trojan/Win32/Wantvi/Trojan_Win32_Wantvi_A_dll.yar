
rule Trojan_Win32_Wantvi_A_dll{
	meta:
		description = "Trojan:Win32/Wantvi.A!dll,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {50 e8 14 ff ff ff 8b 4c 24 1c 50 68 ?? ?? 00 00 51 68 ?? ?? 00 10 56 ff 15 ?? ?? 00 10 83 c4 18 68 00 28 00 00 6a 08 ff d5 50 ff d7 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}