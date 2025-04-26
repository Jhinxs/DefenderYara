
rule Trojan_Win32_Hupigon_NH_MTB{
	meta:
		description = "Trojan:Win32/Hupigon.NH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {78 69 6e 66 64 2e 63 6f 6d } //1 xinfd.com
		$a_01_1 = {62 61 64 5f 65 39 78 63 } //1 bad_e9xc
		$a_01_2 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_01_3 = {41 73 70 61 63 6b 44 69 65 21 } //1 AspackDie!
		$a_01_4 = {54 65 72 6d 69 6e 61 74 65 50 72 6f 63 65 73 73 } //1 TerminateProcess
		$a_01_5 = {43 72 65 61 74 65 46 69 6c 65 41 } //1 CreateFileA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}