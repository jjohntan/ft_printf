/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jetan <jetan@student.42kl.edu.my>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/30 12:27:03 by jetan             #+#    #+#             */
/*   Updated: 2024/02/21 09:55:55 by jetan            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <unistd.h>
# include "../libft/libft.h"

int	ft_printf(const char *format, ...);
int	ft_print_char(char c);
int	ft_print_num_base(unsigned long nbr, char *base);
int	ft_print_nbr(int n);
int	ft_print_ptr(void *ptr);
int	ft_print_str(char *s);
int	ft_print_percent(void);

#endif
