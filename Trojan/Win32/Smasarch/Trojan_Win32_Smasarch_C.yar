
rule Trojan_Win32_Smasarch_C{
	meta:
		description = "Trojan:Win32/Smasarch.C,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_00_0 = {2e 70 68 70 3f 70 61 69 73 3d 24 7b 43 4f 55 4e 54 52 59 7d 26 74 69 70 6f 3d 73 6d 73 26 63 6f 64 65 3d } //3 .php?pais=${COUNTRY}&tipo=sms&code=
		$a_00_1 = {73 6d 73 4c 61 62 65 6c 43 6f 64 65 } //1 smsLabelCode
		$a_00_2 = {2c 30 30 20 2f 20 53 4d 53 } //1 ,00 / SMS
		$a_00_3 = {50 68 6f 6e 65 20 4e 75 6d 62 65 72 3d 36 35 36 36 } //1 Phone Number=6566
		$a_00_4 = {49 6e 63 6c 75 64 65 20 41 64 77 61 72 65 3d } //1 Include Adware=
		$a_00_5 = {41 73 6b 20 41 64 76 65 72 74 69 73 69 6e 67 3d } //1 Ask Advertising=
		$a_00_6 = {5b 53 4d 53 43 68 65 63 6b 5d } //1 [SMSCheck]
		$a_01_7 = {73 65 6e 64 20 61 20 50 72 65 6d 69 75 6d 20 3c 53 4d 53 3e 20 77 69 74 68 20 6b 65 79 77 6f 72 64 20 3c 7b 73 6d 73 61 6c 69 61 73 7d 3e } //2 send a Premium <SMS> with keyword <{smsalias}>
	condition:
		((#a_00_0  & 1)*3+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_01_7  & 1)*2) >=6
 
}