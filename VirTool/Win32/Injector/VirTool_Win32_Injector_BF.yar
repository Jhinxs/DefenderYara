
rule VirTool_Win32_Injector_BF{
	meta:
		description = "VirTool:Win32/Injector.BF,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {2e 63 6e 2f 67 61 74 65 2e 70 68 70 } //1 .cn/gate.php
		$a_00_1 = {50 4f 53 54 00 00 00 00 62 6f 74 00 } //1
		$a_02_2 = {be 00 00 f0 05 56 ff 15 ?? ?? f0 05 50 ff 15 ?? ?? f0 05 85 c0 74 df 53 8b 5d 08 68 00 80 00 00 ff 75 fc } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}