
rule HackTool_BAT_DllInject_A_MTB{
	meta:
		description = "HackTool:BAT/DllInject.A!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 00 79 00 79 00 20 00 48 00 6f 00 6f 00 6b 00 2e 00 65 00 78 00 65 00 } //1 Ayy Hook.exe
		$a_01_1 = {41 79 79 20 48 6f 6f 6b 2e 70 64 62 } //1 Ayy Hook.pdb
		$a_01_2 = {5c 00 41 00 79 00 79 00 48 00 6f 00 6f 00 6b 00 5c 00 63 00 68 00 65 00 61 00 74 00 2e 00 64 00 6c 00 6c 00 } //1 \AyyHook\cheat.dll
		$a_01_3 = {41 00 79 00 79 00 5f 00 48 00 6f 00 6f 00 6b 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 Ayy_Hook.Properties.Resources
		$a_01_4 = {49 00 6e 00 6a 00 65 00 63 00 74 00 69 00 6e 00 67 00 2c 00 20 00 50 00 6c 00 65 00 61 00 73 00 65 00 20 00 77 00 61 00 69 00 74 00 2e 00 2e 00 2e 00 } //1 Injecting, Please wait...
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}