
rule Trojan_Win32_Rozena_E_bit{
	meta:
		description = "Trojan:Win32/Rozena.E!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {63 61 6c 6c 28 30 2c 28 73 63 2e 6c 65 6e 67 74 68 20 3e 20 30 78 31 30 30 30 20 3f 20 73 63 2e 6c 65 6e 67 74 68 20 3a 20 30 78 31 30 30 30 29 2c 20 30 78 31 30 30 30 2c 20 30 78 34 30 29 } //1 call(0,(sc.length > 0x1000 ? sc.length : 0x1000), 0x1000, 0x40)
		$a_01_1 = {64 65 66 20 67 28 69 70 2c 70 6f 72 74 29 } //1 def g(ip,port)
		$a_01_2 = {64 65 66 20 69 6a 28 73 63 29 } //1 def ij(sc)
		$a_01_3 = {2e 63 61 6c 6c 28 70 74 2c 73 63 2c 73 63 2e 6c 65 6e 67 74 68 29 } //1 .call(pt,sc,sc.length)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}