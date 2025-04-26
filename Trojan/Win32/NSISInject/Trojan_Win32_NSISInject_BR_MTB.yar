
rule Trojan_Win32_NSISInject_BR_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.BR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 5c 46 72 75 69 74 79 5c 62 6a 65 72 67 76 72 6b 73 64 72 69 66 74 65 6e } //1 Software\Microsoft\Windows\CurrentVersion\Uninstall\Fruity\bjergvrksdriften
		$a_01_1 = {49 6e 74 65 72 6c 6f 63 61 74 69 6e 67 5c 53 75 70 65 72 65 6c 69 67 69 62 6c 65 6e 65 73 73 2e 56 61 72 } //1 Interlocating\Supereligibleness.Var
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 47 6e 61 73 6b 65 5c 54 72 69 73 79 6c 61 62 69 63 5c 4f 63 75 6c 6f 63 65 70 68 61 6c 69 63 5c 50 72 65 65 78 61 63 74 69 6f 6e } //1 Software\Gnaske\Trisylabic\Oculocephalic\Preexaction
		$a_01_3 = {42 61 6d 62 6f 6f 7a 6c 65 64 5c 4b 6f 70 70 65 76 61 63 63 69 6e 61 74 69 6f 6e 5c 4c 64 72 65 6c 69 76 2e 47 72 61 } //1 Bamboozled\Koppevaccination\Ldreliv.Gra
		$a_01_4 = {55 72 61 6e 73 61 67 65 6c 69 67 68 65 64 65 6e 73 5c 42 72 6e 65 74 65 61 74 65 72 2e 64 6c 6c } //1 Uransagelighedens\Brneteater.dll
		$a_01_5 = {41 66 73 70 6e 64 69 6e 67 73 6d 69 64 6c 65 72 6e 65 73 5c 53 74 6f 72 6d 61 73 74 65 72 73 32 30 36 5c 53 65 6e 69 6c 69 73 65 73 5c 4a 6f 75 72 6e 61 6c 69 73 65 72 65 6e 64 65 2e 69 6e 69 } //1 Afspndingsmidlernes\Stormasters206\Senilises\Journaliserende.ini
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}