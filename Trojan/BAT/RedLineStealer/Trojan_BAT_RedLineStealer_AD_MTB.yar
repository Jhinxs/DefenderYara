
rule Trojan_BAT_RedLineStealer_AD_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {2d 10 2b 15 28 ?? ?? ?? ?? 2b f1 28 ?? ?? ?? ?? 2b ed 28 ?? ?? ?? ?? 2b 00 2a } //1
		$a_01_1 = {66 30 36 35 39 65 35 39 30 35 34 35 34 61 35 65 39 39 62 39 37 35 32 61 66 63 37 38 62 37 30 30 00 } //1
		$a_03_2 = {00 70 14 1e 2d 06 26 26 26 26 2b 07 90 0a 2f 00 28 ?? ?? 00 06 28 ?? ?? 00 06 72 ?? ?? 00 70 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
rule Trojan_BAT_RedLineStealer_AD_MTB_2{
	meta:
		description = "Trojan:BAT/RedLineStealer.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_01_0 = {45 4e 43 52 59 50 54 49 4f 4e 5f 45 43 47 4f 53 54 } //3 ENCRYPTION_ECGOST
		$a_01_1 = {73 6d 32 65 6e 63 72 79 70 74 } //3 sm2encrypt
		$a_00_2 = {47 00 72 00 61 00 62 00 62 00 65 00 72 00 5c 00 44 00 69 00 73 00 63 00 6f 00 72 00 64 00 5c 00 54 00 6f 00 6b 00 65 00 6e 00 73 00 2e 00 74 00 78 00 74 00 } //3 Grabber\Discord\Tokens.txt
		$a_00_3 = {45 00 78 00 6f 00 64 00 75 00 73 00 5c 00 65 00 78 00 6f 00 64 00 75 00 73 00 2e 00 77 00 61 00 6c 00 6c 00 65 00 74 00 } //3 Exodus\exodus.wallet
		$a_00_4 = {43 00 72 00 79 00 70 00 74 00 6f 00 57 00 61 00 6c 00 6c 00 65 00 74 00 73 00 5c 00 57 00 61 00 6c 00 6c 00 65 00 74 00 46 00 6f 00 72 00 52 00 65 00 67 00 79 00 73 00 74 00 65 00 72 00 } //3 CryptoWallets\WalletForRegyster
		$a_00_5 = {53 00 54 00 41 00 52 00 54 00 20 00 43 00 4d 00 44 00 20 00 2f 00 43 00 20 00 22 00 45 00 43 00 48 00 4f 00 20 00 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 4d 00 61 00 63 00 68 00 69 00 6e 00 65 00 20 00 44 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 } //3 START CMD /C "ECHO VirtualMachine Detected
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_00_2  & 1)*3+(#a_00_3  & 1)*3+(#a_00_4  & 1)*3+(#a_00_5  & 1)*3) >=18
 
}