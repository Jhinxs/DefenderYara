
rule TrojanSpy_Win32_Banker_LH{
	meta:
		description = "TrojanSpy:Win32/Banker.LH,SIGNATURE_TYPE_PEHSTR,0f 00 0f 00 07 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 4c 6f 63 61 6c 65 73 } //10 Software\Borland\Delphi\Locales
		$a_01_1 = {2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 2f 00 2f 00 64 00 72 00 76 00 } //1 .com.br//drv
		$a_01_2 = {2f 6e 6f 67 75 69 20 43 3a 5c 73 79 73 74 65 6d } //1 /nogui C:\system
		$a_01_3 = {25 77 69 6e 64 69 72 25 5c 73 63 70 56 69 73 74 61 2e 65 78 65 } //1 %windir%\scpVista.exe
		$a_01_4 = {5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 73 00 63 00 68 00 6b 00 64 00 73 00 6b 00 2e 00 73 00 79 00 73 00 } //1 \drivers\schkdsk.sys
		$a_01_5 = {25 73 79 73 74 65 6d 64 72 69 76 65 25 5c 61 76 65 6e 67 65 72 2e 74 78 74 } //1 %systemdrive%\avenger.txt
		$a_01_6 = {25 73 79 73 74 65 6d 64 72 69 76 65 25 5c 41 72 71 75 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 73 5c 47 62 50 6c 75 67 69 6e 5c } //1 %systemdrive%\Arquivos de programas\GbPlugin\
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=15
 
}