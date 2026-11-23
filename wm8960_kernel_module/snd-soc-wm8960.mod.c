#include <linux/module.h>
#define INCLUDE_VERMAGIC
#include <linux/build-salt.h>
#include <linux/elfnote-lto.h>
#include <linux/export-internal.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;
BUILD_LTO_INFO;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif


static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0x6db44e4a, "regcache_sync" },
	{ 0x72c71ec3, "regmap_write" },
	{ 0x15313f79, "devm_kmalloc" },
	{ 0xd80a0911, "of_property_read_variable_u32_array" },
	{ 0x28d511c1, "snd_soc_component_read" },
	{ 0x21fc04e8, "snd_soc_put_enum_double" },
	{ 0xd9619b8b, "devm_clk_get" },
	{ 0x95dc3ee2, "snd_soc_component_write" },
	{ 0xccae59f5, "devm_snd_soc_register_component" },
	{ 0x7c9a7371, "clk_prepare" },
	{ 0x92997ed8, "_printk" },
	{ 0x2f5b6b6a, "__devm_regmap_init_i2c" },
	{ 0x1d825fe3, "snd_soc_get_enum_double" },
	{ 0x90992c95, "i2c_register_driver" },
	{ 0xb56f4d21, "snd_soc_info_volsw" },
	{ 0x33f87614, "snd_ctl_boolean_mono_info" },
	{ 0x98741c0, "_dev_err" },
	{ 0xe88b9c30, "snd_soc_dapm_put_volsw" },
	{ 0x781cced8, "of_find_property" },
	{ 0x4ec982d3, "snd_soc_add_component_controls" },
	{ 0x3821d36d, "_dev_warn" },
	{ 0xe45ab946, "snd_soc_dapm_add_routes" },
	{ 0x1d218d6b, "snd_soc_info_enum_double" },
	{ 0xe2d5255a, "strcmp" },
	{ 0xa7bd435c, "snd_soc_get_volsw" },
	{ 0x7bd2902, "snd_soc_put_volsw" },
	{ 0x9a1f7155, "snd_soc_component_update_bits" },
	{ 0xbe6e632d, "snd_soc_dapm_new_controls" },
	{ 0xb43f9365, "ktime_get" },
	{ 0xb6e6d99d, "clk_disable" },
	{ 0x7848977e, "regmap_update_bits_base" },
	{ 0xa839dec, "snd_soc_dapm_get_volsw" },
	{ 0x4dea6040, "i2c_del_driver" },
	{ 0x815588a6, "clk_enable" },
	{ 0xeb711ae7, "snd_soc_params_to_bclk" },
	{ 0xf9a482f9, "msleep" },
	{ 0xe56a9336, "snd_pcm_format_width" },
	{ 0xb077e70a, "clk_unprepare" },
	{ 0x969ba93, "module_layout" },
};

MODULE_INFO(depends, "");

MODULE_ALIAS("acpi*:1AEC8960:*");
MODULE_ALIAS("acpi*:10138960:*");
MODULE_ALIAS("i2c:wm8960");
MODULE_ALIAS("of:N*T*Cwlf,wm8960");
MODULE_ALIAS("of:N*T*Cwlf,wm8960C*");
