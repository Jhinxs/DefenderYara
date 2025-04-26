
rule VirTool_Win32_Kerbrute_A_MTB{
	meta:
		description = "VirTool:Win32/Kerbrute.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {63 6d 64 2e 62 72 75 74 65 46 6f 72 63 65 43 6f 6d 62 6f 73 } //1 cmd.bruteForceCombos
		$a_01_1 = {63 6d 64 2e 70 61 73 73 77 6f 72 64 53 70 72 61 79 } //1 cmd.passwordSpray
		$a_01_2 = {63 6d 64 2e 6d 61 6b 65 42 72 75 74 65 57 6f 72 6b 65 72 } //1 cmd.makeBruteWorker
		$a_01_3 = {73 65 73 73 69 6f 6e 2e 4b 65 72 62 72 75 74 65 53 65 73 73 69 6f 6e 2e 44 75 6d 70 41 53 52 65 70 48 61 73 68 } //1 session.KerbruteSession.DumpASRepHash
		$a_01_4 = {73 65 73 73 69 6f 6e 2e 4e 65 77 4b 65 72 62 72 75 74 65 53 65 73 73 69 6f 6e } //1 session.NewKerbruteSession
		$a_01_5 = {73 65 73 73 69 6f 6e 2e 62 75 69 6c 64 4b 72 62 35 54 65 6d 70 6c 61 74 65 } //1 session.buildKrb5Template
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}