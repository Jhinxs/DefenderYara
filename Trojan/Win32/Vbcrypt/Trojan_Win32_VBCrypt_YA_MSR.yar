
rule Trojan_Win32_VBCrypt_YA_MSR{
	meta:
		description = "Trojan:Win32/VBCrypt.YA!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {67 00 49 00 45 00 46 00 2e 00 65 00 78 00 65 00 } //1 gIEF.exe
		$a_01_1 = {54 00 53 00 4f 00 4e 00 65 00 72 00 61 00 } //1 TSONera
		$a_01_2 = {45 00 66 00 56 00 72 00 70 00 74 00 32 00 30 00 6c 00 59 00 4e 00 65 00 70 00 4d 00 34 00 33 00 } //1 EfVrpt20lYNepM43
		$a_01_3 = {64 00 63 00 4e 00 4a 00 74 00 44 00 63 00 4b 00 31 00 6f 00 4e 00 72 00 47 00 35 00 38 00 } //1 dcNJtDcK1oNrG58
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}