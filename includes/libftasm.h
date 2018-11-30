#ifndef LIBFTASM_H
# define LIBFTASM_H
# include <strings.h>
# include <unistd.h>
# include <stdio.h>
# include <string.h>
# include <stdlib.h>

# define GREEN  "\x1B[32m"
# define RED  "\x1B[31m"
# define RESET  "\x1B[0m"

void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *dest, const char *src);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_isspace(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_puts(const char *s);
size_t	ft_strlen(const char *s);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *dst, const void *src, size_t n);
char	*ft_strdup(const char *s);
void	ft_cat(int fd);
int		ft_isblank(int c);
int		ft_islower(int c);
int		ft_isupper(int c);
void	*ft_memalloc(size_t size);
int		ft_abs(int i);
int		ft_square(int i);
char	*ft_strchr(const char *s, int c);
char	*ft_strrchr(const char *s, int c);
char	*ft_strndup(const char *s1, size_t len);

#endif
