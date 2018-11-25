#include "./includes/libftasm.h"

void KO()
{
	write(1, RED, 5);
	write(1, "\t\tERROR\n", 8);
	write(1, RESET, 5);
}

void OK()
{
	write(1, GREEN, 5);
	write(1, "\t\tSUCESS\n", 9);
	write(1, RESET, 5);
}

void ko()
{
	write(1, RED, 5);
	write(1, "\t\tERROR\n", 8);
	write(1, RESET, 5);
}

void ok()
{
	write(1, GREEN, 5);
	write(1, "\t\tSUCESS\n", 9);
	write(1, RESET, 5);
}

void print(char *str)
{
	int i;

	i = -1;
	while (str[++i])
		write(1, &str[i], 1);
}

void test_bzero()
{
	int i;
	char *toto = strdup("123456789\0");

	i = 0;
	write(1, "\ntest_bzero : \n", 15);
	ft_bzero(toto, 9);
	while (i < 9)
	{
		if (toto[i])
		{
			KO();
			return;
		}
		i++;
	}
	OK();
}


char	*ft_strcat(char *s1, const char *s2);

void test_strcat()
{
	char *dest = (char *)malloc(sizeof(char) * 11);
	ft_bzero(dest, 11);
	dest[0] = '1';
	dest[1] = '2';
	dest[2] = '3';
	char *src = strdup("456789\0");
	char *dest2;

	write(1, "\ntest_strcat : \n", 16);

	dest2 = ft_strcat(dest, src);
	if (strcmp(dest2, "123456789\0"))
		KO();
	else
		OK();
}

void test_isalpha()
{
	write(1, "\ntest_isalpha : \n", 17);
	if (ft_isalpha('q'))
		OK();
	else 
		KO();
	if (ft_isalpha('2'))
		KO();
	else 
		OK();
	if (ft_isalpha('['))
		KO();
	else 
		OK();
}

void test_isdigit()
{
	write(1, "\ntest_isdigit : \n", 17);
	if (ft_isdigit('0'))
		OK();
	else 
		KO();
	if (ft_isdigit('9'))
		OK();
	else 
		KO();
	if (ft_isdigit('r'))
		KO();
	else 
		OK();
}

void test_isprint()
{
	print("\ntest_isprint : \n\0");
	if (ft_isprint('#'))
		OK();
	else 
		KO();
	if (ft_isprint(';'))
		OK();
	else 
		KO();
	if (ft_isprint(30))
		KO();
	else 
		OK();
}

void test_isalnum()
{
	write(1, "\ntest_isalnum : \n", 17);
	if (ft_isalnum('4'))
		OK();
	else 
		KO();
	if (ft_isalnum('r'))
		OK();
	else 
		KO();
		if (ft_isalnum('!'))
		KO();
	else 
		OK();
}

void test_isascii()
{
	write(1, "\ntest_isascii : \n", 17);
	if (ft_isascii('4'))
		OK();
	else 
		KO();
	if (ft_isascii('r'))
		OK();
	else 
		KO();
		if (ft_isascii('!'))
		OK();
	else 
		KO();
}

void test_toupper()
{
	write(1, "\ntest_toupper : \n", 17);

	if (ft_toupper('a') == 'A')
		OK();
	else
		KO();
	if (ft_toupper('A') == 'a')
		KO();
	else
		OK();
	if (ft_toupper('1') == '1')
		OK();
	else
		KO();
	if (ft_toupper('A') == 'A')
		OK();
	else
		KO();
}

void test_tolower()
{
	write(1, "\ntest_tolower : \n", 17);

	if (ft_tolower('A') == 'a')
		OK();
	else
		KO();
	if (ft_tolower('a') == 'A')
		KO();
	else
		OK();
	if (ft_tolower('1') == '1')
		OK();
	else
		KO();
	if (ft_tolower('a') == 'a')
		OK();
	else
		KO();
}

void test_puts()
{
	print("test_puts : \n\0");
	ft_puts("\x1B[32m");
	ft_puts("\t\tSUCESS");
	ft_puts("\t\tSUCESS");
	ft_puts("\x1B[0m");
}

void test_strlen()
{
	print("test_strlen : \n\0");
	if (ft_strlen("123\0") == 3)
		OK();
	else
		KO();
	if (ft_strlen("\0") == 0)
		OK();
	else
		KO();
	if (ft_strlen("1vfvfvfv23\0") == 10)
		OK();
	else
		KO();
}

void	*ft_memset(void *b, int c, size_t len);

void test_memset()
{
	char *toto = strdup("123456789\0");
	char *toto2 = strdup("123456789\0");
	char *tutu = strdup("This is a string");
	char *tutu2 = strdup("This is a string");

	print("test_memset : \n\0");

	if (strcmp(ft_memset(toto, 'c', 9), memset(toto2, 'c', 9)))
		KO();
	else
		OK();

	if (strcmp(ft_memset(tutu, 65, strlen(tutu)), memset(tutu2, 65, strlen(tutu))))
		KO();
	else
		OK();
}

void	*ft_memcpy(void *dst, const void *src, size_t n);

void test_memcpy()
{
	char *toto = strdup("1234\0");

	print("test_memcpy : \n\0");

	if (strcmp(ft_memcpy(toto, "56789\0", 6), "56789\0"))
		KO();
	else
		OK();
}

void test_strdup()
{

	print("test_strdup : \n\0");

	if (strcmp(ft_strdup("1234\0"), strdup("1234\0")))
		KO();
	else
		OK();

	if (strcmp(ft_strdup("\0"), strdup("\0")))
		KO();
	else
		OK();

	if (strcmp(ft_strdup(""), strdup("")))
		KO();
	else
		OK();
}

int main()
{
	test_bzero();
	test_strcat();
	test_isalpha();
	test_isdigit();
	test_isprint();
	test_isalnum();
	test_isascii();
	test_toupper();
	test_tolower();
	test_puts();
	test_strlen();
	test_memset();
	test_memcpy();
	test_strdup();
	return 1;
}