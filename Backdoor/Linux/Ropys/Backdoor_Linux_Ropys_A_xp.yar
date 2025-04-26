
rule Backdoor_Linux_Ropys_A_xp{
	meta:
		description = "Backdoor:Linux/Ropys.A!xp,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {57 45 42 44 4f 53 } //1 WEBDOS
		$a_01_1 = {2f 63 67 69 2d 62 69 6e 2f 74 72 65 65 2e 70 68 70 } //1 /cgi-bin/tree.php
		$a_01_2 = {2f 63 67 69 2d 62 69 6e 2f 63 6f 6e 74 61 63 74 2e 63 67 69 } //1 /cgi-bin/contact.cgi
		$a_01_3 = {2f 63 67 69 2d 73 79 73 2f 67 75 65 73 74 62 6f 6f 6b 2e 63 67 69 } //1 /cgi-sys/guestbook.cgi
		$a_01_4 = {2f 63 67 69 2d 62 69 6e 2f 70 68 70 35 2d 63 67 69 } //1 /cgi-bin/php5-cgi
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}