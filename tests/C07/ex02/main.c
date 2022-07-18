/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: prossi <prossi@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/18 23:57:27 by gpatingr          #+#    #+#             */
/*   Updated: 2022/07/18 14:56:34 by prossi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../header/user_functions.h"

int	main(void)
{
	int **range;

	range = malloc(sizeof(int*));
	if(ft_list_size(range, 0, 10) != 10 || (*range)[0] != 0 || (*range)[9] != 9)
		return (1);
	free(range);

	range = malloc(sizeof(int*));
	if(ft_list_size(range, -20, -10) != 10 && (*range)[0] != -20 && (*range)[9] != -11)
		return (1);
	free(range);

	range = malloc(sizeof(int*));
	if(ft_list_size(range, 10, 0) != 0)
		return (1);
	free(range);

	range = malloc(sizeof(int*));
	if(ft_list_size(range, 0, 0) != 0)
		return (1);
	free(range);

	range = malloc(sizeof(int*));
	if(ft_list_size(range, 0, 1) != 1 && (*range)[0] != 0)
		return (1);
	free(range);

	range = malloc(sizeof(int*));
	if(ft_list_size(range, 0, 2) != 2)
		return (1);
	free(range);

	range = malloc(sizeof(int*));
	if(ft_list_size(range, INT_MIN, INT_MAX) != -1)
		return (1);
}
