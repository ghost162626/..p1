 o GitHub.")

# Função para remover player
def remove_player_from_whitelist(player):
    wl = get_whitelist()
    if player in wl:
        del wl[player]
        success = update_whitelist(wl)
        if success:
            print(f"`{player}` removido da whitelist com sucesso!")
        else:
            print(f"Erro ao tentar remover `{player}` da whitelist. Não foi possível atualizar o GitHub.")
    else:
        print(f"`{player}` não está na whitelist.")

# Função principal para interação com o usuário
def main():
    print("Digite 1 para adicionar player à whitelist.")
    print("Digite 2 para remover player da whitelist.")
    choice = input("Escolha uma opção (1/2): ")

    player = input("Digite o nome do player: ")

    if choice == "1":
        add_player_to_whitelist(player)
    elif choice == "2":
        remove_player_from_whitelist(player)
    else:
        print("Opção inválida.")

if __name__ == "__main__":
    main()