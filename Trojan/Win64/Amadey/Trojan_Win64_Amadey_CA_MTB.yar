
rule Trojan_Win64_Amadey_CA_MTB{
	meta:
		description = "Trojan:Win64/Amadey.CA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_81_0 = {53 45 4c 45 43 54 20 6f 72 69 67 69 6e 5f 75 72 6c 2c 20 75 73 65 72 6e 61 6d 65 5f 76 61 6c 75 65 2c 20 70 61 73 73 77 6f 72 64 5f 76 61 6c 75 65 20 46 52 4f 4d 20 6c 6f 67 69 6e 73 } //1 SELECT origin_url, username_value, password_value FROM logins
		$a_81_1 = {5c 47 6f 6f 67 6c 65 5c 43 68 72 6f 6d 65 5c 55 73 65 72 20 44 61 74 61 5c 44 65 66 61 75 6c 74 5c 4c 6f 67 69 6e 20 44 61 74 61 } //1 \Google\Chrome\User Data\Default\Login Data
		$a_81_2 = {5c 4f 70 65 72 61 20 53 6f 66 74 77 61 72 65 5c 4f 70 65 72 61 20 53 74 61 62 6c 65 5c 4c 6f 67 69 6e 20 44 61 74 61 } //1 \Opera Software\Opera Stable\Login Data
		$a_81_3 = {50 4b 31 31 53 44 52 5f 44 65 63 72 79 70 74 } //1 PK11SDR_Decrypt
		$a_81_4 = {5c 4d 6f 7a 69 6c 6c 61 5c 46 69 72 65 66 6f 78 5c 50 72 6f 66 69 6c 65 73 5c } //1 \Mozilla\Firefox\Profiles\
		$a_81_5 = {5c 6c 6f 67 69 6e 73 2e 6a 73 6f 6e } //1 \logins.json
		$a_81_6 = {45 78 6f 64 75 73 5c 65 78 6f 64 75 73 2e 77 61 6c 6c 65 74 5c } //1 Exodus\exodus.wallet\
		$a_81_7 = {65 6c 65 63 74 72 75 6d 5f 64 61 74 61 5c 77 61 6c 6c 65 74 73 } //1 electrum_data\wallets
		$a_81_8 = {54 61 73 6b 6b 69 6c 6c 20 2f 49 4d 20 41 72 6d 6f 72 79 51 74 2e 65 78 65 20 2f 46 } //1 Taskkill /IM ArmoryQt.exe /F
		$a_81_9 = {44 6f 67 65 63 6f 69 6e 5c } //1 Dogecoin\
		$a_81_10 = {53 54 45 41 4c 45 52 44 4c 4c 2e 64 6c 6c } //1 STEALERDLL.dll
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1) >=11
 
}