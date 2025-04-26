
rule HackTool_BAT_BruteForce_G_MSR{
	meta:
		description = "HackTool:BAT/BruteForce.G!MSR,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_01_0 = {57 69 6e 64 6f 77 73 5f 38 2e 5f 31 5f 41 63 74 69 76 61 74 6f 72 2e 53 70 6c 61 73 68 2e 72 65 73 6f 75 72 63 65 73 } //3 Windows_8._1_Activator.Splash.resources
		$a_01_1 = {50 75 62 6c 69 63 4b 65 79 54 6f 6b 65 6e 3d 62 37 37 61 35 63 35 36 31 39 33 34 65 30 38 39 } //2 PublicKeyToken=b77a5c561934e089
		$a_01_2 = {50 75 62 6c 69 63 4b 65 79 54 6f 6b 65 6e 3d 62 30 33 66 35 66 37 66 31 31 64 35 30 61 33 61 } //1 PublicKeyToken=b03f5f7f11d50a3a
		$a_01_3 = {4b 4d 53 20 41 63 74 69 76 61 74 6f 72 } //2 KMS Activator
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2) >=8
 
}