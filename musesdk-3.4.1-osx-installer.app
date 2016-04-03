
import os
import subprocess


mainFile = "https://github.com/arduino/Arduino"

gitHubList = {

"exosite":"https://github.com/exosite-garage/arduino_exosite_library",
"RTCZero":"https://github.com/arduino-libraries/RTCZero",
"AzureIoT":"https://github.com/arduino-libraries/AzureIoT",
"RestClient":"https://github.com/arduino-libraries/RestClient",
"MadgwickAHRS":"https://github.com/arduino-libraries/MadgwickAHRS",
"WiFi101":"https://github.com/arduino-libraries/WiFi101",
"Bridge":"https://github.com/arduino-libraries/Bridge",
"Temboo":"https://github.com/arduino-libraries/Temboo",
"Firmata":"https://github.com/arduino-libraries/Firmata",
"USBHost":"https://github.com/arduino-libraries/USBHost",
"Keyboard":"https://github.com/arduino-libraries/Keyboard",
"Adafruit_NeoPixel":"https://github.com/adafruit/Adafruit_NeoPixel",
"TinyXML":"https://github.com/adafruit/TinyXML",
"Adafruit_LED_Backpack":"https://github.com/adafruit/Adafruit_LED_Backpack",
"Adafruit_FONA":"https://github.com/adafruit/Adafruit_FONA",
"Pi_Internet_Thing_Videos":"https://github.com/adafruit/Pi_Internet_Thing_Videos",
"Adafruit_Python_BluefruitLE":"https://github.com/adafruit/Adafruit_Python_BluefruitLE",
"Adafruit_Python_BME280":"https://github.com/adafruit/Adafruit_Python_BME280",
"Smart_Toilet_Light":"https://github.com/adafruit/Smart_Toilet_Light",
"Adafruit_BluefruitLE_Firmware":"https://github.com/adafruit/Adafruit_BluefruitLE_Firmware",
"Adafruit_BluefruitLE_nRF51":"https://github.com/adafruit/Adafruit_BluefruitLE_nRF51",
"Adafruit_CAP1188_Library":"https://github.com/adafruit/Adafruit_CAP1188_Library",
"Adafruit-Thermal-Printer-Library":"https://github.com/adafruit/Adafruit-Thermal-Printer-Library",
"Adafruit_GPS":"https://github.com/adafruit/Adafruit_GPS",
"Adafruit_SoftServo":"https://github.com/adafruit/Adafruit_SoftServo",
"io-client-python":"https://github.com/adafruit/io-client-python",
"Adafruit-PCD8544-Nokia-5110-LCD-library":"https://github.com/adafruit/Adafruit-PCD8544-Nokia-5110-LCD-library",
"LPD8806":"https://github.com/adafruit/LPD8806",
"WiFi101-FirmwareUpdater":"https://github.com/adafruit/WiFi101-FirmwareUpdater",
"Adafruit_TCS34725":"https://github.com/adafruit/Adafruit_TCS34725",
"Adafruit_SHT31":"https://github.com/adafruit/Adafruit_SHT31",

}


def main():
    global gitHubList
    flag = False

    print("Hello there noob! Welcome to the world of arduino")
    print("Position this file in the new folder in which you want to place the arduino IDE in")
    respond =input("Are you in the folder you want to be in? [Y/n]")
    if(respond != 'Y'):
        return

    list = ["git init","git clone https://github.com/arduino/Arduino"]
    for i in list:
        subprocess.call(i,shell=True)
    print("Hi there noob! this process is complete!")
    retval = os.getcwd()
    retval  = retval+"/Arduino/libraries"
    os.chdir(retval)
    os.system("pwd")

    execute(gitHubList,"adafruit")

    print("Hi there noobster! this process is complete!")

def execute(diction,spec=""):

    for i in diction:
        if spec in diction[i]:
            p = subprocess.Popen("git clone "+diction[i],shell=True)
            while(p.poll()==None):
                i=1
    return None



if  __name__ =='__main__':
    main()
