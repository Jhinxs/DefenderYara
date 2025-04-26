
rule Trojan_Win32_Ramin_A{
	meta:
		description = "Trojan:Win32/Ramin.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d 20 22 25 57 69 6e 64 69 72 25 5c 68 65 6c 70 5c 73 76 63 68 6f 73 74 2e 65 78 65 22 20 22 52 65 6d 6f 74 65 20 41 64 6d 69 6e 69 73 74 72 61 74 6f 72 20 53 65 72 76 65 72 22 20 45 4e 41 42 4c 45 } //1 netsh firewall add allowedprogram "%Windir%\help\svchost.exe" "Remote Administrator Server" ENABLE
		$a_01_1 = {63 6f 70 79 20 2f 79 20 22 73 76 63 68 6f 73 74 2e 65 78 65 22 20 22 25 53 59 53 54 45 4d 52 4f 4f 54 25 2f 68 65 6c 70 5c 73 76 63 68 6f 73 74 2e 65 78 65 22 } //1 copy /y "svchost.exe" "%SYSTEMROOT%/help\svchost.exe"
		$a_01_2 = {22 25 53 59 53 54 45 4d 52 4f 4f 54 25 2f 68 65 6c 70 5c 73 76 63 68 6f 73 74 2e 65 78 65 22 20 2f 69 6e 73 74 61 6c 6c 20 2f 73 69 6c 65 6e 63 65 } //1 "%SYSTEMROOT%/help\svchost.exe" /install /silence
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}