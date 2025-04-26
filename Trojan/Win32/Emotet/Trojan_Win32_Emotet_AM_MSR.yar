
rule Trojan_Win32_Emotet_AM_MSR{
	meta:
		description = "Trojan:Win32/Emotet.AM!MSR,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {72 31 67 46 35 4d 67 35 73 76 46 56 4e 66 5a } //1 r1gF5Mg5svFVNfZ
		$a_01_1 = {5a 41 53 53 4e 48 59 54 2e 45 58 45 } //1 ZASSNHYT.EXE
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}