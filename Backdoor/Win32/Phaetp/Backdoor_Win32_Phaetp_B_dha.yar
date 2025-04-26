
rule Backdoor_Win32_Phaetp_B_dha{
	meta:
		description = "Backdoor:Win32/Phaetp.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 2f 00 35 00 2e 00 30 00 20 00 28 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 20 00 31 00 30 00 2e 00 30 00 3b 00 20 00 57 00 4f 00 57 00 36 00 34 00 3b 00 20 00 54 00 72 00 69 00 64 00 65 00 6e 00 74 00 2f 00 37 00 2e 00 30 00 3b 00 20 00 72 00 76 00 3a 00 31 00 31 00 2e 00 30 00 29 00 20 00 6c 00 69 00 6b 00 65 00 20 00 47 00 65 00 63 00 6b 00 6f 00 } //1 Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko
		$a_01_1 = {4c 6f 61 64 65 72 } //1 Loader
		$a_01_2 = {55 8b ec 81 ec 1c 01 00 00 56 68 24 31 00 10 8d 85 e4 fe ff ff 50 c6 45 ec 00 c6 45 e8 00 c7 05 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}