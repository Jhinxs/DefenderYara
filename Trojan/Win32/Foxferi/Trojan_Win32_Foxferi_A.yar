
rule Trojan_Win32_Foxferi_A{
	meta:
		description = "Trojan:Win32/Foxferi.A,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1e 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 69 6e 64 65 78 6f 6b 2e 70 68 70 00 6f 70 65 6e 00 74 65 6d 70 2e 65 78 65 } //10 椯摮硥歯瀮灨漀数n整灭攮數
		$a_01_1 = {5c 41 6e 77 65 6e 64 75 6e 67 73 64 61 74 65 6e 5c 4d 6f 7a 69 6c 6c 61 5c 46 69 72 65 66 6f 78 5c 70 72 6f 66 69 6c 65 73 2e 69 6e 69 } //10 \Anwendungsdaten\Mozilla\Firefox\profiles.ini
		$a_01_2 = {73 74 61 72 74 7a 65 6e 74 72 61 6c 65 2e 64 65 00 53 74 61 72 74 20 50 61 67 65 } //10
		$a_01_3 = {2f 43 20 52 45 47 20 41 44 44 20 48 4b 43 55 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 4f 6e 63 65 20 2f 46 } //1 /C REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce /F
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1) >=30
 
}