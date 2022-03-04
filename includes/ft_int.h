/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_int.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tsudo <tsudo@student.42tokyo.jp>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/04 16:13:01 by tsudo             #+#    #+#             */
/*   Updated: 2022/03/04 16:15:53 by tsudo            ###   ##########        */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_INT_H
# define FT_INT_H

# include <stdint.h>
# include <stdlib.h>

int		ft_atoi(const char *str);
char	*ft_itoa(int n);
size_t	ft_nbrlen(intmax_t n, int base);
int		ft_numstrcmp(const char *s1, const char *s2);
size_t	ft_unbrlen(uintmax_t n, unsigned int base);

#endif /* FT_INT_H */
