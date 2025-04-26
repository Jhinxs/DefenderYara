
rule Trojan_Win32_Injector_KA{
	meta:
		description = "Trojan:Win32/Injector.KA,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {89 47 20 48 8d 05 ?? ?? ?? ?? 48 89 47 28 48 8d 05 ?? ?? ?? ?? 48 89 47 30 48 8d 05 ?? ?? ?? ?? 48 89 47 38 48 8d 05 ?? ?? ?? ?? 48 89 47 40 48 8d 05 ?? ?? ?? ?? 48 89 47 48 8b 44 } //2
		$a_00_1 = {71 71 2e 63 6f 6d } //1 qq.com
		$a_00_2 = {46 6c 75 73 68 50 72 6f 63 65 73 73 57 72 69 74 65 42 75 66 66 65 72 73 } //1 FlushProcessWriteBuffers
		$a_00_3 = {43 3a 5c 54 45 4d 50 5c 46 6c 75 63 6b 5f 33 32 2e 74 6d 70 } //1 C:\TEMP\Fluck_32.tmp
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=5
 
}