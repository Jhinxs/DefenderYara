
rule Backdoor_Linux_PoshPyReShell_A_{
	meta:
		description = "Backdoor:Linux/PoshPyReShell.A!!PoshPyReShell.A,SIGNATURE_TYPE_ARHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {69 66 20 70 79 6b 65 79 20 69 6e 20 62 20 61 6e 64 20 70 79 68 61 73 68 20 3d 3d 20 73 2e 68 65 78 64 69 67 65 73 74 28 29 20 61 6e 64 20 63 73 74 72 20 3c 20 6b 64 6e 3a 20 65 78 65 63 28 62 29 } //1 if pykey in b and pyhash == s.hexdigest() and cstr < kdn: exec(b)
		$a_01_1 = {75 6e 3d 70 77 64 2e 67 65 74 70 77 75 69 64 28 6f 73 2e 67 65 74 75 69 64 28 29 29 5b 20 30 20 5d 3b 70 69 64 3d 6f 73 2e 67 65 74 70 69 64 28 29 } //1 un=pwd.getpwuid(os.getuid())[ 0 ];pid=os.getpid()
		$a_01_2 = {69 73 36 34 3d 73 79 73 2e 6d 61 78 73 69 7a 65 20 3e 20 32 2a 2a 33 32 3b } //1 is64=sys.maxsize > 2**32;
		$a_01_3 = {65 6e 63 73 69 64 3d 65 6e 63 72 79 70 74 28 6b 65 79 2c 20 27 25 73 3b 25 73 3b 25 73 3b 25 73 3b 25 73 3b 25 73 27 20 25 20 28 75 6e 2c 68 6e 2c 68 6e 2c 61 72 63 68 2c 70 69 64 2c 75 72 6c 69 64 29 29 } //1 encsid=encrypt(key, '%s;%s;%s;%s;%s;%s' % (un,hn,hn,arch,pid,urlid))
		$a_01_4 = {64 65 63 72 79 70 74 28 6b 65 79 2c 20 68 74 6d 6c 29 2e 72 73 74 72 69 70 28 27 5c 30 27 29 3b 65 78 65 63 28 62 61 73 65 36 34 2e 62 36 34 64 65 63 6f 64 65 28 78 29 29 } //1 decrypt(key, html).rstrip('\0');exec(base64.b64decode(x))
		$a_01_5 = {64 65 66 20 65 6e 63 72 79 70 74 28 6b 65 79 2c 20 64 61 74 61 2c 20 67 7a 69 70 3d 46 61 6c 73 65 29 3a } //1 def encrypt(key, data, gzip=False):
		$a_01_6 = {64 65 66 20 67 65 74 5f 65 6e 63 72 79 70 74 69 6f 6e 28 6b 65 79 2c 20 69 76 29 3a } //1 def get_encryption(key, iv):
		$a_01_7 = {64 65 66 20 64 65 63 72 79 70 74 28 6b 65 79 2c 20 64 61 74 61 29 3a } //1 def decrypt(key, data):
		$a_01_8 = {74 6d 70 2f 25 73 2e 73 68 22 20 25 20 28 75 75 69 64 2e 75 75 69 64 34 28 29 2e 68 65 78 29 } //1 tmp/%s.sh" % (uuid.uuid4().hex)
		$a_01_9 = {25 73 2f 25 73 5f 70 73 68 2e 73 68 22 20 25 20 28 64 69 72 63 6f 6e 74 65 6e 74 2c 20 75 75 69 64 2e 75 75 69 64 34 28 29 2e 68 65 78 29 } //1 %s/%s_psh.sh" % (dircontent, uuid.uuid4().hex)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}