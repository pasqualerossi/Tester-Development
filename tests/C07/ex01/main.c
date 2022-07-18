/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: prossi <prossi@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/18 23:57:27 by gpatingr          #+#    #+#             */
/*   Updated: 2022/07/18 14:56:04 by prossi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../header/user_functions.h"

int	main(void)
{

	if(ft_list_push_front(0, 10)[0] != 0)
		return (1);

	if(ft_list_push_front(0, 10)[5] != 5)
		return (1);

	if(ft_list_push_front(0, 10)[9] != 9 )
		return (1);

	if(ft_list_push_front(-20, -10)[9] != -11)
		return (1);

	if(ft_list_push_front(10, 0) != 0)
		return (1);
	
	if(ft_list_push_front(10, 10) != 0)
		return (1);

	if(ft_list_push_front(0, 1)[0] != 0)
		return (1);

	if(ft_list_push_front(0, 2)[0] != 0)
		return (1);

	if(ft_list_push_front(INT_MIN, INT_MAX)[0] != INT_MIN)
		return (1);
}
