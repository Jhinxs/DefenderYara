
rule Ransom_Win32_Kattisrypt_A{
	meta:
		description = "Ransom:Win32/Kattisrypt.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_00_0 = {5d 44 45 43 52 59 50 54 49 4f 4e 2e 54 58 54 5b } //1 ]DECRYPTION.TXT[
		$a_00_1 = {5b 2f 4d 45 53 53 41 47 45 5d 5b 54 41 53 4b 4e 41 4d 45 5d 67 75 69 64 65 2e 65 78 65 5b 2f 54 41 53 4b 4e 41 4d 45 5d } //2 [/MESSAGE][TASKNAME]guide.exe[/TASKNAME]
		$a_00_2 = {2e 6f 6c 65 64 } //1 .oled
		$a_00_3 = {62 6c 61 63 6b 2e 6d 69 72 72 6f 72 40 71 71 2e 63 6f 6d } //1 black.mirror@qq.com
		$a_02_4 = {5b 53 41 4e 44 42 4f 58 45 53 5d ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 5b 2f 54 41 53 4b 4e 41 } //1
		$a_02_5 = {5b 57 41 49 54 44 41 54 45 5d ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 5b 2f 54 41 53 4b 4e 41 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1) >=5
 
}