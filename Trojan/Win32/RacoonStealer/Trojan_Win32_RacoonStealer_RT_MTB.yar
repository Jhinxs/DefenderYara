
rule Trojan_Win32_RacoonStealer_RT_MTB{
	meta:
		description = "Trojan:Win32/RacoonStealer.RT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {4f 58 44 4b 2f 46 5c 70 47 46 5c 5b 40 5d 56 70 4a 41 4e 4d 20 45 4e 43 52 59 50 54 45 44 70 41 53 53 57 4f 70 50 50 5d 50 } //1 OXDK/F\pGF\[@]VpJANM ENCRYPTEDpASSWOpPP]P
		$a_81_1 = {43 72 79 70 74 44 65 73 74 72 6f 79 48 61 73 68 } //1 CryptDestroyHash
		$a_81_2 = {4c 6f 67 69 6e 20 44 61 74 61 } //1 Login Data
		$a_81_3 = {43 6f 6f 6b 69 65 73 } //1 Cookies
		$a_81_4 = {48 54 54 50 20 50 61 73 73 77 6f 72 64 } //1 HTTP Password
		$a_81_5 = {53 4d 54 50 20 50 61 73 73 77 6f 72 64 } //1 SMTP Password
		$a_81_6 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 72 } //1 Software\Microsoft\Internet Account Manager
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}