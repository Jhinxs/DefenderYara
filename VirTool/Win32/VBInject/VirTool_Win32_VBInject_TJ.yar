
rule VirTool_Win32_VBInject_TJ{
	meta:
		description = "VirTool:Win32/VBInject.TJ,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {81 bd bc fe ff ff 50 45 00 00 0f 85 ?? ?? ?? ?? 8b 0e 8b c3 8d 95 bc fe ff ff 83 c0 34 52 6a 04 0f 80 ?? ?? ?? ?? 50 56 ff 51 24 } //2
		$a_00_1 = {5c 00 73 00 44 00 65 00 6d 00 2e 00 76 00 62 00 70 00 } //1 \sDem.vbp
		$a_00_2 = {53 00 61 00 62 00 61 00 64 00 6f 00 53 00 61 00 62 00 61 00 64 00 6f 00 } //1 SabadoSabado
		$a_00_3 = {45 00 73 00 74 00 61 00 62 00 6c 00 65 00 63 00 65 00 72 00 } //1 Establecer
	condition:
		((#a_02_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}