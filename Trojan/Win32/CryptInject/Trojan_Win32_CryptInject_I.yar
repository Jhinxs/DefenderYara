
rule Trojan_Win32_CryptInject_I{
	meta:
		description = "Trojan:Win32/CryptInject.I,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {53 44 4b 4c 48 4a 4b 53 44 4c 48 4a 58 43 4b 43 53 44 46 43 53 44 46 53 44 46 23 6b 45 52 4e 45 4c 33 32 } //1 SDKLHJKSDLHJXCKCSDFCSDFSDF#kERNEL32
		$a_01_1 = {4a 4b 4c 44 46 48 53 44 47 48 4a 4b 46 53 44 4a 48 47 46 53 44 47 48 4a 46 53 44 47 48 4a 46 47 48 4a 53 44 48 4a 47 53 44 46 23 47 6c 6f 62 61 6c 41 6c 6c 6f 63 } //1 JKLDFHSDGHJKFSDJHGFSDGHJFSDGHJFGHJSDHJGSDF#GlobalAlloc
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}