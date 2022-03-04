## ************************************************************************** ##

NAME	:= libft.a
CC		:= gcc
CFLAGS	:= -Wall -Wextra -Werror
RM		:= rm -f

## ************************************************************************** ##

SRCS_APULONG	:= \
	./apulong/ft_apulong_add.c \
	apulong/ft_apulong_cmp.c \
	apulong/ft_apulong_cpy.c \
	apulong/ft_apulong_div10.c \
	apulong/ft_apulong_mul.c \
	apulong/ft_apulong_pow.c \
	apulong/ft_apulong_str.c \
	apulong/ft_apulong_pow.c
SRCS_CHAR		:= \
	char/ft_isalnum.c \
	char/ft_isalpha.c \
	char/ft_isascii.c \
	char/ft_isdigit.c \
	char/ft_isprint.c \
	char/ft_tolower.c \
	char/ft_toupper.c
SRCS_PRINTF		:= \
	ft_printf/ft_printf_bonus.c \
	ft_printf/ft_printf.c \
	ft_printf/ftpf_float_get_bonus.c \
	ft_printf/ftpf_float_utils_bonus.c \
	ft_printf/ftpf_length_bonus.c \
	ft_printf/ftpf_option_bonus.c \
	ft_printf/ftpf_out_char_bonus.c \
	ft_printf/ftpf_out_float_bonus.c \
	ft_printf/ftpf_out_hexfloat_bonus.c \
	ft_printf/ftpf_out_signed_bonus.c \
	ft_printf/ftpf_out_string_bonus.c \
	ft_printf/ftpf_out_unsigned_bonus.c \
	ft_printf/ftpf_type_bonus.c \
	ft_printf/ftpf_write_bonus.c
SRCS_GNL		:= \
	get_next_line/get_next_line.c
SRCS_INT		:= \
	int/ft_atoi.c \
	int/ft_itoa.c \
	int/ft_nbrlen.c \
	int/ft_numstrcmp.c \
	int/ft_unbrlen.c
SRCS_LIST		:= \
	list/ft_lstadd_back.c \
	list/ft_lstadd_front.c \
	list/ft_lstclear.c \
	list/ft_lstdelone.c \
	list/ft_lstiter.c \
	list/ft_lstlast.c \
	list/ft_lstmap.c \
	list/ft_lstnew.c \
	list/ft_lstsize.c
SRCS_MEM		:= \
	mem/ft_bzero.c \
	mem/ft_calloc.c \
	mem/ft_memchr.c \
	mem/ft_memcmp.c \
	mem/ft_memcpy.c \
	mem/ft_memmove.c \
	mem/ft_memset.c \
	mem/ft_realloc.c
SRCS_PUT		:= \
	put/ft_putchar_fd.c \
	put/ft_putendl_fd.c \
	put/ft_putnbr_fd.c \
	put/ft_putstr_fd.c
SRCS_STRING		:= \
	string/ft_split.c \
	string/ft_strchr.c \
	string/ft_strdup.c \
	string/ft_striteri.c \
	string/ft_strjoin.c \
	string/ft_strlcat.c \
	string/ft_strlen.c \
	string/ft_strmapi.c \
	string/ft_strncmp.c \
	string/ft_strnlen.c \
	string/ft_strnstr.c \
	string/ft_strrchr.c \
	string/ft_strtrim.c \
	string/ft_substr.c

## ************************************************************************** ##

SRCS	:= \
	$(SRCS_APULONG) \
	$(SRCS_CHAR) \
	$(SRCS_GNL) \
	$((SRCS_INT) \
	$(SRCS_LIST) \
	$(SRCS_MEM) \
	$(SRCS_PRINTF) \
	$(SRCS_PUT) \
	$(SRCS_STRING)
OBJS	= $(patsubst %.c,objs/%.o, $(notdir $(SRCS)))
DEPS	= $(OBJS:.o=.d)
VPATH	:= apulong:char:ft_printf:get_next_line:int:list:mem:put:string

## ************************************************************************** ##

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

.PHONY: all
all: $(NAME)

-include $(DEPS)

objs/%.o: %.c
	$(CC) $(CFLAGS) -c -MMD -MP -I includes/ -o $@ $<

.PHONY: clean
clean:
	$(RM) $(OBJS)
	$(RM) $(DEPS)

.PHONY: fclean
fclean: clean
	$(RM) $(NAME)

.PHONY: re
re: fclean all
## ************************************************************************** ##
