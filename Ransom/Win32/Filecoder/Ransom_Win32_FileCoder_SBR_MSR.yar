
rule Ransom_Win32_FileCoder_SBR_MSR{
	meta:
		description = "Ransom:Win32/FileCoder.SBR!MSR,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_01_0 = {57 57 39 31 63 69 42 6d 61 57 78 6c 63 79 42 6f 59 58 5a 6c 49 47 4a 6c 5a 57 34 67 5a 57 35 6a 63 6e 6c 77 64 47 56 6b 49 48 56 7a 61 57 35 6e 49 47 31 70 62 47 6c 30 59 58 4a 35 49 47 64 79 59 57 52 6c 49 } //2 WW91ciBmaWxlcyBoYXZlIGJlZW4gZW5jcnlwdGVkIHVzaW5nIG1pbGl0YXJ5IGdyYWRlI
		$a_01_1 = {49 46 52 6f 5a 58 6b 67 59 32 46 75 49 47 35 6c 64 6d 56 79 49 47 4a 6c 49 47 46 6a 59 32 56 7a 63 32 56 6b 49 47 46 6e 59 57 6c 75 49 48 64 70 64 47 68 76 64 58 51 67 59 6e 56 35 61 57 35 6e 49 47 45 67 5a 47 56 6a 63 6e 6c 77 64 47 6c 76 62 69 42 72 5a 58 6b 75 } //2 IFRoZXkgY2FuIG5ldmVyIGJlIGFjY2Vzc2VkIGFnYWluIHdpdGhvdXQgYnV5aW5nIGEgZGVjcnlwdGlvbiBrZXku
		$a_01_2 = {63 32 31 68 64 57 64 79 64 32 31 68 65 58 4e 30 64 47 68 6d 65 48 41 33 4d 6e 52 73 62 57 52 69 63 6e 70 73 64 32 52 77 4d 6e 42 34 64 48 42 32 64 48 70 32 61 47 74 32 4e 58 42 77 5a 7a 4e 6b 61 57 5a 70 64 32 39 75 59 57 51 75 62 32 35 70 62 32 34 75 } //2 c21hdWdyd21heXN0dGhmeHA3MnRsbWRicnpsd2RwMnB4dHB2dHp2aGt2NXBwZzNkaWZpd29uYWQub25pb24u
		$a_01_3 = {73 72 63 2f 4c 6f 63 6b 2f 69 6e 74 65 72 6e 61 6c 2f 70 6b 67 2f 65 6e 63 72 79 70 74 69 6f 6e } //2 src/Lock/internal/pkg/encryption
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=8
 
}