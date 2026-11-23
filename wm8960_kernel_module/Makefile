obj-m += snd-soc-wm8960.o
snd-soc-wm8960-y := wm8960.o

KDIR ?= ~/nxp-audio/build-xwayland/tmp/work-shared/imx8mnevk/kernel-build-artifacts
all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
