
rule Trojan_Win32_ObliqueRAT_A_MSR{
	meta:
		description = "Trojan:Win32/ObliqueRAT.A!MSR,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 07 00 00 "
		
	strings :
		$a_01_0 = {4f 62 6c 69 71 75 65 } //5 Oblique
		$a_01_1 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 61 75 74 6f 2e 74 78 74 } //5 C:\ProgramData\auto.txt
		$a_01_2 = {31 38 35 2e 31 31 37 2e 37 33 2e 32 32 32 } //5 185.117.73.222
		$a_01_3 = {41 72 74 69 66 61 63 74 } //1 Artifact
		$a_01_4 = {56 69 6e 63 65 } //1 Vince
		$a_01_5 = {53 65 72 65 6e 61 } //1 Serena
		$a_01_6 = {4a 4f 48 4e 53 4f 4e } //1 JOHNSON
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=17
 
}