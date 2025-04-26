
rule Trojan_Win32_Injector_MS_MTB{
	meta:
		description = "Trojan:Win32/Injector.MS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {4e 00 54 00 30 00 74 00 4f 00 55 00 5a 00 43 00 6c 00 4f 00 35 00 37 00 46 00 78 00 35 00 56 00 35 00 31 00 45 00 6d 00 47 00 50 00 4c 00 4c 00 72 00 4c 00 32 00 34 00 39 00 } //1 NT0tOUZClO57Fx5V51EmGPLLrL249
		$a_01_1 = {69 00 77 00 38 00 39 00 71 00 4a 00 53 00 30 00 4e 00 36 00 77 00 57 00 41 00 61 00 6e 00 42 00 65 00 43 00 32 00 49 00 50 00 31 00 33 00 31 00 } //1 iw89qJS0N6wWAanBeC2IP131
		$a_00_2 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //1 MSVBVM60.DLL
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}