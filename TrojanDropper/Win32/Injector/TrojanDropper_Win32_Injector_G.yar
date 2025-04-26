
rule TrojanDropper_Win32_Injector_G{
	meta:
		description = "TrojanDropper:Win32/Injector.G,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_02_0 = {33 c0 c7 85 ?? ?? ff ff 07 00 01 00 ?? b2 00 00 00 } //1
		$a_00_1 = {0b ce c1 e1 04 0b c8 8b c1 c1 e8 15 c1 e1 0b 0b c1 } //2
		$a_00_2 = {8b 74 24 08 83 fe 07 73 12 6a } //1
		$a_00_3 = {4b 50 6c 75 67 69 6e 2e 53 65 63 74 69 6f 6e } //1 KPlugin.Section
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}