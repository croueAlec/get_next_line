/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_bonus.h                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: acroue <acroue@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/16 11:58:45 by acroue            #+#    #+#             */
/*   Updated: 2023/11/29 11:00:53 by acroue           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_BONUS_H
# define GET_NEXT_LINE_BONUS_H

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 42
# endif

# ifndef MAX_FD
#  define MAX_FD 1024
# endif

# include <stdlib.h>
# include <unistd.h>
# include <fcntl.h>

int		ft_strlen(const char *str);
char	*ft_strnjoin(char *s1, char *s2, int n);
int		is_newline(char *str);
int		read_buffer(int fd, char *buffer);
void	*ft_memmove(void *dest, const void *src, size_t n);
char	*get_next_line(int fd);

#endif
