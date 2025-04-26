
rule PWS_Win32_Vidar_YA_MTB{
	meta:
		description = "PWS:Win32/Vidar.YA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {56 69 64 61 72 20 56 65 72 73 69 6f 6e 3a } //1 Vidar Version:
		$a_01_1 = {46 49 52 45 46 4f 58 20 50 41 53 53 } //1 FIREFOX PASS
		$a_01_2 = {5c 54 6f 72 42 72 6f 5c 50 72 6f 66 69 6c 65 5c } //1 \TorBro\Profile\
		$a_01_3 = {53 45 4c 45 43 54 20 6e 61 6d 65 5f 6f 6e 5f 63 61 72 64 2c 20 65 78 70 69 72 61 74 69 6f 6e 5f 6d 6f 6e 74 68 2c 20 65 78 70 69 72 61 74 69 6f 6e 5f 79 65 61 72 2c 20 63 61 72 64 5f 6e 75 6d 62 65 72 5f 65 6e 63 72 79 70 74 65 64 20 46 52 4f 4d 20 63 72 65 64 69 74 5f 63 61 72 64 73 } //1 SELECT name_on_card, expiration_month, expiration_year, card_number_encrypted FROM credit_cards
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}