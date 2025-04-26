
rule Trojan_BAT_Faketool{
	meta:
		description = "Trojan:BAT/Faketool,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 48 00 61 00 63 00 6b 00 46 00 61 00 63 00 65 00 62 00 6f 00 6f 00 6b 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 73 00 } //1 HKEY_CURRENT_USER\Software\HackFacebookProfiles
		$a_01_1 = {77 00 65 00 62 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 70 00 61 00 73 00 73 00 76 00 69 00 65 00 77 00 2e 00 7a 00 69 00 70 00 } //1 webbrowserpassview.zip
		$a_01_2 = {77 00 65 00 62 00 72 00 6f 00 70 00 76 00 2e 00 7a 00 69 00 70 00 } //1 webropv.zip
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}