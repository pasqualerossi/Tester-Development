/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: prossi <prossi@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/18 23:57:27 by gpatingr          #+#    #+#             */
/*   Updated: 2022/07/18 15:02:13 by prossi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../header/user_functions.h"

int	main(void)
{
	ft_list_at_base(123, "0123456789ABCDEF"); // 7B
	ft_list_at_base(123, "01"); // 1111011
	ft_list_at_base(-6546546, "01"); // -11000111110010001110010

	ft_list_at_base(123, "1");
	ft_list_at_base(123, "abcda");
	ft_list_at_base(123, "0+1");
}
