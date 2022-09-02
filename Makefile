# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tsudo <tsudo@student.42tokyo.jp>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/05 23:50:57 by tsudo             #+#    #+#              #
#    Updated: 2022/03/14 16:01:42 by tsudo            ###   ##########         #
#                                                                              #
# **************************************************************************** #

NAME	:= libft.a
CC		:= gcc
CFLAGS	:= -Wall -Wextra -Werror -MMD -MP
AR		:= ar rc
RM		:= rm -f

ifeq ($(DEBUG), 1)
CFLAGS	+= -g3 -fsanitize=address
endif

# **************************************************************************** #

SRCS += $(SRCS_APULONG)
SRCS_APULONG	:= \
	src/apulong/ft_apulong_add.c \
	src/apulong/ft_apulong_cmp.c \
	src/apulong/ft_apulong_cpy.c \
	src/apulong/ft_apulong_div10.c \
	src/apulong/ft_apulong_mul.c \
	src/apulong/ft_apulong_pow.c \
	src/apulong/ft_apulong_str.c \
	src/apulong/ft_apulong_val.c \

SRCS += $(SRCS_EXIT)
SRCS_EXIT		:= \
	src/exit/ft_error_exit.c \
	src/exit/ft_exit.c \
	src/exit/ft_validate_file_ext.c \
	src/exit/ft_wrapped_malloc.c \
	src/exit/ft_wrapped_puts.c \

SRCS += $(SRCS_CHAR)
SRCS_CHAR		:= \
	src/char/ft_isalnum.c \
	src/char/ft_isalpha.c \
	src/char/ft_isascii.c \
	src/char/ft_isdigit.c \
	src/char/ft_islower.c \
	src/char/ft_isprint.c \
	src/char/ft_isspace.c \
	src/char/ft_isupper.c \
	src/char/ft_isxdigit.c \
	src/char/ft_tolower.c \
	src/char/ft_toupper.c \

SRCS += $(SRCS_PRINTF)
SRCS_PRINTF		:= \
	src/ft_printf/ft_dprintf.c \
	src/ft_printf/ft_printf_bonus.c \
	src/ft_printf/ft_printf.c \
	src/ft_printf/ftpf_float_get_bonus.c \
	src/ft_printf/ftpf_float_utils_bonus.c \
	src/ft_printf/ftpf_length_bonus.c \
	src/ft_printf/ftpf_option_bonus.c \
	src/ft_printf/ftpf_out_char_bonus.c \
	src/ft_printf/ftpf_out_float_bonus.c \
	src/ft_printf/ftpf_out_hexfloat_bonus.c \
	src/ft_printf/ftpf_out_signed_bonus.c \
	src/ft_printf/ftpf_out_string_bonus.c \
	src/ft_printf/ftpf_out_unsigned_bonus.c \
	src/ft_printf/ftpf_type_bonus.c \
	src/ft_printf/ftpf_write_bonus.c \

SRCS += $(SRCS_GNL)
SRCS_GNL		:= \
	src/get_next_line/get_next_line.c \
	src/get_next_line/get_next_line_easy.c \
	src/get_next_line/gnl_ignore_ctrl_d.c \

SRCS += $(SRCS_INT)
SRCS_INT		:= \
	src/int/ft_atoi.c \
	src/int/ft_heapify_int.c \
	src/int/ft_heapsort_int.c \
	src/int/ft_index.c \
	src/int/ft_intlen.c \
	src/int/ft_isintstr.c \
	src/int/ft_itoa.c \
	src/int/ft_itoa_buf.c \
	src/int/ft_lis_len.c \
	src/int/ft_lowerbound_int.c \
	src/int/ft_nbrlen.c \
	src/int/ft_numstrcmp.c \
	src/int/ft_shrinkarr_int.c \
	src/int/ft_strtol.c \
	src/int/ft_strtoul.c \
	src/int/ft_unbrlen.c \

SRCS += $(SRCS_LIST)
SRCS_LIST		:= \
	src/list/ft_lstadd_back.c \
	src/list/ft_lstadd_front.c \
	src/list/ft_lstclear.c \
	src/list/ft_lstdelone.c \
	src/list/ft_lstiter.c \
	src/list/ft_lstlast.c \
	src/list/ft_lstmap.c \
	src/list/ft_lstmsort.c \
	src/list/ft_lstnew.c \
	src/list/ft_lstsize.c \

SRCS += $(SRCS_MEM)
SRCS_MEM		:= \
	src/mem/ft_bzero.c \
	src/mem/ft_calloc.c \
	src/mem/ft_free_set.c \
	src/mem/ft_memchr.c \
	src/mem/ft_memcmp.c \
	src/mem/ft_memcpy.c \
	src/mem/ft_memdup.c \
	src/mem/ft_memmove.c \
	src/mem/ft_memset.c \
	src/mem/ft_realloc.c \

SRCS += $(SRCS_PUT)
SRCS_PUT		:= \
	src/put/ft_putchar_fd.c \
	src/put/ft_putendl_fd.c \
	src/put/ft_putnbr_fd.c \
	src/put/ft_putstr_fd.c \

SRCS += $(SRCS_STRING)
SRCS_STRING		:= \
	src/string/ft_split.c \
	src/string/ft_split_sep.c \
	src/string/ft_strchr.c \
	src/string/ft_strcmp.c \
	src/string/ft_strcspn.c \
	src/string/ft_strdup.c \
	src/string/ft_striteri.c \
	src/string/ft_strjoin.c \
	src/string/ft_strjoin3.c \
	src/string/ft_strlcat.c \
	src/string/ft_strlcpy.c \
	src/string/ft_strlen.c \
	src/string/ft_strmapi.c \
	src/string/ft_strncmp.c \
	src/string/ft_strndup.c \
	src/string/ft_strnlen.c \
	src/string/ft_strnstr.c \
	src/string/ft_strrchr.c \
	src/string/ft_strsep.c \
	src/string/ft_strspn.c \
	src/string/ft_strtok.c \
	src/string/ft_strtrim.c \
	src/string/ft_substr.c \
	src/string/ft_trimnl.c \

INCS	:= \
	include \

# **************************************************************************** #

OBJDIR	= obj/
OBJS	= $(patsubst %.c,$(OBJDIR)%.o, $(notdir $(SRCS)))
DEPS	= $(OBJS:.o=.d)
CFLAGS	+= $(addprefix -I,$(INCS))
vpath %.c $(sort $(dir $(SRCS)))

GR	= \033[32;1m
RE	= \033[31;1m
YE	= \033[33;1m
CY	= \033[36;1m
RC	= \033[0m

# **************************************************************************** #

$(NAME): $(OBJDIR) $(OBJS)
	@printf "\n$(GR)=== Compiled [$(CC) $(CFLAGS)] ==="
	@printf "\n--- $(notdir $(SRCS))$(RC)\n"
	@$(AR) $(NAME) $(OBJS)
	@printf "$(CY)~~~ Archived [$(AR)] ~~~\n--- $(NAME)$(RC)\n"

all: $(NAME)

-include $(DEPS)

$(OBJDIR):
	@mkdir -p $(OBJDIR)

$(OBJDIR)%.o: %.c
	@mkdir -p $(OBJDIR)
	@$(CC) $(CFLAGS) -c -o $@ $<
	@printf "$(GR)+$(RC)"

clean:
	@printf "$(RE)--- Removing $(OBJDIR)$(RC)\n"
	@$(RM) -r $(OBJDIR)

fclean: clean
	@printf "$(RE)--- Removing $(NAME)$(RC)\n"
	@$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re

# **************************************************************************** #
