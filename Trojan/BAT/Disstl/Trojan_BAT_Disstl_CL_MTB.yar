
rule Trojan_BAT_Disstl_CL_MTB{
	meta:
		description = "Trojan:BAT/Disstl.CL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {68 74 74 70 73 3a 2f 2f 64 69 73 63 6f 72 64 2e 67 67 2f 65 6d 52 76 5a 4a 47 68 42 53 } //1 https://discord.gg/emRvZJGhBS
		$a_81_1 = {68 74 74 70 73 3a 2f 2f 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 70 69 2f 76 36 2f 75 73 65 72 73 2f 40 6d 65 } //1 https://discordapp.com/api/v6/users/@me
		$a_01_2 = {24 38 66 31 62 65 31 32 36 2d 39 35 35 35 2d 34 35 31 35 2d 38 34 35 30 2d 37 62 31 62 37 32 39 32 33 64 62 66 } //1 $8f1be126-9555-4515-8450-7b1b72923dbf
		$a_81_3 = {68 74 74 70 3a 2f 2f 69 70 69 6e 66 6f 2e 69 6f 2f 69 70 } //1 http://ipinfo.io/ip
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //1 DownloadString
		$a_81_5 = {68 74 74 70 73 3a 2f 2f 6d 65 67 61 2e 6e 7a 2f 66 6f 6c 64 65 72 } //1 https://mega.nz/folder
		$a_81_6 = {55 53 45 52 20 47 4f 54 20 46 55 43 4b 45 44 20 42 59 20 42 4c 41 43 4b 2d 48 41 57 4b } //1 USER GOT FUCKED BY BLACK-HAWK
		$a_81_7 = {68 74 74 70 73 3a 2f 2f 64 69 73 63 6f 72 64 2e 63 6f 6d 2f 61 70 69 2f 77 65 62 68 6f 6f 6b 73 } //1 https://discord.com/api/webhooks
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_01_2  & 1)*1+(#a_81_3  & 1)*1+(#a_01_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}