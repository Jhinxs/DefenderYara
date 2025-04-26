
rule Ransom_MSIL_FileCoder_AB_MTB{
	meta:
		description = "Ransom:MSIL/FileCoder.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5f 43 72 79 4c 6f 63 6b 65 72 5f 2e 65 78 65 } //1 _CryLocker_.exe
		$a_01_1 = {56 69 65 77 5f 65 6e 63 72 79 70 74 5f 66 69 6c 65 5f 6c 69 73 74 } //1 View_encrypt_file_list
		$a_01_2 = {67 65 74 5f 42 6c 75 65 53 63 72 65 65 6e 46 61 6b 65 } //1 get_BlueScreenFake
		$a_01_3 = {50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //1 Policies\System\DisableTaskMgr
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Ransom_MSIL_FileCoder_AB_MTB_2{
	meta:
		description = "Ransom:MSIL/FileCoder.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_81_0 = {48 45 59 2e 20 41 53 20 59 4f 55 20 41 4c 52 45 41 44 59 20 55 4e 44 45 52 53 54 4f 4f 44 2c 20 49 20 48 41 56 45 20 41 4c 4c 20 54 48 45 20 4c 4f 47 49 4e 53 2f 50 41 53 53 57 4f 52 44 53 } //1 HEY. AS YOU ALREADY UNDERSTOOD, I HAVE ALL THE LOGINS/PASSWORDS
		$a_81_1 = {46 4f 52 20 41 4c 4c 20 59 4f 55 52 20 41 43 43 4f 55 4e 54 53 20 41 4e 44 20 45 4e 43 52 59 50 54 20 53 4f 4d 45 20 59 4f 55 52 20 46 49 4c 45 53 2e } //1 FOR ALL YOUR ACCOUNTS AND ENCRYPT SOME YOUR FILES.
		$a_81_2 = {49 46 20 59 4f 55 20 43 48 4f 4f 53 45 20 31 53 54 20 57 41 59 20 2d 20 53 45 4e 44 20 30 2c 30 30 32 36 20 42 54 43 20 28 33 30 24 29 20 54 4f 20 57 41 4c 4c 45 54 } //1 IF YOU CHOOSE 1ST WAY - SEND 0,0026 BTC (30$) TO WALLET
		$a_81_3 = {49 20 44 45 4c 45 54 45 20 59 4f 55 20 46 52 4f 4d 20 4d 59 20 44 41 54 41 42 41 53 45 20 41 4e 44 20 55 4e 4c 43 4f 4b 20 59 4f 55 52 20 46 49 4c 45 53 } //1 I DELETE YOU FROM MY DATABASE AND UNLCOK YOUR FILES
		$a_81_4 = {49 20 53 45 4c 4c 20 59 4f 55 52 20 44 41 54 41 20 41 4e 44 20 45 56 45 52 59 54 48 49 4e 47 20 49 20 46 4f 55 4e 44 20 4f 4e 20 54 48 45 20 42 4c 41 43 4b 20 4d 41 52 4b 45 54 } //1 I SELL YOUR DATA AND EVERYTHING I FOUND ON THE BLACK MARKET
		$a_81_5 = {69 66 20 79 6f 75 20 64 6f 6e 27 74 20 6b 6e 6f 77 20 68 6f 77 20 74 6f 20 62 75 79 20 62 69 74 63 6f 69 6e 2c 20 6a 75 73 74 20 61 73 6b 20 67 6f 6f 67 6c 65 } //1 if you don't know how to buy bitcoin, just ask google
		$a_81_6 = {5c 52 65 6c 65 61 73 65 5c 49 6e 73 74 61 6c 6c 2e 70 64 62 } //1 \Release\Install.pdb
		$a_81_7 = {5c 44 6f 63 75 6d 65 6e 74 73 5c 70 61 79 2e 6a 70 67 } //1 \Documents\pay.jpg
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}