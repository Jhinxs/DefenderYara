
rule Ransom_Win32_Filecoder_E_MTB{
	meta:
		description = "Ransom:Win32/Filecoder.E!MTB,SIGNATURE_TYPE_PEHSTR,07 00 07 00 08 00 00 "
		
	strings :
		$a_01_0 = {72 75 6e 6e 65 72 } //1 runner
		$a_01_1 = {2f 64 65 6c 65 74 65 76 61 6c 75 65 20 7b 63 75 72 72 65 6e 74 7d 20 73 61 66 65 62 6f 6f 74 } //2 /deletevalue {current} safeboot
		$a_01_2 = {62 63 64 65 64 69 74 2e 65 78 65 } //1 bcdedit.exe
		$a_01_3 = {2f 43 20 73 68 75 74 64 6f 77 6e 20 2f 72 20 2f 66 20 2f 74 20 30 } //2 /C shutdown /r /f /t 0
		$a_01_4 = {58 2f 4d 48 76 53 38 72 32 72 73 66 2b 78 4d 6f 46 6f 56 75 58 4e 4e 39 56 50 37 51 65 51 5a 41 73 76 70 56 6c 64 5a 45 75 6a 45 3d } //5 X/MHvS8r2rsf+xMoFoVuXNN9VP7QeQZAsvpVldZEujE=
		$a_01_5 = {74 6f 6d 6e 6f 6d } //1 tomnom
		$a_01_6 = {57 69 6e 64 6f 77 73 2e 6f 6c 64 } //1 Windows.old
		$a_01_7 = {74 00 4e 00 56 00 52 00 4d 00 44 00 } //1 tNVRMD
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_01_4  & 1)*5+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=7
 
}