
rule TrojanSpy_Win32_AveMaria_BM{
	meta:
		description = "TrojanSpy:Win32/AveMaria.BM,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 56 45 5f 4d 41 52 49 41 } //1 AVE_MARIA
		$a_01_1 = {50 4b 31 31 5f 43 68 65 63 6b 55 73 65 72 50 61 73 73 77 6f 72 64 } //1 PK11_CheckUserPassword
		$a_01_2 = {41 63 63 6f 75 6e 74 73 5c 41 63 63 6f 75 6e 74 2e 72 65 63 30 } //1 Accounts\Account.rec0
		$a_01_3 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 6c 6f 67 69 6e 73 } //1 SELECT * FROM logins
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}