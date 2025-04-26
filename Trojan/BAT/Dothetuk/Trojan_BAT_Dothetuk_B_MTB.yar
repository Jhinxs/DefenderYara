
rule Trojan_BAT_Dothetuk_B_MTB{
	meta:
		description = "Trojan:BAT/Dothetuk.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_81_0 = {5f 53 50 46 44 72 5a 49 45 55 39 72 48 52 35 54 6f 56 39 75 6a 67 47 68 42 34 4e 35 } //1 _SPFDrZIEU9rHR5ToV9ujgGhB4N5
		$a_81_1 = {5f 49 34 52 42 65 38 74 79 33 35 53 48 33 77 4b 6d 62 66 62 46 77 70 36 63 76 37 42 } //1 _I4RBe8ty35SH3wKmbfbFwp6cv7B
		$a_81_2 = {5f 70 61 30 34 48 70 33 38 66 48 48 6a 4a 66 4f 45 41 45 54 31 6b 46 4f 76 4c 37 45 } //1 _pa04Hp38fHHjJfOEAET1kFOvL7E
		$a_81_3 = {5f 47 39 65 42 30 50 63 5a 79 35 61 4e 31 71 42 47 45 35 61 74 71 55 57 47 69 6d 45 } //1 _G9eB0PcZy5aN1qBGE5atqUWGimE
		$a_81_4 = {5f 71 33 63 6c 5a 49 62 49 32 65 32 39 6c 6b 4a 75 70 4d 7a 61 51 48 5a 44 49 67 4a } //1 _q3clZIbI2e29lkJupMzaQHZDIgJ
		$a_81_5 = {5f 78 43 4f 72 71 62 73 51 58 51 6e 71 38 57 52 32 59 30 63 43 58 44 61 30 62 44 6a } //1 _xCOrqbsQXQnq8WR2Y0cCXDa0bDj
		$a_81_6 = {5f 52 50 39 32 4a 6b 76 59 71 37 41 61 4b 43 37 75 6b 4f 48 36 72 78 6f 58 47 62 6a } //1 _RP92JkvYq7AaKC7ukOH6rxoXGbj
		$a_81_7 = {5f 34 43 4b 78 37 45 79 62 35 58 74 39 6d 74 58 6d 6c 53 58 30 55 30 55 6c 65 61 6e } //1 _4CKx7Eyb5Xt9mtXmlSX0U0Ulean
		$a_81_8 = {5f 54 31 48 79 63 53 50 43 68 6b 69 65 63 68 65 72 4e 65 74 53 62 31 55 48 50 56 75 } //1 _T1HycSPChkiecherNetSb1UHPVu
		$a_81_9 = {24 34 66 62 32 38 64 35 62 2d 30 64 38 65 2d 34 31 34 34 2d 62 31 66 37 2d 36 32 64 61 64 30 66 34 31 62 62 39 } //1 $4fb28d5b-0d8e-4144-b1f7-62dad0f41bb9
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=10
 
}