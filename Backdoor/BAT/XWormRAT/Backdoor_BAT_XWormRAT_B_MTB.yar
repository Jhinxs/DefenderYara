
rule Backdoor_BAT_XWormRAT_B_MTB{
	meta:
		description = "Backdoor:BAT/XWormRAT.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 "
		
	strings :
		$a_01_0 = {32 6f 74 64 4a 43 61 48 54 32 4a 7a 4d 65 73 33 67 73 31 55 56 74 33 79 37 61 50 32 35 4c 4b 30 62 4a 6e 42 67 68 4a 62 44 41 6c 38 37 51 58 42 72 37 65 57 } //2 2otdJCaHT2JzMes3gs1UVt3y7aP25LK0bJnBghJbDAl87QXBr7eW
		$a_01_1 = {47 4a 76 49 71 47 54 7a 49 38 4e 68 75 37 57 68 66 39 62 31 31 76 4c 6d 66 6f 71 77 5a 75 61 53 41 6f 77 59 78 62 55 4b 6d 70 64 51 61 46 54 6c 53 38 71 62 } //2 GJvIqGTzI8Nhu7Whf9b11vLmfoqwZuaSAowYxbUKmpdQaFTlS8qb
		$a_01_2 = {51 72 46 63 45 68 6e 43 44 36 46 67 36 4b 45 6c 44 78 34 46 53 44 62 45 48 69 61 4e 78 70 55 53 36 7a 31 36 43 74 79 46 4b 6c 68 38 4c 75 55 75 4e 6f 4e 75 } //2 QrFcEhnCD6Fg6KElDx4FSDbEHiaNxpUS6z16CtyFKlh8LuUuNoNu
		$a_01_3 = {6c 64 6f 42 35 52 67 38 6b 53 58 31 75 4e 4d 4e 4f 48 4d 6f 43 30 64 39 50 63 55 58 4e 71 6e 46 45 68 6d 30 70 6d 77 75 71 44 53 61 7a 5a 54 79 47 31 48 79 } //2 ldoB5Rg8kSX1uNMNOHMoC0d9PcUXNqnFEhm0pmwuqDSazZTyG1Hy
		$a_01_4 = {43 6f 6e 66 75 73 65 72 2e 43 6f 72 65 } //1 Confuser.Core
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1) >=9
 
}