/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putspace.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dhervy <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/04/06 23:52:29 by dhervy            #+#    #+#             */
/*   Updated: 2016/04/06 23:52:31 by dhervy           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putspace(int size)
{
	int i;

	i = 0;
	while (i < size)
	{
		ft_putchar(' ');
		i++;
	}
}