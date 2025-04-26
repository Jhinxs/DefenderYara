
rule Trojan_Win32_Startpage_VM{
	meta:
		description = "Trojan:Win32/Startpage.VM,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {6a 01 51 3c 05 b9 ?? ?? ?? ?? 8b c4 77 ?? 89 a5 ?? ?? ff ff 50 e8 ?? ?? ?? ?? 51 8b cc c7 45 ?? 00 00 00 00 89 a5 ?? ?? ff ff 51 b9 ?? ?? ?? ?? e8 ?? ?? ?? ?? 51 c6 45 ?? 01 8b d4 89 a5 ?? ?? ff ff 52 8d 8d ?? ?? ff ff e8 ?? ?? ?? ?? c7 45 ?? ff ff ff ff e8 ?? ?? ?? ?? 83 c4 10 eb ?? 89 a5 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 51 8b cc c7 45 ?? 02 00 00 00 89 a5 ?? ?? ff ff 51 b9 ?? ?? ?? ?? e8 } //3
		$a_00_1 = {48 00 6f 00 6d 00 65 00 20 00 50 00 61 00 67 00 65 00 20 00 70 00 6c 00 75 00 67 00 69 00 6e 00 20 00 75 00 70 00 64 00 61 00 74 00 65 00 72 00 } //1 Home Page plugin updater
		$a_00_2 = {5c 00 48 00 6f 00 6d 00 65 00 20 00 50 00 61 00 67 00 65 00 5c 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 } //1 \Home Page\Updater
		$a_00_3 = {44 3a 5c 50 6c 75 67 69 6e 73 20 66 6f 72 20 42 72 6f 77 73 65 72 73 5c 48 6f 6d 65 50 61 67 65 73 5c 69 6e 73 74 61 6c 6c 65 72 73 5c 5f 48 6f 6d 65 50 61 67 65 5c 48 6f 6d 65 50 61 67 65 49 6e 73 74 61 6c 6c 65 72 5c 52 65 6c 65 61 73 65 5c 48 6f 6d 65 50 61 67 65 49 6e 73 74 61 6c 6c 65 72 2e 70 64 62 } //1 D:\Plugins for Browsers\HomePages\installers\_HomePage\HomePageInstaller\Release\HomePageInstaller.pdb
	condition:
		((#a_03_0  & 1)*3+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}