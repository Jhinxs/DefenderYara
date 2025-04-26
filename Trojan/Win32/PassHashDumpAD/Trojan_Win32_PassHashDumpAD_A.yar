
rule Trojan_Win32_PassHashDumpAD_A{
	meta:
		description = "Trojan:Win32/PassHashDumpAD.A,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {66 00 69 00 6e 00 64 00 2e 00 65 00 78 00 65 00 } //1 find.exe
		$a_00_1 = {20 00 2f 00 69 00 } //1  /i
		$a_00_2 = {22 00 63 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 22 00 } //1 "cpassword"
		$a_00_3 = {5c 00 73 00 79 00 73 00 76 00 6f 00 6c 00 5c 00 } //1 \sysvol\
		$a_00_4 = {5c 00 70 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 } //1 \policies\
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}