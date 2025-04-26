
rule Backdoor_Win32_Poftsyun_B{
	meta:
		description = "Backdoor:Win32/Poftsyun.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 08 00 00 "
		
	strings :
		$a_01_0 = {2f 75 63 5f 73 65 72 76 65 72 2f 64 61 74 61 2f 66 6f 72 75 6d 2e 61 73 70 } //1 /uc_server/data/forum.asp
		$a_01_1 = {2f 62 6c 61 73 73 69 63 2f 61 63 6f 75 6e 74 2f 69 6d 61 67 65 2f 61 64 64 72 5f 6d 65 6d 62 65 72 2e 61 73 70 } //1 /blassic/acount/image/addr_member.asp
		$a_01_2 = {52 4c 20 64 6f 77 6e 6c 6f 61 64 20 73 75 63 63 65 73 73 21 } //1 RL download success!
		$a_01_3 = {74 65 20 66 69 6c 65 20 65 72 72 6f 72 21 } //1 te file error!
		$a_01_4 = {5c 5c 2e 5c 70 69 70 65 5c 73 73 6e 70 } //1 \\.\pipe\ssnp
		$a_01_5 = {6f 74 20 62 69 67 67 65 72 20 74 68 61 6e 20 43 6c 69 65 6e 74 66 69 6c 65 21 } //1 ot bigger than Clientfile!
		$a_01_6 = {6f 74 20 62 69 67 67 65 72 20 74 68 61 6e 20 53 65 72 76 65 72 66 69 6c 65 } //1 ot bigger than Serverfile
		$a_01_7 = {74 6f 6f 62 75 2e 69 6e 69 } //1 toobu.ini
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=5
 
}