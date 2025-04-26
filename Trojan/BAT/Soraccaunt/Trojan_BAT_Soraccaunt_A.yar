
rule Trojan_BAT_Soraccaunt_A{
	meta:
		description = "Trojan:BAT/Soraccaunt.A,SIGNATURE_TYPE_PEHSTR,32 00 32 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 68 65 63 6b 41 63 63 6f 75 6e 74 2e 65 78 65 } //10 CheckAccount.exe
		$a_01_1 = {43 00 68 00 65 00 63 00 6b 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //10 Check Passwords
		$a_01_2 = {65 00 78 00 63 00 68 00 61 00 6e 00 67 00 65 00 2e 00 61 00 73 00 6d 00 78 00 } //10 exchange.asmx
		$a_01_3 = {6d 00 61 00 69 00 6c 00 62 00 6f 00 78 00 } //10 mailbox
		$a_01_4 = {43 00 68 00 65 00 63 00 6b 00 20 00 55 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 73 00 } //10 Check Usernames
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10) >=50
 
}