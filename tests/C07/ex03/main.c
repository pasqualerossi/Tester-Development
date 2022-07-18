/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: prossi <prossi@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/18 23:57:27 by gpatingr          #+#    #+#             */
/*   Updated: 2022/07/18 14:56:58 by prossi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../header/user_functions.h"

int	main(void)
{
	char	**strs;

	strs = malloc(sizeof(char*) * 3);
	strs[0] = malloc(sizeof(char) * 10);
	strs[1] = malloc(sizeof(char) * 10);
	strs[2] = malloc(sizeof(char) * 10);

	strs[0][0] = 'h';
	strs[0][1] = 'e';
	strs[0][2] = 'l';
	strs[0][3] = 'l';
	strs[0][4] = 'o';
	strs[0][5] = '\0';

	strs[1][0] = 'w';
	strs[1][1] = 'o';
	strs[1][2] = 'r';
	strs[1][3] = 'l';
	strs[1][4] = 'd';
	strs[1][5] = '\0';

	strs[2][0] = 'h';
	strs[2][1] = 'e';
	strs[2][2] = 'l';
	strs[2][3] = 'l';
	strs[2][4] = 'o';
	strs[2][5] = '\0';
	
	if (strcmp(ft_list_last(3, strs, "%-%"), "hello%-%world%-%hello") != 0)
		return (1);

	if (strcmp(ft_list_last(3, strs, ""), "helloworldhello") != 0)
		return (1);
}
