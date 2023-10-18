/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tchaves <tchaves@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/11 14:32:16 by tchaves           #+#    #+#             */
/*   Updated: 2023/10/18 14:22:37 by tchaves          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

// This function is used to concatenation one string to another, unlike strjoin 
// its return value will be the total length of the concatenated string

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t size)
{
	size_t	dstlen;
	size_t	i;

	if (size <= ft_strlen(dst))
		return (size + ft_strlen(src));
	dstlen = ft_strlen(dst);
	i = 0;
	while (src[i] != '\0' && dstlen + 1 < size)
	{
		dst[dstlen] = src[i];
		i++;
		dstlen++;
	}
	dst[dstlen] = '\0';
	return (ft_strlen(dst) + ft_strlen(&src[i]));
}
