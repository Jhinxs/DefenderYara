
rule Trojan_BAT_CryptInject_CK_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.CK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_81_0 = {44 69 73 63 6f 72 64 3a 20 74 72 78 2d 72 6f 62 6c 6f 78 2e 63 6f 6d 2f 64 69 73 63 6f 72 64 } //1 Discord: trx-roblox.com/discord
		$a_81_1 = {68 74 74 70 73 3a 2f 2f 70 61 73 74 65 62 69 6e 2e 63 6f 6d 2f 72 61 77 2f 37 72 58 5a 39 56 4e 63 } //1 https://pastebin.com/raw/7rXZ9VNc
		$a_81_2 = {4f 78 79 67 65 6e 42 79 74 65 63 6f 64 65 2e 64 6c 6c } //1 OxygenBytecode.dll
		$a_81_3 = {50 75 70 70 79 4d 69 6c 6b 56 33 2e 65 78 65 } //1 PuppyMilkV3.exe
		$a_81_4 = {41 6e 65 6d 6f 44 4c 4c 2e 64 6c 6c } //1 AnemoDLL.dll
		$a_81_5 = {50 6c 65 61 73 65 20 73 65 6e 64 20 74 68 69 73 20 74 6f 20 68 65 6c 70 65 72 73 20 6f 6e 20 6f 75 72 20 44 69 73 63 6f 72 64 20 73 65 72 76 65 72 21 } //1 Please send this to helpers on our Discord server!
		$a_81_6 = {68 74 74 70 73 3a 2f 2f 64 69 73 63 6f 72 64 2e 67 67 2f 74 72 78 72 6f 62 6c 6f 78 } //1 https://discord.gg/trxroblox
		$a_01_7 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_8 = {50 6c 65 61 73 65 20 69 6e 6a 65 63 74 } //1 Please inject
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_01_7  & 1)*1+(#a_81_8  & 1)*1) >=9
 
}