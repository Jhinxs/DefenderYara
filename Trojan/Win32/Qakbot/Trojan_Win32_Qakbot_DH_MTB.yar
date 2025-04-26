
rule Trojan_Win32_Qakbot_DH_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.DH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {37 34 61 57 43 50 61 6a 2e 64 6c 6c } //1 74aWCPaj.dll
		$a_81_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
		$a_81_2 = {49 73 50 72 6f 63 65 73 73 6f 72 46 65 61 74 75 72 65 50 72 65 73 65 6e 74 } //1 IsProcessorFeaturePresent
		$a_81_3 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_81_4 = {52 61 69 73 65 45 78 63 65 70 74 69 6f 6e } //1 RaiseException
		$a_81_5 = {43 72 65 61 74 65 46 69 6c 65 57 } //1 CreateFileW
		$a_81_6 = {57 72 69 74 65 43 6f 6e 73 6f 6c 65 57 } //1 WriteConsoleW
		$a_81_7 = {63 69 30 50 31 36 32 42 4e 77 59 61 6f 32 36 73 66 62 64 35 62 6b 58 } //1 ci0P162BNwYao26sfbd5bkX
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}