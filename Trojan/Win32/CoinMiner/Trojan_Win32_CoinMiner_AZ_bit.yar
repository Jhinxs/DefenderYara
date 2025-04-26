
rule Trojan_Win32_CoinMiner_AZ_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.AZ!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {4d 69 6e 65 72 20 25 73 26 6d 5f 70 72 6f 63 6e 75 6d 3d 25 64 26 6d 5f 65 78 69 73 74 73 3d 25 73 } //2 Miner %s&m_procnum=%d&m_exists=%s
		$a_01_1 = {67 2e 64 69 73 67 6f 67 6f 77 65 62 2e 63 6f 6d 2f } //1 g.disgogoweb.com/
		$a_01_2 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 6d 73 69 65 78 65 76 2e 65 78 65 } //1 taskkill /f /im msiexev.exe
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 41 6e 64 52 75 6e 3a 20 25 73 3a 20 25 73 3a } //1 DownloadAndRun: %s: %s:
		$a_01_4 = {73 63 72 69 70 74 73 5c 6d 69 6e 65 72 2e 6c 75 61 } //1 scripts\miner.lua
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_Win32_CoinMiner_AZ_bit_2{
	meta:
		description = "Trojan:Win32/CoinMiner.AZ!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_03_1 = {75 00 73 00 65 00 72 00 20 00 [0-20] 40 00 67 00 68 00 6f 00 73 00 74 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 20 00 2d 00 62 00 63 00 6e 00 } //1
		$a_01_2 = {63 70 75 00 46 75 63 6b 00 4f 70 65 6e 4d 69 6e 65 72 00 } //1
		$a_01_3 = {5c 73 76 63 68 6f 73 74 5c 6f 62 6a 5c 44 65 62 75 67 5c 73 76 63 68 6f 73 74 2e 70 64 62 } //1 \svchost\obj\Debug\svchost.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}