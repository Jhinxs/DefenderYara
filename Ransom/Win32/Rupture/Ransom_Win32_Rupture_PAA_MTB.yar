
rule Ransom_Win32_Rupture_PAA_MTB{
	meta:
		description = "Ransom:Win32/Rupture.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {4d 6f 6e 65 72 6f 2f 58 4d 52 } //1 Monero/XMR
		$a_01_1 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 41 00 6e 00 74 00 69 00 56 00 69 00 72 00 75 00 73 00 } //1 DisableAntiVirus
		$a_01_2 = {5c 44 65 73 6b 74 6f 70 5c 52 65 61 64 2d 4d 65 2e 74 78 74 } //1 \Desktop\Read-Me.txt
		$a_01_3 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 74 61 73 6b 6d 67 72 2e 65 78 65 } //1 taskkill /f /im taskmgr.exe
		$a_01_4 = {59 4f 55 52 20 46 49 4c 45 53 20 48 41 56 45 20 42 45 45 4e 20 45 4e 43 52 59 50 54 45 44 } //1 YOUR FILES HAVE BEEN ENCRYPTED
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}