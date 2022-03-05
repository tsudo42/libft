/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_exit.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tsudo <tsudo@student.42tokyo.jp>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/04 13:51:27 by tsudo             #+#    #+#             */
/*   Updated: 2022/03/05 19:40:01 by tsudo            ###   ##########        */
/*                                                                            */
/* ************************************************************************** */

#include "ft_exit.h"

void	ft_exit(int exit_no, char *err_msg)
{
	ft_putendl_fd(err_msg, 2);
	exit(exit_no);
}
