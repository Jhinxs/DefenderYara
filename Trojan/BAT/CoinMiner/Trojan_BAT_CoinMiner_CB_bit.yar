
rule Trojan_BAT_CoinMiner_CB_bit{
	meta:
		description = "Trojan:BAT/CoinMiner.CB!bit,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 "
		
	strings :
		$a_01_0 = {7a 65 63 2d 65 75 31 2e 6e 61 6e 6f 70 6f 6f 6c 2e 6f 72 67 3a 36 36 33 33 } //5 zec-eu1.nanopool.org:6633
		$a_01_1 = {70 6f 77 65 72 73 68 65 6c 6c 20 2d 45 78 65 63 75 74 69 6f 6e 50 6f 6c 69 63 79 20 42 79 70 61 73 73 20 2d 77 69 6e 64 6f 77 73 74 79 6c 65 20 68 69 64 64 65 6e 20 2d 6e 6f 65 78 69 74 } //2 powershell -ExecutionPolicy Bypass -windowstyle hidden -noexit
		$a_01_2 = {6e 65 74 73 68 20 61 64 76 66 69 72 65 77 61 6c 6c 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 72 75 6c 65 20 6e 61 6d 65 } //2 netsh advfirewall firewall add rule name
		$a_01_3 = {44 69 73 61 62 6c 65 41 6e 74 69 53 70 79 77 61 72 65 } //1 DisableAntiSpyware
		$a_01_4 = {46 69 72 65 77 61 6c 6c 44 69 73 61 62 6c 65 4e 6f 74 69 66 79 } //1 FirewallDisableNotify
		$a_01_5 = {41 6e 74 69 56 69 72 75 73 44 69 73 61 62 6c 65 4e 6f 74 69 66 79 } //1 AntiVirusDisableNotify
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=10
 
}