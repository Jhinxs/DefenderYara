
rule Backdoor_Win32_Coroxy_B{
	meta:
		description = "Backdoor:Win32/Coroxy.B,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 05 00 00 "
		
	strings :
		$a_01_0 = {68 7f 66 04 40 ff 75 fc e8 } //5
		$a_03_1 = {b8 fc fd fe ff b9 40 00 00 00 ?? ?? ?? ?? ?? ?? ?? 2d 04 04 04 04 } //5
		$a_00_2 = {2d 57 69 6e 64 6f 77 53 74 79 6c 65 20 48 69 64 64 65 6e 20 2d 65 70 20 62 79 70 61 73 73 } //5 -WindowStyle Hidden -ep bypass
		$a_00_3 = {48 4f 53 54 31 3a 31 34 39 2e 32 38 2e 31 30 2e 32 35 30 } //1 HOST1:149.28.10.250
		$a_00_4 = {48 4f 53 54 31 3a 32 33 2e 31 33 33 2e 36 2e 33 39 } //1 HOST1:23.133.6.39
	condition:
		((#a_01_0  & 1)*5+(#a_03_1  & 1)*5+(#a_00_2  & 1)*5+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=16
 
}