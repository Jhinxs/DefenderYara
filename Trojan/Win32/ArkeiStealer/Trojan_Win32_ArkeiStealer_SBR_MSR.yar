
rule Trojan_Win32_ArkeiStealer_SBR_MSR{
	meta:
		description = "Trojan:Win32/ArkeiStealer.SBR!MSR,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {4c 33 4e 6c 63 6e 5a 6c 63 69 39 6e 59 58 52 6c } //1 L3NlcnZlci9nYXRl
		$a_01_1 = {41 70 70 44 61 74 61 5c 52 6f 61 6d 69 6e 67 5c 41 72 6b 65 69 } //1 AppData\Roaming\Arkei
		$a_01_2 = {57 69 6e 64 6f 77 73 5f 41 6e 74 69 6d 61 6c 77 61 72 65 5f 48 6f 73 74 5f 53 79 73 74 65 6d 5f 57 6f 72 6b 65 72 } //1 Windows_Antimalware_Host_System_Worker
		$a_01_3 = {42 69 74 63 6f 69 6e 5c 77 61 6c 6c 65 74 2e 64 61 74 } //1 Bitcoin\wallet.dat
		$a_01_4 = {53 45 4c 45 43 54 20 65 6e 63 72 79 70 74 65 64 55 73 65 72 6e 61 6d 65 2c 20 65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 2c 20 66 6f 72 6d 53 75 62 6d 69 74 55 52 4c 20 46 52 4f 4d 20 6d 6f 7a 5f 6c 6f 67 69 6e 73 } //1 SELECT encryptedUsername, encryptedPassword, formSubmitURL FROM moz_logins
		$a_01_5 = {53 45 4c 45 43 54 20 6e 61 6d 65 5f 6f 6e 5f 63 61 72 64 2c 20 65 78 70 69 72 61 74 69 6f 6e 5f 6d 6f 6e 74 68 2c 20 65 78 70 69 72 61 74 69 6f 6e 5f 79 65 61 72 2c 20 63 61 72 64 5f 6e 75 6d 62 65 72 5f 65 6e 63 72 79 70 74 65 64 20 46 52 4f 4d 20 63 72 65 64 69 74 5f 63 61 72 64 73 } //1 SELECT name_on_card, expiration_month, expiration_year, card_number_encrypted FROM credit_cards
		$a_01_6 = {4d 6f 7a 69 6c 6c 61 5c 46 69 72 65 66 6f 78 5c 50 72 6f 66 69 6c 65 73 } //1 Mozilla\Firefox\Profiles
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}