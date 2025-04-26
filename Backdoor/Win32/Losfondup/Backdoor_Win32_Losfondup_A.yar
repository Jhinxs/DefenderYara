
rule Backdoor_Win32_Losfondup_A{
	meta:
		description = "Backdoor:Win32/Losfondup.A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 07 00 06 00 00 "
		
	strings :
		$a_01_0 = {c6 44 24 0c 68 8d 50 1e 89 54 24 0d 66 c7 44 24 11 ff 15 8d 50 16 89 54 24 13 c6 44 24 17 68 33 d2 89 54 24 18 66 c7 44 24 1c ff 15 } //6
		$a_01_1 = {8b 55 fc 8a 54 1a ff 80 f2 02 88 54 18 ff 43 4e 75 e6 } //3
		$a_01_2 = {c7 45 f8 64 00 00 00 be 00 04 00 00 c7 45 f4 64 00 00 00 bf 00 02 00 00 c7 45 f0 32 00 00 00 } //3
		$a_01_3 = {42 6f 74 20 6e 6f 74 20 4e 41 54 20 28 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e 29 } //1 Bot not NAT (Configuration)
		$a_01_4 = {42 6f 74 20 69 73 20 4e 41 54 20 28 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e 29 20 6e 6f 74 20 53 6f 63 6b 73 20 53 65 72 76 65 72 } //1 Bot is NAT (Configuration) not Socks Server
		$a_01_5 = {4e 6f 20 41 6e 74 69 49 6e 6a 65 63 74 } //1 No AntiInject
	condition:
		((#a_01_0  & 1)*6+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=7
 
}