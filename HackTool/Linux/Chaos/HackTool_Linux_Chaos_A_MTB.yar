
rule HackTool_Linux_Chaos_A_MTB{
	meta:
		description = "HackTool:Linux/Chaos.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {2f 63 6c 69 65 6e 74 2f 61 70 70 2f 73 65 72 76 69 63 65 73 2f 73 63 72 65 65 6e 73 68 6f 74 2f 73 63 72 65 65 6e 73 68 6f 74 5f 73 65 72 76 69 63 65 2e 67 6f } //1 /client/app/services/screenshot/screenshot_service.go
		$a_00_1 = {75 54 48 8b 08 48 83 78 08 05 75 4a 81 39 77 72 69 74 75 42 80 79 04 65 75 3c 48 8b 48 10 48 83 78 18 02 75 31 66 81 39 7c 31 75 2a 48 8b 48 20 48 8b 40 28 48 85 c9 74 19 48 8d 15 0a 96 04 00 48 39 51 08 75 0c 48 83 38 20 0f 94 c0 } //1
		$a_00_2 = {2f 74 69 61 67 6f 72 6c 61 6d 70 65 72 74 2f 43 48 41 4f 53 2f 63 6c 69 65 6e 74 2f 61 70 70 } //1 /tiagorlampert/CHAOS/client/app
		$a_00_3 = {64 48 8b 04 25 f8 ff ff ff 48 8b 40 30 8b 88 20 01 00 00 8b 90 24 01 00 00 89 90 20 01 00 00 89 cb c1 e1 11 31 d9 89 d3 31 ca c1 e9 07 31 d1 89 da c1 eb 10 31 cb 89 98 24 01 00 00 8d 04 1a 48 8b 4c 24 38 48 31 c8 48 b9 21 a6 56 6a a1 6e 75 00 48 31 c1 48 b8 bf 63 8f bb 6b ef 52 00 48 0f af c8 48 89 4c 24 40 48 8b 6c 24 20 48 83 c4 28 c3 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}