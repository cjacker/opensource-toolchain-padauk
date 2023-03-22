# Opensource toolchain tutorial for Padauk MCU

> PADAUK Technology Co., Ltd. founded in Feb of 2005 and we are devoted to make development of microcontroller as company core. We insist on having our own IP and development system(IDE/ICE), also the Writer is
> self-developed in order to make sure whole technology can be fully grasped. Therefore, it’s available to provide better design performance and programming flexibility issues which can supply perfect solution and meet inquiry from customer timely.

Padauk is one of the cheapest MCU manufacturer in the world. You can google “3 cents MCU” to find more information at your discretion. In fact, the retail price of PFS154 (MTP) is approximately 4 cents, and PFS123 SOP16 is around 6 cents, which is why this low price has garnered considerable attention.

Padauk mainly manufactures One Time Programmable (OTP) parts, But there still some Multiple Time Programmable (MTP) ICs available. Additionally, the majority of their ICs use SOP packaging, the QFN packaging may not be widely available through distributors and might only be accessible through direct requests.

All their devices are based on Padauks MCU architecture, which is significantly extended over that of the PIC12: It uses separated I/O and SRAM memory regions and allows to address the full range without banking. In contrast to all other devices, the stack is memory mapped. Most instructions execute in a single cycle.

Padauk’s own tool-chain is based on a custom programming language called “Mini-C” with a syntax based on the C-language. This language is only supported by their own tool-chain, including IDE (“Padauk Developer Studio”) and programmer (“Writer”). The tool-chain also uses a custom binary format with encryption/obfuscation. 

Following the discussion on EEVblog, a small community has formed around the Padauk MCU with the goal of creating an open source toolchain for the device. Most of the activities are covered in [this thread](https://www.eevblog.com/forum/blog/eevblog-1144-padauk-programmer-reverse-engineering/).

As of today, reverse engineering the [instruction encoding](https://free-pdk.github.io/) was completed, the [programming protocol](https://github.com/cpldcpu/SimPad/tree/master/Protocol) was documented, an [open hardware programmer](https://github.com/free-pdk/easy-pdk-programmer-hardware) was developed and support for several flavors of the PDK architecture was integrated into [SDCC](https://sourceforge.net/projects/sdcc/). Development for all of the previously mentioned Padauk MCUs is now possible using a fully open toolchain. 

Since the open source tool-chain is based on the Small Device C-Compiler (SDCC) and therefore does support Standard C and common binary output formats (intel hex and bin), including those used by the Easy PDK Programmer.

For more details of Opensource toolchain and other resources, please refer to https://free-pdk.github.io/.


# Hardware prerequiest
- PFS154/PFS123 ICs
- SOP16/SOP8 adapter board
- Optional : Arduino Uno, for PFS154 pdkprogsheild programmer (only for PFS154)
- Optional : USB2TTL adapter, for running some uart examples
- Soldering iron, for soldering self-made breakout boards and programmers.

# Toolchain overview
- Compiler: SDCC
- SDK: like 8051, no SDK required
- Programming tool: easypdkprog with easypdk programmer / pfsprog with arduino pdkprogsheild (Only for PFS154)
- Debugging: no opensource solution
