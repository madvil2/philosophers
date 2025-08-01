NAME :=				philo

SRC_PATH :=			srcs/
INC_PATH :=			includes/
OBJ_PATH :=			.obj/

CC :=				cc
CFLAGS :=			-g -Wall -Werror -Wextra
IFLAGS :=			-I $(INC_PATH)

HFILES :=			philo
FILES :=			main\
					utils

HDRS :=				$(addprefix $(INC_PATH), $(addsuffix .h, $(HFILES)))
SRCS :=				$(addprefix $(SRC_PATH), $(addsuffix .c, $(FILES)))
OBJS :=				$(SRCS:$(SRC_PATH)%.c=$(OBJ_PATH)%.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(OBJS) $(LFLAGS) -o $(NAME)

$(OBJS): $(OBJ_PATH)%.o: $(SRC_PATH)%.c $(HDRS)
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) $(IFLAGS) -c $< -o $@

clean: mclean

fclean: mfclean

re: fclean all

mclean:
	rm -f $(OBJS)

mfclean:
	rm -f $(NAME)
	rm -rf $(OBJ_PATH)

mre: mfclean all

.PHONY: all clean fclean re mclean mfclean mre