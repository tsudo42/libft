/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtok.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tsudo <tsudo@student.42tokyo.jp>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/06 17:45:54 by tsudo             #+#    #+#             */
/*   Updated: 2022/03/06 18:32:49 by tsudo            ###   ##########        */
/*                                                                            */
/* ************************************************************************** */

#include "ft_string.h"

/* ************************************************************************** */
/*  This function isolates sequential tokens in a string separated by sep.    */
/*  Unlike the original strspn, this consideres NULL arg as blank string.     */
/* ************************************************************************** */
char	*ft_strtok(char *str, const char *sep)
{
	static char	*next;
	char		*tmp;
	size_t		i;

	if (str == NULL && next == NULL)
		return (NULL);
	if (next == NULL || str != NULL)
		next = str;
	next += ft_strspn(next, sep);
	i = ft_strcspn(next, sep);
	if (next[0] == '\0' || next[i] == '\0')
	{
		next = NULL;
		return (NULL);
	}
	next[i - 1] = '\0';
	tmp = next;
	next += i;
	return (tmp);
}
