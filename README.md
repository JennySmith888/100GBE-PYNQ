# 100GbE-PYNQ
[Introduction](https://gitenterprise.xilinx.com/jennysmi/100GbE-PYNQ#introduction)

[Project Generation](https://gitenterprise.xilinx.com/jennysmi/100GbE-PYNQ#project-generation)

[Running the Project](https://gitenterprise.xilinx.com/jennysmi/100GbE-PYNQ#running-the-project)

## Introduction
This project provides an example design for working with the [UltraScale+ Integrated 100GbE Subsystem (CMAC)](https://www.xilinx.com/products/intellectual-property/cmac_usplus.html) on the Xilinx [ZCU111](https://www.xilinx.com/support/documentation/boards_and_kits/zcu111/ug1271-zcu111-eval-bd.pdf). The 100 GbE subsystem consists of a hardened IP also known as the CMAC. This hardened IP is available in Xilinx UltraScale+ devices. See the [Xilinx documentation](https://www.xilinx.com/products/intellectual-property/cmac_usplus.html) for more details on the IP core. 



The ZCU111 comes with four, SFP28 ports in a horizontal cage. Each of these is connected to one GTY transceiver and is capable of 25 GbE. The four together acheive 100 GbE. This project includes an example design targeting the SFP28 cage and also demonstrates 100 GbE with the newer QSFP port. The QSFP connector similarly accepts four GTY transceivers each running 25 GbE; however, they are all connected in the same connector which allows QSFP to provide 100 GbE in a smaller form factor. The Aldec [QSPF to FMC daughter card](https://www.aldec.com/en/products/emulation/daughter_cards/fmc_daughter/fmc_qsfp) is used to convert the ZCU111 FMC+ connector to two QSFP ports. This project contains an example deisgn for each QSFP. The only difference among the overlay designs is the CMAC and transceivers used.
## Aldec Daughter Card Connected to ZCU111 FMC+ to Create QSPF
![Alt text](./py/images/CMAC_Aldec_Setup_1.png?raw=true "Aldec Card Plugged into ZCU111 FMC+ Connector")

The CMAC is configured in CAUI-4 mode meaning it achevies 100 GbE via 4, 25Gb/sec lanes. The CMAC register map is exposed in PYNQ and a driver exists to simplfy core operation. The design also features 4 FS "generic" 25GbE SFP28 passive loopback modules (Product: 109377) and 2 Amphelol 100 GbE QSFP passive loopback modules (Product: SF-100GLB0W00-0DB). If you don't have loopback modules, you can still experiment with the CMAC by enabling "Near-End PMA Loopback" in the notebook which routes the transmit path to the receive path internally as opposed to sending them off package via the transceivers. Functionality can also be probed in Vivado Hardware Manager by ILAs which exist on the CMAC transmit and receive paths.

## Passive Loopback Modules
![Alt text](./py/images/CMAC_Aldec_Setup_2.png?raw=true "Aldec Card Plugged into ZCU111 FMC+ Connector")

## Project Generation
The project was built using Vivado 2020.2. Before you can regenerate the project, you must follow the steps below to obtain a free, click-through license for the CMAC IP. If you already have a CMAC license in your Vivado license manager, skip to Building the Project.

### CMAC License
1. Head to the [CMAC webpage](https://www.xilinx.com/products/intellectual-property/cmac_usplus.html) and click "Get License".
2. Enter your information and click "Next" to get to the screen shown below. Check the box for the UltraScale+ Integrated 100G Ethernet No Charge License. ![Alt text](./py/images/cmac_license1.png?raw=true "Aldec Card Plugged into ZCU111 FMC+ Connector")
3. Enter the information specific to your license, for example: the host ID. Refer to your main Vivado license if needed. ![Alt text](./py/images/cmac_license2.png?raw=true "Aldec Card Plugged into ZCU111 FMC+ Connector")
4. Download the new cmac license from your email. **Rename the file to avoid overwriting your main Vivado license in the next step**, example: `cmac.lic`.
5. Use the Vivado license manager to add the new CMAC license the same way you add the main Vivado license. See [licensing support](https://www.xilinx.com/support/documentation-navigation/design-hubs/dh0013-vivado-installation-and-licensing-hub.html) for more details.

### Building the Project



1. Source the Vivado 2020.2 path `<path/to/Vivado>/2020.1/settings64.sh`
2. Clone the repo `git clone https://gitenterprise.xilinx.com/jennysmi/100GbE-PYNQ.git`
3. Move into the repo folder `cd 100GbE-PYNQ`
4. Run `make`

## Running the Project
To test the project, transfer the contents of `/py` and the newly populated `/ZCU111/board_test` to a ZCU111 running a PYNQ v2.6 image. Place them in the same folder and run the `CMAC_Intro.ipynb` notebook. If you don't have such a board available, you can still view the notebook with the executed cells [here](https://gitenterprise.xilinx.com/jennysmi/100GbE-PYNQ/blob/main/py/CMAC_Intro.ipynb).

