#!/usr/bin/env python3

import os
import time
import sys
import subprocess


print("")
print("Подождите, идёт запуск программы калибровки.")
print("")

output = os.popen('who').read()
tmp_list_data = output.split()

username = tmp_list_data[0]

os.system(f'sudo /home/{username}/touch/eGTouchD')

# Необходимо время для запуска демона eGTouchD
time.sleep(5)

proc = subprocess.Popen([f'/home/{username}/touch/eCalib'], stdout = subprocess.PIPE, stdin = subprocess.PIPE, stderr = subprocess.STDOUT)
proc.communicate(input=b'2')[0]
proc.wait()

print("")
print("Процесс калибровки закончен, сейчас произойдет перезагрузка компьютера.")
print("")

time.sleep(3)

os.system("/bin/systemctl reboot")

sys.exit(0)
