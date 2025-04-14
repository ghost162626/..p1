s://api.github.com/repos/{REPO_OWNER}/{REPO_NAME}/contents/{FILE_PATH}"

    # Criando o conteúdo no formato Lua
    new_content = "return {\n"
    for player in new_whitelist:
        new_content += f'    ["{player}"] = true,\n'
    new_content = new_content.rstrip(',\n')  # Remove a última vírgula
    new_content += "\n}"

    # Codificando o conteúdo em base64
    encoded_content = base64.b64encode(new_content.encode()).decode()

    data = {
        "message": "Atualizando whitelist via script",
        "content": encoded_content,
        "sha": sha
    }

    response = requests.put(url, headers=headers, json=data)
    return response.status_code == 200

# Função para adicionar player
def add_player_to_whitelist(player):
    wl = get_whitelist()
    wl[player] = True
    success = update_whitelist(wl)
    if success:
        print(f"`{player}` adicionado à whitelist com sucesso!")
    else:
        print(f"Erro ao tentar adicionar `{player}` à whitelist. Não foi possível atualizar