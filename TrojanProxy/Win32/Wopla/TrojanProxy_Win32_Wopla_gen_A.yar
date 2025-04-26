
rule TrojanProxy_Win32_Wopla_gen_A{
	meta:
		description = "TrojanProxy:Win32/Wopla.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 0c 00 00 "
		
	strings :
		$a_02_0 = {66 83 f9 40 75 22 66 c7 84 45 ?? ?? ff ff 25 00 40 66 c7 84 45 ?? ?? ff ff 34 00 40 66 c7 84 45 ?? ?? ff ff 30 00 eb 25 66 83 f9 20 75 17 66 c7 84 45 ?? ?? ff ff 25 00 40 66 c7 84 45 ?? ?? ff ff 32 00 eb d6 66 89 8c 45 ?? ?? ff ff 40 42 0f b7 0c 57 66 3b ce } //10
		$a_00_1 = {8d 4c 3e 01 8d 54 3e ff eb 15 3c 7e 7d 2e 3c 2c 74 2a 3c 3b 74 26 3a c3 74 22 3c 40 74 1e 4a 8a 02 3a c3 7f e5 eb 15 3c 7e 7d 17 3c 2c 74 13 3c 3b 74 0f 3a c3 74 0b 3c 40 74 07 41 8a 01 3a c3 7f e5 42 2b ca 8d 41 fa 83 f8 79 } //10
		$a_00_2 = {25 30 34 68 75 2e 25 30 32 68 75 2e 25 30 32 68 75 5f 25 30 32 68 75 3a 25 30 32 68 75 3a 25 30 32 68 75 5f 25 30 34 58 5f 25 30 34 58 2e 64 61 74 } //2 %04hu.%02hu.%02hu_%02hu:%02hu:%02hu_%04X_%04X.dat
		$a_00_3 = {6d 64 6e 5f 6c 6f 67 5f 25 70 69 64 74 69 64 2e 74 78 74 } //2 mdn_log_%pidtid.txt
		$a_00_4 = {53 75 62 6a 65 63 74 3a 20 25 30 38 58 5f 25 30 38 58 } //2 Subject: %08X_%08X
		$a_00_5 = {53 6f 66 74 77 61 72 65 5c 52 49 54 5c 54 68 65 20 42 61 74 21 } //2 Software\RIT\The Bat!
		$a_00_6 = {2a 5c 3d 70 61 73 73 77 6f 72 64 3d 5c } //2 *\=password=\
		$a_00_7 = {4d 69 63 72 6f 73 6f 66 74 5f 57 69 6e 49 6e 65 74 5f 2a } //2 Microsoft_WinInet_*
		$a_00_8 = {6d 61 69 6c 2e 69 64 65 6e 74 69 74 79 2e 25 73 2e 73 6d 74 70 53 65 72 76 65 72 } //2 mail.identity.%s.smtpServer
		$a_00_9 = {6d 61 69 6c 2e 61 63 63 6f 75 6e 74 2e 61 63 63 6f 75 6e 74 25 69 2e 69 64 65 6e 74 69 74 69 65 73 } //2 mail.account.account%i.identities
		$a_00_10 = {5c 5c 2e 5c 53 63 73 69 25 75 3a } //2 \\.\Scsi%u:
		$a_00_11 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 53 68 61 72 65 64 41 63 63 65 73 73 5c 50 61 72 61 6d 65 74 65 72 73 5c 46 69 72 65 77 61 6c 6c 50 6f 6c 69 63 79 5c 53 74 61 6e 64 61 72 64 50 72 6f 66 69 6c 65 5c 41 75 74 68 6f 72 69 7a 65 64 41 70 70 6c 69 63 61 74 69 6f 6e 73 5c 4c 69 73 74 } //2 SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\AuthorizedApplications\List
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*2+(#a_00_5  & 1)*2+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*2+(#a_00_9  & 1)*2+(#a_00_10  & 1)*2+(#a_00_11  & 1)*2) >=30
 
}