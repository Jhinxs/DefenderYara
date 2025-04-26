
rule HackTool_Win32_Vidc{
	meta:
		description = "HackTool:Win32/Vidc,SIGNATURE_TYPE_PEHSTR_EXT,22 00 22 00 08 00 00 "
		
	strings :
		$a_01_0 = {76 49 44 43 32 } //10 vIDC2
		$a_01_1 = {76 49 44 43 2d 73 65 72 76 65 72 } //10 vIDC-server
		$a_01_2 = {53 65 72 76 65 72 3a 20 59 59 50 72 6f 78 79 } //10 Server: YYProxy
		$a_01_3 = {5b 76 69 64 63 73 5d 20 2d 20 70 6f 72 74 3d 25 64 2c 61 75 74 68 3d 25 73 20 65 6e 61 62 6c 65 64 3d 25 73 } //1 [vidcs] - port=%d,auth=%s enabled=%s
		$a_01_4 = {5b 6d 74 63 70 72 5d 20 2d 20 66 61 69 6c 65 64 20 74 6f 20 6d 61 70 70 69 6e 67 20 25 73 20 2d 2d 3e 20 25 64 2c 72 65 74 3d 25 64 } //1 [mtcpr] - failed to mapping %s --> %d,ret=%d
		$a_01_5 = {2d 20 74 68 65 20 70 72 6f 67 72 61 6d 28 25 73 29 20 68 61 73 20 62 65 65 6e 20 72 75 6e 6e 65 64 2c 50 49 44 3d 30 78 25 78 21 } //1 - the program(%s) has been runned,PID=0x%x!
		$a_01_6 = {5b 6d 74 63 70 6c 5d 20 2d 20 66 61 69 6c 65 64 20 74 6f 20 73 74 61 72 74 20 4d 70 6f 72 74 54 43 50 2c 72 65 74 3d 25 64 21 } //1 [mtcpl] - failed to start MportTCP,ret=%d!
		$a_01_7 = {54 75 6e 6e 65 6c 2d 55 44 50 20 68 61 73 20 62 65 65 6e 20 73 74 61 72 74 65 64 2c 20 70 6f 72 74 3d 25 64 21 } //1 Tunnel-UDP has been started, port=%d!
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=34
 
}