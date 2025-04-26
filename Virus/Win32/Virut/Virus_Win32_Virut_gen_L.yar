
rule Virus_Win32_Virut_gen_L{
	meta:
		description = "Virus:Win32/Virut.gen!L,SIGNATURE_TYPE_PEHSTR,0b 00 0a 00 0b 00 00 "
		
	strings :
		$a_01_0 = {69 72 63 64 2e 7a 69 65 66 2e 70 6c } //2 ircd.zief.pl
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer
		$a_01_2 = {54 61 72 67 65 74 48 6f 73 74 } //1 TargetHost
		$a_01_3 = {4a 4f 49 4e } //1 JOIN
		$a_01_4 = {4e 49 43 4b 20 } //1 NICK 
		$a_01_5 = {55 53 45 52 20 } //1 USER 
		$a_01_6 = {4f 20 6e 6f 6f 6e 20 6f 66 20 6c 69 66 65 21 20 4f 20 74 69 6d 65 20 74 6f 20 63 65 6c 65 62 72 61 74 65 21 } //1 O noon of life! O time to celebrate!
		$a_01_7 = {4f 20 73 75 6d 6d 65 72 20 67 61 72 64 65 6e 21 } //1 O summer garden!
		$a_01_8 = {52 65 6c 65 6e 74 6c 65 73 73 6c 79 20 68 61 70 70 79 20 61 6e 64 20 65 78 70 65 63 74 61 6e 74 2c 20 73 74 61 6e 64 69 6e 67 3a 20 2d } //1 Relentlessly happy and expectant, standing: -
		$a_01_9 = {57 61 74 63 68 69 6e 67 20 61 6c 6c 20 64 61 79 20 61 6e 64 20 6e 69 67 68 74 2c 20 66 6f 72 20 66 72 69 65 6e 64 73 20 49 20 77 61 69 74 3a } //1 Watching all day and night, for friends I wait:
		$a_01_10 = {57 68 65 72 65 20 61 72 65 20 79 6f 75 2c 20 66 72 69 65 6e 64 73 3f 20 43 6f 6d 65 21 20 49 74 20 69 73 20 74 69 6d 65 21 20 49 74 27 73 20 6c 61 74 65 21 } //1 Where are you, friends? Come! It is time! It's late!
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=10
 
}