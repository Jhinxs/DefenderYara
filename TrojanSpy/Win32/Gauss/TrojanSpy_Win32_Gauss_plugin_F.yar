
rule TrojanSpy_Win32_Gauss_plugin_F{
	meta:
		description = "TrojanSpy:Win32/Gauss.plugin!F,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {68 03 00 00 80 ff 15 ?? ?? ?? ?? 85 c0 74 ?? c6 44 24 58 01 8d 4c 24 14 e8 ?? ?? ?? ?? c6 44 24 58 00 } //1
		$a_00_1 = {25 00 73 00 79 00 73 00 74 00 65 00 6d 00 72 00 6f 00 6f 00 74 00 25 00 5c 00 54 00 65 00 6d 00 70 00 5c 00 77 00 73 00 31 00 62 00 69 00 6e 00 2e 00 64 00 61 00 74 00 } //1 %systemroot%\Temp\ws1bin.dat
		$a_00_2 = {63 00 72 00 65 00 64 00 69 00 74 00 6c 00 69 00 62 00 61 00 6e 00 61 00 69 00 73 00 } //1 creditlibanais
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}