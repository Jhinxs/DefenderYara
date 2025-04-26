
rule Trojan_Win32_MPTamperSuspExlc_B{
	meta:
		description = "Trojan:Win32/MPTamperSuspExlc.B,SIGNATURE_TYPE_CMDHSTR_EXT,0b 00 0b 00 05 00 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //5 powershell
		$a_00_1 = {73 00 65 00 74 00 2d 00 6d 00 70 00 70 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 } //1 set-mppreference
		$a_00_2 = {61 00 64 00 64 00 2d 00 6d 00 70 00 70 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 } //1 add-mppreference
		$a_00_3 = {2d 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 65 00 78 00 74 00 65 00 6e 00 73 00 69 00 6f 00 6e 00 } //5 -exclusionextension
		$a_00_4 = {2d 00 65 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //5 -exclusionprocess
	condition:
		((#a_00_0  & 1)*5+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*5+(#a_00_4  & 1)*5) >=11
 
}