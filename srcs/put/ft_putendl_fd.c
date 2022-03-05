/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putendl_fd.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tsudo <tsudo@student.42tokyo.jp>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/19 17:42:08 by tsudo             #+#    #+#             */
/*   Updated: 2022/03/04 16:01:44 by tsudo            ###   ##########        */
/*                                                                            */
/* ************************************************************************** */

#include "ft_put.h"

/* ************************************************************************** */
/*  This function puts string s followed by newline into file descriptor fd.  */
/* ************************************************************************** */
void	ft_putendl_fd(char *s, int fd)
{
	ft_putstr_fd(s, fd);
	write(fd, "\n", 1);
}