
rule Backdoor_Win32_Plugx_M{
	meta:
		description = "Backdoor:Win32/Plugx.M,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {52 65 6c 65 61 73 65 5c 73 68 65 6c 6c 63 6f 64 65 2e 70 64 62 } //1 Release\shellcode.pdb
		$a_01_1 = {73 68 65 6c 6c 63 6f 64 65 2e 64 6c 6c } //1 shellcode.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}