
rule Trojan_BAT_AsyncRat_CXRK_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.CXRK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 43 34 41 4d 41 41 75 41 44 41 41 4c 67 41 78 41 41 41 41 } //1 AC4AMAAuADAALgAxAAAA
		$a_01_1 = {54 67 42 30 41 47 4d 41 64 51 42 6b 41 47 38 41 63 67 42 51 41 41 45 41 41 51 41 69 41 41 41 41 } //1 TgB0AGMAdQBkAG8AcgBQAAEAAQAiAAAA
		$a_01_2 = {49 63 30 4a 74 41 41 4f 75 68 38 4f 41 41 41 41 67 41 41 41 41 41 41 41 41 41 41 41 } //1 Ic0JtAAOuh8OAAAAgAAAAAAAAAAA
		$a_01_3 = {50 6f 77 65 72 65 64 20 62 79 20 53 6d 61 72 74 41 73 73 65 6d 62 6c 79 } //1 Powered by SmartAssembly
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}