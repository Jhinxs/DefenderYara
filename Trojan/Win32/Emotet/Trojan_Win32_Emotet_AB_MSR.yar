
rule Trojan_Win32_Emotet_AB_MSR{
	meta:
		description = "Trojan:Win32/Emotet.AB!MSR,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {41 66 78 46 72 61 6d 65 4f 72 56 69 65 77 37 30 73 } //1 AfxFrameOrView70s
		$a_01_1 = {41 66 78 4f 6c 65 43 6f 6e 74 72 6f 6c 37 30 73 } //1 AfxOleControl70s
		$a_01_2 = {63 3a 5c 55 73 65 72 73 5c 55 73 65 72 5c 44 65 73 6b 74 6f 70 5c 32 30 30 33 5c 41 63 63 65 6c 5c 52 65 6c 65 61 73 65 5c 41 63 63 65 6c 2e 70 64 62 } //1 c:\Users\User\Desktop\2003\Accel\Release\Accel.pdb
		$a_01_3 = {25 73 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 25 73 } //1 %s\shell\open\%s
		$a_01_4 = {73 74 65 6d 33 32 5c 63 6d 64 2e } //1 stem32\cmd.
		$a_01_5 = {52 59 50 54 33 32 2e 44 4c 4c } //1 RYPT32.DLL
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}