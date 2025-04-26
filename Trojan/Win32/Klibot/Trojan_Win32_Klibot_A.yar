
rule Trojan_Win32_Klibot_A{
	meta:
		description = "Trojan:Win32/Klibot.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 44 44 4e 45 57 7c 00 44 44 6f 53 65 72 } //1 䑁乄坅|䑄卯牥
		$a_01_1 = {49 52 43 20 42 6f 74 00 25 73 7c 25 73 7c 25 64 7c 25 73 7c 25 73 } //1 剉⁃潂t猥╼米搥╼米猥
		$a_01_2 = {2a 70 61 79 70 61 6c 2e 2a 2f 77 65 62 73 63 72 3f 63 6d 64 3d 5f 6c 6f 67 69 6e 2d 73 75 62 6d 69 74 2a } //1 *paypal.*/webscr?cmd=_login-submit*
		$a_01_3 = {8a 04 1e 83 c9 ff 30 04 3a 8b fb 33 c0 46 f2 ae f7 d1 49 3b f1 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}