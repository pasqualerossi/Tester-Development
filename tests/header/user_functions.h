/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   user_functions.h                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: prossi <prossi@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/19 00:06:00 by gpatingr          #+#    #+#             */
/*   Updated: 2022/07/18 15:57:33 by prossi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef _USER_FUNCTIONS_H_
# define _USER_FUNCTIONS_H_

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>

// c00 functions
void			ft_create_elem(char c);
void			ft_list_push_front(void);
void			ft_list_size(void);
void			ft_list_last(void);
void			ft_list_push_back(int n);
void			ft_list_push_strs(void);
void			ft_list_clear(void);
void			ft_list_at(int nb);
void			ft_list_foreach(int n);

// c01
void			ft_ft(int *nbr);
void			ft_ultimate_ft(int *********nbr);
void			ft_swap(int *a, int *b);
void			ft_div_mod(int a, int b, int *div, int *mod);
void			ft_ultimate_div_mod(int *a, int *b);
void			ft_putstr(char *str);
int				ft_strlen(char *str);
void			ft_rev_int_tab(int *tab, int size);
void			ft_sort_int_tab(int *tab, int size);

// c02
char			*ft_strcpy(char *dest, char *src);
char			*ft_strncpy(char *dest, char *src, unsigned int n);
int				ft_str_is_alpha(char *str);
int				ft_str_is_numeric(char *str);
int				ft_str_is_lowercase(char *str);
int				ft_str_is_uppercase(char *str);
int				ft_str_is_printable(char *str);
char			*ft_strupcase(char *str);
char			*ft_strlowcase(char *str);
char			*ft_strcapitalize(char *str);
unsigned int	ft_strlcpy(char *dest, char *src, unsigned int size);
void			ft_putstr_non_printable(char *str);
void			*ft_print_memory(void *addr, unsigned int size);

// c03
int				ft_strcmp(char *s1, char *s2);
int				ft_strncmp(char *s1, char *s2, unsigned int n);
char			*ft_strcat(char *dest, char *src);
char			*ft_strncat(char *dest, char *src, unsigned int nb);
char			*ft_strstr(char *src, char *to_find);
int				ft_strlcat(char *dest, char *src, unsigned int size);

// c04
int				ft_strlen(char *str);
void			ft_putstr(char *str);
void			ft_list_at(int nb);
int				ft_atoi(char *str);
void				ft_list_at_base(int nbr, char *base);
int			ft_atoi_base(char *str, char *base);

// c05
int				ft_iterative_factorial(int nb);
int				ft_recursive_factorial(int nb);
int				ft_iterative_power(int nb, int power);
int				ft_recursive_power(int nb, int power);
int				ft_fibonacci(int index);
int				ft_sqrt(int nb);
int				ft_is_prime(int nb);
int				ft_find_next_prime(int nb);
int				ft_ten_queens_puzzle(void);

// C06
// No prototypes?

// c07
char			*ft_create_elem(char *src);
int			*ft_list_push_front(int min, int max);
int			ft_list_size(int **range, int min, int max);
char			*ft_list_last(int size, char **strs, char *sep);
char			*ft_list_push_back(char *nbr, char *base_from, char *base_to);
char			**ft_list_push_strs(char *str, char *charset);

// c08
// ex00-03 - Header Exercises
struct			s_stock_str *ft_list_push_back(int ac, char **av);
void			ft_list_push_strs(struct s_stock_str *par);

// c09
void			ft_create_elem(char c);
void			ft_swap(int *a, int *b);
void			ft_putstr(char *str);
int			ft_strlen(char *str);
int			ft_strcmp(char *s1, char *s2);
//ex01 - MAKEFILE exercise here
char			**ft_list_push_strs(char *str, char *charset);

// c10
// No prototypes?

// c11
void			ft_create_elem(int *tab, int length, void(*f)(int));
int			*ft_list_push_front(int *tab, int length, int(*f)(int));
int			ft_list_size(char **tab, int(*f)(char*));
int			ft_list_last(char **tab, int length, int(*f)(char*));
int			ft_list_push_back(int *tab, int length, int(*f)(int,int));
// ex05 - no prototype
void			ft_list_clear(char **tab);
void			ft_list_at(char **tab, int(*cmp)(char *,char *));

// C12
t_list			*ft_create_elem(void *data);
void			ft_list_push_front(t_list **begin_list, void *data);
int			ft_list_size(t_list *begin_list);
t_list			*ft_list_last(t_list *begin_list);
void			ft_list_push_back(t_list **begin_list, void *data);
t_list 			*ft_list_push_strs(int size, char **strs);
void			ft_list_clear(t_list *begin_list, void(*free_fct)(void *));
t_list 			*ft_list_at(t_list *begin_list, unsigned int nbr);
void			ft_list_foreach(t_list **begin_list);
void			ft_list_foreach(t_list *begin_list, void(*f)(void *));
void			ft_list_foreach_if(t_list *begin_list, void(*f)(void *), void *data_ref, int (*cmp)())
t_list 			*ft_list_find(t_list *begin_list, void *data_ref, int (*cmp)());
void			ft_list_remove_if(t_list **begin_list, void *data_ref, int (*cmp)(), void (*free_fct)(void *));
void			ft_list_merge(t_list **begin_list1, t_list *begin_list2);
void			ft_list_sort(t_list **begin_list, int (*cmp)());
void			ft_list_foreach_fun(t_list *begin_list);
void			ft_sorted_list_insert(t_list **begin_list, void *data, int (*cmp)());
void			ft_sorted_list_merge(t_list **begin_list1, t_list *begin_list2, int (*cmp)());

// C13
t_btree 		*btree_create_node(void *item);
void			btree_apply_prefix(t_btree *root, void (*applyf)(void *));
void			btree_apply_infix(t_btree *root, void (*applyf)(void *));
void			btree_apply_suffix(t_btree *root, void (*applyf)(void *));
void			btree_insert_data(t_btree **root, void *item, int (*cmpf)(void *,void *));
void			*btree_search_item(t_btree *root, void *data_ref, int (*cmpf)(void *,void *));
int			btree_level_count(t_btree *root);
void			btree_apply_by_level(t_btree *root, void (*applyf)(void *item, int current_level, int is_first_elem));

// FUTURE - BSQ, RUSH00, 01 AND 02

#endif
