
rule Trojan_Win32_VBInject_N{
	meta:
		description = "Trojan:Win32/VBInject.N,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_02_0 = {81 bd bc fe ff ff 50 45 00 00 0f 85 ?? ?? ?? ?? 8b 0e 8b c3 8d 95 bc fe ff ff 83 c0 34 52 6a 04 0f 80 ?? ?? ?? ?? 50 56 ff 51 24 8b 8d bc fe ff ff 8b 55 c4 89 4d d4 8d 8d 68 ff ff ff c7 02 44 00 00 00 ba ?? ?? ?? ?? ff 15 } //5
		$a_00_1 = {5c 00 43 00 41 00 53 00 48 00 5c 00 43 00 41 00 53 00 48 00 } //1 \CASH\CASH
		$a_01_2 = {68 95 1f 00 00 } //1
		$a_00_3 = {2f 43 20 73 74 61 72 74 20 65 78 70 6c 6f 72 65 72 2e 65 78 65 } //1 /C start explorer.exe
	condition:
		((#a_02_0  & 1)*5+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1) >=7
 
}