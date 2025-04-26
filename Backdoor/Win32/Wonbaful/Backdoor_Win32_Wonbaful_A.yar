
rule Backdoor_Win32_Wonbaful_A{
	meta:
		description = "Backdoor:Win32/Wonbaful.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {67 00 65 00 74 00 5f 00 63 00 6d 00 64 00 5f 00 72 00 65 00 73 00 75 00 6c 00 74 00 } //1 get_cmd_result
		$a_01_1 = {44 00 45 00 4c 00 20 00 2f 00 66 00 20 00 2f 00 71 00 20 00 77 00 69 00 6e 00 6d 00 67 00 6d 00 74 00 2e 00 65 00 78 00 65 00 } //1 DEL /f /q winmgmt.exe
		$a_01_2 = {6e 00 65 00 74 00 73 00 68 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 61 00 64 00 64 00 20 00 70 00 6f 00 72 00 74 00 6f 00 70 00 65 00 6e 00 69 00 6e 00 67 00 20 00 74 00 63 00 70 00 } //1 netsh firewall add portopening tcp
		$a_01_3 = {54 00 61 00 6e 00 4b 00 75 00 61 00 6e 00 67 00 5f 00 } //1 TanKuang_
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}