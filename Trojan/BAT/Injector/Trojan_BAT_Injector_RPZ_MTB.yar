
rule Trojan_BAT_Injector_RPZ_MTB{
	meta:
		description = "Trojan:BAT/Injector.RPZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 svchost.exe
		$a_01_1 = {50 72 6f 63 65 73 73 48 6f 6c 6c 6f 77 69 6e 67 } //1 ProcessHollowing
		$a_01_2 = {43 00 6f 00 6e 00 73 00 6f 00 6c 00 65 00 41 00 70 00 70 00 31 00 } //1 ConsoleApp1
		$a_01_3 = {41 38 36 44 44 42 45 30 37 45 31 36 33 41 39 46 39 32 43 43 34 46 41 38 34 37 30 46 39 43 39 37 39 45 43 38 41 43 34 37 } //1 A86DDBE07E163A9F92CC4FA8470F9C979EC8AC47
		$a_01_4 = {43 52 45 41 54 45 5f 53 55 53 50 45 4e 44 45 44 } //1 CREATE_SUSPENDED
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}