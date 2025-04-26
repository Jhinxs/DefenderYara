
rule TrojanSpy_Win32_Bancos_PM{
	meta:
		description = "TrojanSpy:Win32/Bancos.PM,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b f0 85 f6 7e 2c bb 01 00 00 00 8d 45 f4 8b 55 fc 0f b6 54 1a ff 2b d3 81 ea ?? ?? ?? ?? e8 ?? ?? ?? ff 8b 55 f4 8d 45 f8 e8 ?? ?? ?? ff 43 4e 75 d9 } //3
		$a_01_1 = {5f 4e 65 78 74 50 61 72 74 5f 32 72 66 6b 69 6e } //1 _NextPart_2rfkin
		$a_01_2 = {41 74 65 6e 64 69 6d 65 6e 74 6f 41 6f 43 6c 69 65 6e 74 65 } //1 AtendimentoAoCliente
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}