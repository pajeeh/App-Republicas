# 🏠 App Repúblicas

> Solução mobile para conectar estudantes universitários a moradias e repúblicas de forma simples e segura.

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

## 📋 Sobre o Projeto

O **App Repúblicas** nasceu da necessidade de centralizar a busca por moradia estudantil. O aplicativo permite que proprietários e estudantes anunciem vagas em repúblicas, facilitando o filtro por proximidade da universidade, preço e perfil dos moradores.

---

## ✨ Funcionalidades

- [x] **Busca Inteligente:** Filtros por localização e valor.
- [x] **Gestão de Anúncios:** Cadastro detalhado de vagas com fotos e descrições.
- [x] **Perfil do Usuário:** Informações sobre o curso e preferências de convivência.
- [ ] **Chat Integrado:** Comunicação direta entre interessados (Em desenvolvimento).
- [ ] **Geolocalização:** Visualização de vagas em um mapa interativo.

---

## 🚀 Tecnologias e Ferramentas

O projeto utiliza o que há de mais moderno no ecossistema mobile e práticas de engenharia:

| Tecnologia | Descrição |
|-----------|-----------|
| **Framework** | [Flutter](https://flutter.dev) |
| **Linguagem** | [Dart](https://dart.dev) |
| **Gerência de Estado** | Provider |
| **Arquitetura** | Clean Architecture (Camadas para facilitar testes e manutenção) |
| **Backend** | Firebase (Authentication, Firestore e Storage) |
| **Versionamento** | Git & GitHub |

---

## 📋 Pré-requisitos

Antes de começar, certifique-se de ter o ambiente configurado:

- **Flutter** (v3.0 ou superior) - [Guia de instalação](https://flutter.dev/docs/get-started/install)
- **Dart** (incluído no Flutter)
- **Git** instalado
- **Emulador Android/iOS** ou dispositivo físico configurado.

Para verificar se seu ambiente está pronto, rode:
```bash
flutter doctor
```

---

## 🛠️ Como Executar o Projeto

Siga o passo a passo abaixo para rodar a aplicação na sua máquina:

### 1. Clone o repositório

```bash
git clone [https://github.com/pajeeh/App-Republicas.git](https://github.com/pajeeh/App-Republicas.git)
cd App-Republicas
```

### 2. Instale as dependências

```bash
flutter pub get
```

### 3. Configuração do Firebase

Certifique-se de colocar os arquivos de configuração nos locais corretos (se você tiver acesso ao projeto no console do Firebase):

* **Android:** `android/app/google-services.json`
* **iOS:** `ios/Runner/GoogleService-Info.plist`

### 4. Execute o app

```bash
flutter run
```

---

## 📂 Estrutura do Projeto

O projeto segue os princípios da **Clean Architecture**:

```
lib/
├── core/            # Configurações globais, temas e utilitários
├── data/            # Implementação de repositórios e fontes de dados (API/Firebase)
├── domain/          # Regras de negócio, Entidades e Casos de Uso (Usecases)
├── presentation/    # Telas (Pages), Widgets e Gerência de Estado
└── main.dart        # Ponto de entrada da aplicação

```

---

## 🧪 Testes

Para garantir a qualidade do código, execute os testes unitários:

```bash
flutter test

```

---

## 📦 Build para Produção

Para gerar o APK para Android:

```bash
flutter build apk --release

```

Para gerar o arquivo IPA para iOS (necessário macOS):

```bash
flutter build ios --release

```

---

## 🤝 Como Contribuir

Contribuições são sempre bem-vindas!

1. Faça um **fork** do projeto.
2. Crie uma nova branch com suas alterações: `git checkout -b minha-feature`
3. Salve as alterações e crie uma mensagem de commit contando o que você fez: `git commit -m "feat: Minha nova feature"`
4. Envie as suas alterações: `git push origin minha-feature`
5. Abra um **Pull Request** no GitHub.

---

## 👨‍💻 Autor

**Luís A. G. Dos Santos (Pajeeh)**
*Desenvolvedor Flutter*

---

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](https://www.google.com/search?q=LICENSE) para mais detalhes.

```

```
