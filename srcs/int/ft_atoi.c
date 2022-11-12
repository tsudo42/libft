/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tsudo <tsudo@student.42tokyo.jp>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/12 00:00:00 by tsudo             #+#    #+#             */
/*   Updated: 2022/11/12 00:00:00 by tsudo            ###   ##########        */
/*                                                                            */
/* ************************************************************************** */

#include "ft_int.h"
#include "ft_char.h"

/* ************************************************************************** */
/*  This helper function reads str and returns represented number.            */
/*  If the number is more than ULONG_MAX, this function returns ULONG_MAX     */
/* ************************************************************************** */
static unsigned long	read_num(const char *str)
{
	unsigned long	ul;
	unsigned long	add;

	ul = 0;
	while ('0' <= *str && *str <= '9')
	{
		add = *str - '0';
		if ((ul > ULONG_MAX / 10) || \
			(ul == ULONG_MAX / 10 && add > ULONG_MAX % 10))
			return (ULONG_MAX);
		ul = ul * 10 + add;
		++str;
	}
	return (ul);
}

/* ************************************************************************** */
/*  This function converts the initial portion of the string pointed to by    */
/*  str to int representation.                                                */
/*  This function equivalent to: (int)strtol(str, (char **)NULL, 10); unless  */
/*  strtol uses errno.                                                        */
/* ************************************************************************** */
int	ft_atoi(const char *str)
{
	int				sign;
	unsigned long	num;

	while (ft_isspace(*str))
		++str;
	sign = 1;
	if (*str == '+' || *str == '-')
	{
		if (*str == '-')
			sign = -1;
		++str;
	}
	num = read_num(str);
	if (sign > 0)
	{
		if (num > LONG_MAX)
			return ((int)LONG_MAX);
		return (num);
	}
	else
	{
		if (num > LONG_MAX)
			return ((int)LONG_MIN);
		return (-(long)num);
	}
}
