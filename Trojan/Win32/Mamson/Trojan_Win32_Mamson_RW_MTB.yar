
rule Trojan_Win32_Mamson_RW_MTB{
	meta:
		description = "Trojan:Win32/Mamson.RW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_81_0 = {47 3a 5c 4e 65 74 50 43 43 6c 69 65 6e 74 5c 57 69 6e 4e 65 74 43 6c 69 65 6e 74 5c 6e 65 74 2d 63 6c 69 65 6e 74 5c 62 72 62 75 69 6c 64 5c 52 65 6c 65 61 73 65 5c 50 44 42 5c 42 6f 6e 72 65 65 4b 69 6e 67 4b 6f 6e 67 2e 70 64 62 } //1 G:\NetPCClient\WinNetClient\net-client\brbuild\Release\PDB\BonreeKingKong.pdb
		$a_81_1 = {44 69 73 61 62 6c 65 50 72 6f 78 79 } //1 DisableProxy
		$a_81_2 = {47 65 74 53 74 61 72 74 75 70 49 6e 66 6f 41 } //1 GetStartupInfoA
		$a_81_3 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_81_4 = {43 70 75 41 6e 64 4d 65 6d 6f 72 79 4d 6f 6e 69 74 6f 72 3a 3a 43 6c 65 61 72 44 61 74 61 } //1 CpuAndMemoryMonitor::ClearData
		$a_81_5 = {5f 63 72 74 5f 64 65 62 75 67 67 65 72 5f 68 6f 6f 6b } //1 _crt_debugger_hook
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=6
 
}