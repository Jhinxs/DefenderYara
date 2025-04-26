
rule Tool_Win32_MailSmtp__MailSmtp{
	meta:
		description = "Tool:Win32/MailSmtp!!MailSmtp,SIGNATURE_TYPE_ARHSTR_EXT,23 00 23 00 06 00 00 "
		
	strings :
		$a_81_0 = {48 45 4c 4f } //5 HELO
		$a_81_1 = {45 48 4c 4f } //5 EHLO
		$a_81_2 = {32 35 30 20 4f 4b } //5 250 OK
		$a_81_3 = {44 41 54 41 0d 0a } //10
		$a_81_4 = {52 43 50 54 20 54 4f 3a 3c } //10 RCPT TO:<
		$a_81_5 = {4d 41 49 4c 20 46 52 4f 4d 3a 3c } //10 MAIL FROM:<
	condition:
		((#a_81_0  & 1)*5+(#a_81_1  & 1)*5+(#a_81_2  & 1)*5+(#a_81_3  & 1)*10+(#a_81_4  & 1)*10+(#a_81_5  & 1)*10) >=35
 
}