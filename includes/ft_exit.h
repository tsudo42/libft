/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_exit.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tsudo <tsudo@student.42tokyo.jp>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/05 19:37:27 by tsudo             #+#    #+#             */
/*   Updated: 2022/03/05 19:40:42 by tsudo            ###   ##########        */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_EXIT_H
# define FT_EXIT_H

# include <stdlib.h>
# include "ft_put.h"

void	ft_exit(int exit_no, char *err_msg);
void	*ft_wrapped_malloc(size_t size, int exit_no, char *err_msg);

#endif /* FT_EXIT_H */