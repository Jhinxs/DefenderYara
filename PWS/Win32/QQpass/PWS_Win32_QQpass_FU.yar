
rule PWS_Win32_QQpass_FU{
	meta:
		description = "PWS:Win32/QQpass.FU,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {47 6c 6f 62 61 6c 5c 23 4d 48 54 5f 25 73 23 } //1 Global\#MHT_%s#
		$a_01_1 = {47 6c 6f 62 61 6c 5c 23 50 45 52 5f 25 73 23 } //1 Global\#PER_%s#
		$a_01_2 = {47 6c 6f 62 61 6c 5c 50 78 54 79 70 65 4c 69 62 4d 48 } //1 Global\PxTypeLibMH
		$a_01_3 = {42 00 49 00 4e 00 52 00 45 00 53 00 } //1 BINRES
		$a_01_4 = {4d 00 61 00 69 00 6e 00 5f 00 4c 00 6f 00 67 00 69 00 6e 00 41 00 63 00 63 00 6f 00 75 00 6e 00 74 00 4c 00 69 00 73 00 74 00 } //1 Main_LoginAccountList
		$a_01_5 = {5c 41 6c 6c 20 55 73 65 72 73 5c 51 51 5c 52 65 67 69 73 74 72 79 2e 64 62 } //1 \All Users\QQ\Registry.db
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}