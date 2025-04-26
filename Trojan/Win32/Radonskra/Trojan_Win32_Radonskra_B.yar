
rule Trojan_Win32_Radonskra_B{
	meta:
		description = "Trojan:Win32/Radonskra.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {2f 63 72 65 61 74 65 20 2f 74 6e 20 53 79 73 74 65 6d 53 63 72 69 70 74 20 2f 74 72 20 22 44 57 56 41 4c 55 45 22 20 2f 73 63 20 4f 4e 4c 4f 47 4f 4e 20 2f 66 } //1 /create /tn SystemScript /tr "DWVALUE" /sc ONLOGON /f
		$a_00_1 = {73 6f 66 74 77 61 72 65 5c 6d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 5c 63 75 72 72 65 6e 74 76 65 72 73 69 6f 6e 5c 72 75 6e } //1 software\microsoft\windows\currentversion\run
		$a_01_2 = {44 51 6f 76 4c 79 42 41 61 57 35 6a 62 48 56 6b 5a 53 42 6f 64 48 52 77 63 7a 6f 76 4c 79 6f 4e 43 69 38 76 49 44 30 39 4c 31 56 7a 5a 58 4a 54 59 33 4a 70 63 48 51 39 50 51 30 4b 44 51 6f 3d } //1 DQovLyBAaW5jbHVkZSBodHRwczovLyoNCi8vID09L1VzZXJTY3JpcHQ9PQ0KDQo=
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}