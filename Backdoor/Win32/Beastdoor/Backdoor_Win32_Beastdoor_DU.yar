
rule Backdoor_Win32_Beastdoor_DU{
	meta:
		description = "Backdoor:Win32/Beastdoor.DU,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_03_0 = {c7 40 05 00 c8 00 00 a1 ?? ?? 41 00 c7 40 1a ?? ?? 00 00 a1 ?? ?? 41 00 c7 40 2f 60 30 00 00 a1 ?? ?? 41 00 c7 40 44 ?? ?? 00 00 a1 ?? ?? 41 00 } //3
		$a_03_1 = {75 15 81 fb 9a 02 00 00 74 0d 33 c0 5a 59 59 64 89 10 e9 ?? ?? 00 00 8b c3 83 f8 19 7f 7a 0f 84 ?? 08 00 00 83 f8 18 0f 87 ?? 09 00 00 ff 24 85 ?? ?? 40 00 } //3
		$a_00_2 = {6b 65 79 73 2e 6c 6f 67 } //1 keys.log
		$a_01_3 = {53 41 4d 5c 41 } //1 SAM\A
		$a_00_4 = {5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //1 \shell\open\command
		$a_00_5 = {48 61 72 64 77 61 72 65 5c 44 65 73 63 72 69 70 74 69 6f 6e 5c 53 79 73 74 65 6d 5c 43 65 6e 74 72 61 6c 50 72 6f 63 65 73 73 6f 72 5c 30 } //1 Hardware\Description\System\CentralProcessor\0
		$a_00_6 = {7e 7e 7e 7e 7e 7e 7e 7e 7e 7e 7e 7e 20 42 6f 6f 74 3a 5b } //1 ~~~~~~~~~~~~ Boot:[
		$a_00_7 = {2a 70 61 73 73 2a } //1 *pass*
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=6
 
}