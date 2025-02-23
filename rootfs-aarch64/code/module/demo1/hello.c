//hello.c
#include <linux/init.h>
#include <linux/module.h>

struct stu {
	int a;
	int b;
	int c;
};

static int __init hello_init(void)
{
	// 指定初始化结构体
	struct stu ss = {.a = 65, .b = 66, .c = 67};
	int *p = &ss.b;
	// container_of根据成员地址获得结构体地址
	struct stu *p_ss = container_of(p, struct stu, b);
	printk(KERN_ALERT "p_ss->a: %c\n", p_ss->a);
	printk(KERN_ALERT "p_ss->c: %c\n", p_ss->c);

	// 指定初始化数组
	int a[100] = {[0 ... 98] = 0, [99] = 100};
	printk(KERN_ALERT "a[50]: %d\n", a[50]);
	printk(KERN_ALERT "a[99]: %d\n", a[99]);

	int i = 3;
	switch (i) {
	case 1:
		break;
	case 2 ... 4:
		printk(KERN_ALERT "%d\n", i);
		break;
	}

	return 0;
}

static void __exit hello_exit(void)
{
	printk(KERN_ALERT "xjx, Goodbye, world\n");
}

module_init(hello_init);
module_exit(hello_exit);

MODULE_LICENSE("GPL v2");
MODULE_AUTHOR("xjx");
MODULE_DESCRIPTION("Hello to linux device drivers development");
