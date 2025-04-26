
rule Trojan_Win32_Cadlotcorg_A_dha{
	meta:
		description = "Trojan:Win32/Cadlotcorg.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {8b 35 64 09 42 00 b8 af a9 6e 5e f7 e6 8b ce c1 ea 07 69 c2 5b 01 00 00 2b c8 74 1e b8 59 21 37 6c } //1
		$a_03_1 = {58 3a 5c 00 80 c3 41 50 88 5c 24 ?? ff 15 90 09 04 00 c7 44 24 } //1
		$a_01_2 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 4c 6f 67 2e 74 78 74 } //1 C:\ProgramData\Log.txt
		$a_01_3 = {58 3a 5c 00 58 3a 5c 00 53 79 73 74 65 6d 44 72 69 76 65 00 } //1 㩘\㩘\祓瑳浥牄癩e
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}