
rule Backdoor_Win32_Conpee_A{
	meta:
		description = "Backdoor:Win32/Conpee.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {50 65 65 72 43 6f 6e 6e 5e 5f 5e 4d 65 32 } //1 PeerConn^_^Me2
		$a_01_1 = {6d 73 70 61 74 63 68 2e 64 6c 6c 00 77 75 61 75 73 65 72 76 } //1
		$a_03_2 = {8b 55 08 03 55 fc 0f be 02 83 e8 ?? 8b 4d 08 03 4d fc 88 01 8b 55 08 03 55 fc 0f be 02 35 ?? ?? ?? ?? 8b 4d 08 03 4d fc 88 01 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
rule Backdoor_Win32_Conpee_A_2{
	meta:
		description = "Backdoor:Win32/Conpee.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {70 65 65 72 5f 70 6c 75 67 69 6e 5f (6d 61 69 6e|63 6f 6d 6d 61 6e 64) 00 } //1
		$a_01_1 = {3c 72 65 6d 6f 74 65 66 69 6c 65 3e 20 3c 6c 6f 63 61 6c 66 69 6c 65 3e } //1 <remotefile> <localfile>
		$a_01_2 = {50 6c 75 67 4d 67 72 5f 52 65 67 69 73 74 65 72 43 6f 6d 6d 61 6e 64 } //1 PlugMgr_RegisterCommand
		$a_01_3 = {69 69 73 67 65 74 64 69 72 } //1 iisgetdir
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Backdoor_Win32_Conpee_A_3{
	meta:
		description = "Backdoor:Win32/Conpee.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 00 00 00 00 77 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 00 00 00 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1
		$a_01_1 = {69 69 73 70 75 74 } //1 iisput
		$a_01_2 = {69 69 73 67 65 74 } //1 iisget
		$a_01_3 = {70 65 65 72 5f 70 6c 75 67 69 6e 5f 6d 61 69 6e } //1 peer_plugin_main
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}