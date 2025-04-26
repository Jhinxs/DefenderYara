
rule Trojan_Win32_Emotet_SD_MSR{
	meta:
		description = "Trojan:Win32/Emotet.SD!MSR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 } //1 C:\ProgramData\
		$a_01_1 = {43 00 72 00 79 00 70 00 74 00 } //1 Crypt
		$a_01_2 = {45 53 45 54 20 53 74 75 70 69 64 } //1 ESET Stupid
		$a_01_3 = {6d 6f 6e 65 79 } //1 money
		$a_01_4 = {6c 69 62 67 63 6a 2d 31 32 2e 64 6c 6c } //1 libgcj-12.dll
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}