/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tsudo <tsudo@student.42tokyo.jp>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/13 13:07:17 by tsudo             #+#    #+#             */
/*   Updated: 2022/03/04 17:46:54 by tsudo            ###   ##########        */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H

# ifdef BUFFER_SIZE
#  if BUFFER_SIZE <= 0
#   error "invalid BUFFER_SIZE"
#  endif
# else
/* #  warning "BUFFER_SIZE not defined: define as 42" */
#  define BUFFER_SIZE 42
# endif /* BUFFER_SIZE */

# include <errno.h>
# include <unistd.h>
# include "ft_mem.h"
# include "ft_string.h"

# ifndef FD_MAX
#  ifdef OPEN_MAX
#   define FD_MAX OPEN_MAX
#  endif /* OPEN_MAX */
# endif /* FD_MAX */

# ifndef FD_MAX
#  define FD_MAX 1024
# endif /* FD_MAX */

typedef struct s_gnl_buf
{
	void	*ptr;
	size_t	size;
}	t_gnl_buf;

/* Normal get_next_line. Can handle multiple fd at the same time. */
/* Also, able to handle binary inputs. */
char	*get_next_line(int fd);

/* Mandetory part of get_next_line. */
char	*get_next_line_easy(int fd);

/* GNL but ignores Ctrl+D. */
char	*gnl_ignore_ctrl_d(int fd);

#endif /* GET_NEXT_LINE_H */
