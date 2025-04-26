
rule PWS_Win32_Primarypass_A{
	meta:
		description = "PWS:Win32/Primarypass.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {b8 ee fb ee ab 33 c9 57 0f b6 ?? ?? ?? ?? 00 d1 c0 33 c7 0f b6 ?? ?? ?? ?? 00 d1 c0 33 c7 0f b6 ?? ?? ?? ?? 00 d1 c0 33 c7 0f b6 ?? ?? ?? ?? 00 d1 c0 83 c1 04 33 c7 81 f9 00 01 00 00 72 c9 } //1
		$a_03_1 = {0f b6 06 4a 33 c8 46 6a 08 58 f6 c1 01 74 06 81 f1 ?? ?? ?? ?? d1 e9 48 75 f0 } //1
		$a_03_2 = {56 56 68 e2 d4 ea d4 56 e8 ?? ?? ?? ?? 6a 04 68 00 10 00 00 57 56 ff d0 8b d8 85 db 74 38 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
rule PWS_Win32_Primarypass_A_2{
	meta:
		description = "PWS:Win32/Primarypass.A,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 05 00 00 "
		
	strings :
		$a_01_0 = {4d 41 43 3d 25 30 32 58 25 30 32 58 25 30 32 58 49 4e 53 54 41 4c 4c 3d 25 30 38 58 25 30 38 58 6b } //10 MAC=%02X%02X%02XINSTALL=%08X%08Xk
		$a_01_1 = {8a 04 39 30 04 16 41 33 c0 3b 4d 10 0f 4d c8 } //10
		$a_01_2 = {25 00 73 00 5c 00 57 00 53 00 5f 00 46 00 54 00 50 00 5c 00 57 00 53 00 5f 00 46 00 54 00 50 00 2e 00 49 00 4e 00 49 00 } //1 %s\WS_FTP\WS_FTP.INI
		$a_01_3 = {5c 00 50 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 73 00 5c 00 6b 00 65 00 79 00 63 00 68 00 61 00 69 00 6e 00 2e 00 70 00 6c 00 69 00 73 00 74 00 } //1 \Preferences\keychain.plist
		$a_01_4 = {46 52 4f 4d 20 6d 6f 7a 5f 6c 6f 67 69 6e 73 } //1 FROM moz_logins
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=23
 
}