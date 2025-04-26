
rule VirTool_Win32_Gopurp_A{
	meta:
		description = "VirTool:Win32/Gopurp.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {2f 47 6f 50 75 72 70 6c 65 2f } //1 /GoPurple/
		$a_01_1 = {2f 68 65 6c 70 65 72 73 2e 46 65 74 63 68 55 72 6c } //1 /helpers.FetchUrl
		$a_01_2 = {2f 73 6c 69 76 65 72 70 6b 67 2e 43 72 65 61 74 65 50 72 6f 63 65 73 73 } //1 /sliverpkg.CreateProcess
		$a_01_3 = {2f 74 65 63 68 6e 69 71 75 65 73 2e 52 75 6e 43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //1 /techniques.RunCreateRemoteThread
		$a_01_4 = {2f 74 65 63 68 6e 69 71 75 65 73 2e 52 75 6e 53 79 73 63 61 6c 6c 2e 73 74 6b 6f 62 6a } //1 /techniques.RunSyscall.stkobj
		$a_01_5 = {2f 74 65 63 68 6e 69 71 75 65 73 2e 57 72 69 74 65 53 68 65 6c 6c 63 6f 64 65 } //1 /techniques.WriteShellcode
		$a_01_6 = {2f 74 65 63 68 6e 69 71 75 65 73 2e 45 42 41 50 43 51 75 65 75 65 } //1 /techniques.EBAPCQueue
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}