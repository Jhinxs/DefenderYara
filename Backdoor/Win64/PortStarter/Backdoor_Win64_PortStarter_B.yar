
rule Backdoor_Win64_PortStarter_B{
	meta:
		description = "Backdoor:Win64/PortStarter.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 49 6e 76 6f 6b 65 2d 53 6f 63 6b 73 50 72 6f 78 79 2f 6d 61 69 6e 2e 67 6f } //1 /Invoke-SocksProxy/main.go
		$a_01_1 = {2d 43 6f 6d 6d 61 6e 64 20 22 4e 65 77 2d 4e 65 74 46 69 72 65 77 61 6c 6c 52 75 6c 65 20 2d 44 69 73 70 6c 61 79 4e 61 6d 65 20 27 57 69 6e 64 6f 77 73 20 55 70 64 61 74 65 27 20 2d 44 69 72 65 63 74 69 6f 6e 20 4f 75 74 62 6f 75 6e 64 20 2d 41 63 74 69 6f 6e 20 41 6c 6c 6f 77 } //1 -Command "New-NetFirewallRule -DisplayName 'Windows Update' -Direction Outbound -Action Allow
		$a_01_2 = {2d 43 6f 6d 6d 61 6e 64 20 22 25 73 25 73 25 73 25 73 25 73 6c 65 20 2d 44 69 73 70 6c 61 79 4e 61 6d 65 20 25 73 25 73 25 73 20 25 73 25 73 20 2d 44 69 72 65 63 74 69 6f 6e 20 4f 75 74 62 6f 75 6e 64 20 2d 41 63 74 69 6f 6e 20 41 6c 6c 6f 77 } //1 -Command "%s%s%s%s%sle -DisplayName %s%s%s %s%s -Direction Outbound -Action Allow
		$a_01_3 = {2d 43 6f 6d 6d 61 6e 64 20 22 47 65 74 2d 57 4d 49 4f 62 6a 65 63 74 20 57 69 6e 33 32 5f 43 6f 6d 70 75 74 65 72 53 79 73 74 65 6d 20 7c 20 53 65 6c 65 63 74 2d 4f 62 6a 65 63 74 20 2d 45 78 70 61 6e 64 50 72 6f 70 65 72 74 79 20 64 6f 6d 61 69 6e } //1 -Command "Get-WMIObject Win32_ComputerSystem | Select-Object -ExpandProperty domain
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}