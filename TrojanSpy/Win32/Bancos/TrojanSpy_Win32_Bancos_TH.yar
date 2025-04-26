
rule TrojanSpy_Win32_Bancos_TH{
	meta:
		description = "TrojanSpy:Win32/Bancos.TH,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {74 1e 8d 45 f0 50 b9 01 00 00 00 8b d3 8b 45 fc e8 ?? ?? ?? ?? 8b 55 f0 8d 45 f8 e8 ?? ?? ?? ?? 43 4e 75 bc } //2
		$a_00_1 = {72 2a 62 2e 6d 2a 6f 63 2a 2e 62 2a 62 } //1 r*b.m*oc*.b*b
		$a_00_2 = {49 2a 45 46 2a 52 41 4d 2a 45 } //1 I*EF*RAM*E
		$a_00_3 = {2a 6c 2a 6d 2a 74 2a 68 2a 2e 2a 73 2a 6f 2a 64 2a 61 2a 64 } //1 *l*m*t*h*.*s*o*d*a*d
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}