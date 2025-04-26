
rule MonitoringTool_Win32_BossEveryware{
	meta:
		description = "MonitoringTool:Win32/BossEveryware,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 4a 6d 65 72 69 6b 5c 42 6f 73 73 45 76 65 72 79 77 61 72 65 5c } //1 Software\Jmerik\BossEveryware\
		$a_01_1 = {77 73 61 33 32 } //1 wsa32
		$a_01_2 = {5b 4c 6f 67 67 69 6e 67 20 66 69 6e 69 73 68 65 64 5d } //1 [Logging finished]
		$a_01_3 = {62 65 77 6c 64 72 33 32 2e 65 78 65 20 2f 73 } //2 bewldr32.exe /s
		$a_01_4 = {5b 4c 6f 67 67 69 6e 67 20 73 74 61 72 74 65 64 5d } //2 [Logging started]
		$a_01_5 = {50 41 52 45 4e 54 5f 57 49 4e } //1 PARENT_WIN
		$a_01_6 = {50 52 53 43 52 } //1 PRSCR
		$a_01_7 = {4e 6f 20 6c 6f 67 67 65 72 20 61 76 61 69 6c 61 62 6c 65 } //1 No logger available
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}