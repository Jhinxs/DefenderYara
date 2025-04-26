
rule HackTool_MacOS_BloodHound_A_MTB{
	meta:
		description = "HackTool:MacOS/BloodHound.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {2f 62 6c 6f 6f 64 68 6f 75 6e 64 61 64 2f 61 7a 75 72 65 68 6f 75 6e 64 } //1 /bloodhoundad/azurehound
		$a_01_1 = {51 4b 34 30 4a 4b 4a 79 4d 64 55 44 7a 2b 68 2b 78 76 43 73 72 75 2f 62 4a 68 76 47 30 55 78 76 65 50 56 30 75 66 4c 2f 41 63 45 3d } //1 QK40JKJyMdUDz+h+xvCsru/bJhvG0UxvePV0ufL/AcE=
		$a_01_2 = {66 59 35 42 4f 53 70 79 5a 43 71 52 6f 35 4f 68 43 75 43 2b 58 4e 2b 72 2f 62 42 43 6d 65 75 75 4a 74 6a 7a 2b 62 43 4e 49 66 38 3d } //1 fY5BOSpyZCqRo5OhCuC+XN+r/bBCmeuuJtjz+bCNIf8=
		$a_01_3 = {74 6a 45 4e 46 36 4d 66 5a 41 67 38 65 34 5a 6d 5a 54 65 57 61 57 69 54 32 76 58 74 73 6f 4f 36 2b 69 75 4f 6a 46 68 45 43 77 4d 3d } //1 tjENF6MfZAg8e4ZmZTeWaWiT2vXtsoO6+iuOjFhECwM=
		$a_01_4 = {66 5a 48 67 73 59 6c 66 76 74 79 71 54 6f 73 6c 79 6a 55 74 33 56 4f 50 46 34 4a 37 61 4b 2f 33 4d 50 63 4b 37 78 70 33 50 44 6b 3d } //1 fZHgsYlfvtyqToslyjUt3VOPF4J7aK/3MPcK7xp3PDk=
		$a_01_5 = {44 38 78 67 77 45 43 59 37 43 59 76 78 2b 59 32 6e 34 73 42 7a 39 33 4a 6e 39 4a 52 76 78 64 69 79 79 6f 38 43 54 66 75 4b 61 59 3d } //1 D8xgwECY7CYvx+Y2n4sBz93Jn9JRvxdiyyo8CTfuKaY=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}