//hello.c
#include <linux/init.h>
#include <linux/module.h>

static int __init hello_init(void)
{
	printk(KERN_ALERT "Hello, world\n");
	return 0;
}

static void __exit hello_exit(void)
{
	printk(KERN_ALERT "Goodbye, world\n");
}

module_init(hello_init);
module_exit(hello_exit);

MODULE_LICENSE("GPL v2");
MODULE_AUTHOR("zzh");
MODULE_DESCRIPTION("Hello to linux device drivers development");
