
rule Backdoor_Win32_Delf_BO{
	meta:
		description = "Backdoor:Win32/Delf.BO,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {53 79 73 74 65 6d 5c 43 6f 6e 74 72 6f 6c 53 65 74 30 30 31 5c 53 65 72 76 69 63 65 73 5c 53 68 61 72 65 64 41 63 63 65 73 73 5c 50 61 72 61 6d 65 74 65 72 73 5c 46 69 72 65 77 61 6c 6c 50 6f 6c 69 63 79 5c 53 74 61 6e 64 61 72 64 50 72 6f 66 69 6c 65 5c 41 75 74 68 6f 72 69 7a 65 64 41 70 70 6c 69 63 61 74 69 6f 6e 73 5c 4c 69 73 74 } //1 System\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\AuthorizedApplications\List
		$a_00_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //1 Software\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_00_2 = {5c 64 72 69 76 65 72 73 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //1 \drivers\svchost.exe
		$a_00_3 = {5c 77 61 69 74 31 36 2e 69 6e 69 } //1 \wait16.ini
		$a_00_4 = {3a 2a 3a 45 6e 61 62 6c 65 64 3a 54 65 73 74 } //1 :*:Enabled:Test
		$a_01_5 = {50 52 49 56 4d 53 47 } //1 PRIVMSG
		$a_02_6 = {8b 95 38 fe ff ff 8d 45 f4 59 e8 ?? ?? ff ff 68 ?? ?? 40 00 ff 75 f8 68 ?? ?? 40 00 ff 75 f4 8d 85 2c fe ff ff ba 04 00 00 00 e8 ?? ?? ff ff 8b 95 2c fe ff ff a1 ?? ?? 40 00 e8 ?? ?? ff ff 8b 45 f4 e8 ?? ?? ff ff b9 0a 00 00 00 99 f7 f9 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*1+(#a_02_6  & 1)*1) >=7
 
}