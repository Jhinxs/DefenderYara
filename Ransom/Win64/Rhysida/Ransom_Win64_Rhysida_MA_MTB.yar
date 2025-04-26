
rule Ransom_Win64_Rhysida_MA_MTB{
	meta:
		description = "Ransom:Win64/Rhysida.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 72 69 74 69 63 61 6c 42 72 65 61 63 68 44 65 74 65 63 74 65 64 2e 70 64 66 } //1 CriticalBreachDetected.pdf
		$a_03_1 = {76 69 73 69 74 20 6f 75 72 20 73 65 63 75 72 65 20 70 6f 72 74 61 6c 3a 20 72 68 79 73 69 64 61 [0-65] 2e 6f 6e 69 6f 6e } //1
		$a_01_2 = {63 6d 64 2e 65 78 65 20 2f 63 20 72 65 67 20 64 65 6c 65 74 65 20 22 48 4b 43 55 5c 43 6f 6e 74 74 6f 6c 20 50 61 6e 65 6c 5c 44 65 73 6b 74 6f 70 22 20 2f 76 20 57 61 6c 6c 70 61 70 65 72 20 2f 66 } //1 cmd.exe /c reg delete "HKCU\Conttol Panel\Desktop" /v Wallpaper /f
		$a_01_3 = {63 6d 64 2e 65 78 65 20 2f 63 20 73 74 61 72 74 20 70 6f 77 65 72 73 68 65 6c 6c 2e 65 78 65 20 2d 57 69 6e 64 6f 77 53 74 79 6c 65 20 48 69 64 64 65 6e 20 2d 43 6f 6d 6d 61 6e 64 20 53 6c 65 65 70 20 2d 4d 69 6c 6c 69 73 65 63 6f 6e 64 73 20 35 30 30 3b 20 52 65 6d 6f 76 65 2d 49 74 65 6d 20 2d 46 6f 72 63 65 20 2d 50 61 74 68 } //1 cmd.exe /c start powershell.exe -WindowStyle Hidden -Command Sleep -Milliseconds 500; Remove-Item -Force -Path
		$a_01_4 = {66 69 6c 65 5f 74 6f 5f 63 72 79 70 74 20 73 69 7a 65 20 5b 25 6c 64 5d 20 62 79 74 65 73 } //1 file_to_crypt size [%ld] bytes
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}