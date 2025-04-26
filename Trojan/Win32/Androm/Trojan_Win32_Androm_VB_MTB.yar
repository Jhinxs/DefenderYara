
rule Trojan_Win32_Androm_VB_MTB{
	meta:
		description = "Trojan:Win32/Androm.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //2 MSVBVM60.DLL
		$a_01_1 = {53 00 76 00 66 00 6c 00 7a 00 35 00 56 00 6f 00 6e 00 59 00 75 00 61 00 58 00 4f 00 71 00 65 00 6e 00 5a 00 53 00 68 00 6d 00 54 00 57 00 58 00 4e 00 6c 00 74 00 56 00 79 00 6d 00 4e 00 61 00 31 00 37 00 35 00 } //1 Svflz5VonYuaXOqenZShmTWXNltVymNa175
		$a_01_2 = {63 00 5a 00 48 00 4d 00 46 00 75 00 48 00 76 00 38 00 36 00 } //1 cZHMFuHv86
		$a_01_3 = {6d 00 57 00 39 00 43 00 36 00 72 00 4e 00 75 00 6b 00 73 00 4e 00 41 00 56 00 66 00 55 00 31 00 43 00 72 00 52 00 51 00 6c 00 58 00 70 00 38 00 53 00 6c 00 74 00 74 00 42 00 69 00 32 00 32 00 36 00 } //1 mW9C6rNuksNAVfU1CrRQlXp8SlttBi226
	condition:
		((#a_00_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}