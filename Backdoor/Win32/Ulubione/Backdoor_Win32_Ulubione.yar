
rule Backdoor_Win32_Ulubione{
	meta:
		description = "Backdoor:Win32/Ulubione,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0f 00 00 "
		
	strings :
		$a_01_0 = {52 61 73 44 69 61 6c } //8 RasDial
		$a_01_1 = {67 6c 6f 77 6e 65 6f 6b 6e 6f 64 69 61 6c 65 72 61 6f 66 70 6c } //3 glowneoknodialeraofpl
		$a_01_2 = {70 6f 6e 6f 77 6e 69 65 20 3f } //1 ponownie ?
		$a_01_3 = {43 7a 79 20 63 68 63 65 73 7a 20 73 69 } //1 Czy chcesz si
		$a_01_4 = {43 7a 79 20 63 68 63 65 73 7a 20 70 72 7a 65 72 77 61 } //1 Czy chcesz przerwa
		$a_01_5 = {31 39 32 2e 31 36 38 2e 31 30 2e 32 35 32 } //5 192.168.10.252
		$a_01_6 = {55 6c 75 62 69 6f 6e 65 20 73 74 72 6f 6e 79 2e 65 78 65 } //5 Ulubione strony.exe
		$a_01_7 = {46 2e 50 2e 48 2e 55 2e 20 4f 46 2e 50 4c } //3 F.P.H.U. OF.PL
		$a_01_8 = {61 64 6f 77 61 6e 69 65 20 73 74 72 6f 6e 79 } //2 adowanie strony
		$a_01_9 = {41 6d 61 74 6f 72 73 6b 69 20 68 61 72 64 63 6f 72 65 20 2d 20 6f 73 74 72 65 20 7a 64 6a } //2 Amatorski hardcore - ostre zdj
		$a_01_10 = {50 6f 6c 6b 69 20 61 6d 61 74 6f 72 6b 69 } //2 Polki amatorki
		$a_01_11 = {57 61 6d 70 20 2d 20 6e 61 6a 6c 65 70 73 7a 79 20 70 6f 72 6e 6f 6d 61 67 61 7a 79 6e 20 77 20 50 6f 6c 73 63 65 } //2 Wamp - najlepszy pornomagazyn w Polsce
		$a_01_12 = {70 75 6a 65 20 70 6f 20 61 6b 63 65 70 74 61 63 6a 69 20 72 65 67 75 6c 61 6d 69 6e 75 20 64 6f 73 74 } //2 puje po akceptacji regulaminu dost
		$a_01_13 = {64 6f 20 6f 64 70 6f 77 69 65 64 6e 69 65 67 6f 20 6f 70 65 72 61 74 6f 72 61 20 74 65 6c 65 6b 6f 6d 75 6e 69 6b 61 63 79 6a 6e 65 67 6f 2e 20 54 72 79 62 20 70 6f 73 74 } //2 do odpowiedniego operatora telekomunikacyjnego. Tryb post
		$a_01_14 = {6f 77 6f 20 73 6b 6f 6e 66 69 67 75 72 6f 77 61 6e 65 67 6f 20 69 20 75 72 75 63 68 6f 6d 69 6f 6e 65 67 6f 20 6d 6f 64 65 6d 75 20 74 65 6c 65 66 6f 6e 69 63 7a 6e 65 67 6f 2e 20 50 72 6f 67 72 61 6d 20 6e 69 65 20 7a 6d 69 65 6e 69 61 } //2 owo skonfigurowanego i uruchomionego modemu telefonicznego. Program nie zmienia
	condition:
		((#a_01_0  & 1)*8+(#a_01_1  & 1)*3+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*5+(#a_01_6  & 1)*5+(#a_01_7  & 1)*3+(#a_01_8  & 1)*2+(#a_01_9  & 1)*2+(#a_01_10  & 1)*2+(#a_01_11  & 1)*2+(#a_01_12  & 1)*2+(#a_01_13  & 1)*2+(#a_01_14  & 1)*2) >=18
 
}