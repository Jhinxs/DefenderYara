
rule VirTool_BAT_Injector_IQ{
	meta:
		description = "VirTool:BAT/Injector.IQ,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {07 91 61 d2 9c 07 17 58 0b 07 7e ?? ?? ?? ?? 8e 69 fe 04 13 04 11 04 2d dd 06 } //1
		$a_03_1 = {2b 1c 06 23 00 00 00 00 00 00 70 40 07 6c 28 ?? ?? ?? ?? 69 02 07 91 5a 58 0a 07 17 58 0b 07 1a fe 04 0d 09 2d dc } //1
		$a_01_2 = {24 24 6d 65 74 68 6f 64 30 78 36 30 30 30 30 31 39 2d 33 00 49 6e 74 33 32 00 43 6f 6c 6f 72 00 67 65 74 5f 42 00 67 65 74 5f 52 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}