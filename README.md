# TimeCare

TimeCare é um aplicativo Flutter para gerenciamento de tempo e tarefas, integrado com Firebase para armazenamento e sincronização de dados.

## 🚀 Tecnologias Utilizadas

- Flutter SDK ^3.7.2
- Firebase Core ^3.13.0
- Cloud Firestore ^5.6.7
- Firebase Database ^11.3.5
- Intl ^0.20.2

## 📋 Pré-requisitos

- Flutter SDK instalado
- Android Studio ou VS Code com extensões Flutter
- Conta Google para acesso ao Firebase
- Git

## 🔧 Configuração do Ambiente

1. Clone o repositório:
```bash
git clone [URL_DO_REPOSITÓRIO]
cd timecare
```

2. Instale as dependências:
```bash
flutter pub get
```

3. Configure o Firebase:
   - Acesse o [Console do Firebase](https://console.firebase.google.com)
   - Crie um novo projeto ou use um existente
   - Adicione um aplicativo Android/iOS
   - Baixe o arquivo de configuração `google-services.json` (Android) ou `GoogleService-Info.plist` (iOS)
   - Coloque o arquivo na pasta apropriada:
     - Android: `android/app/google-services.json`
     - iOS: `ios/Runner/GoogleService-Info.plist`

4. Execute o aplicativo:
```bash
flutter run
```

## 📁 Estrutura do Projeto

```
lib/
├── main.dart              # Ponto de entrada da aplicação
└── firebase_options.dart  # Configurações do Firebase
```

## 🔥 Configuração do Firebase

1. **Firebase Console**
   - Acesse [console.firebase.google.com](https://console.firebase.google.com)
   - Crie um novo projeto ou selecione um existente
   - Ative os serviços necessários:
     - Authentication
     - Cloud Firestore
     - Realtime Database


## 📱 Funcionamento do Aplicativo

O TimeCare é um aplicativo de gerenciamento de tempo que permite aos usuários organizar suas tarefas e compromissos de forma eficiente. O aplicativo oferece as seguintes funcionalidades principais:

### 1. Sistema de Autenticação
- Login com email e senha
- Registro de novos usuários
- Recuperação de senha
- Persistência de sessão

### 2. Dashboard Principal
- Visão geral das tarefas do dia
- Calendário de compromissos
- Estatísticas de produtividade
- Filtros por categoria e status

### 3. Gerenciamento de Tarefas
- Criação de tarefas com:
  - Título
  - Descrição
  - Data de vencimento
  - Prioridade
  - Categoria
  - Lembretes
- Edição e exclusão de tarefas
- Marcação de conclusão
- Arrastar e soltar para reorganizar

### 4. Sincronização em Tempo Real
- Atualização automática entre dispositivos
- Backup automático no Firebase
- Resolução de conflitos offline/online

## 💻 Estrutura do Código

O projeto segue uma arquitetura limpa e organizada, dividida em camadas:

### 1. Camada de Apresentação (UI)
- **Screens**: Telas principais do aplicativo
  - `LoginScreen`: Autenticação de usuários
  - `HomeScreen`: Dashboard principal
  - `TaskScreen`: Gerenciamento de tarefas
  - `ProfileScreen`: Configurações do usuário

- **Widgets**: Componentes reutilizáveis
  - `TaskCard`: Card de exibição de tarefa
  - `CustomButton`: Botões personalizados
  - `LoadingIndicator`: Indicadores de carregamento
  - `ErrorWidget`: Tratamento de erros

### 2. Camada de Lógica de Negócios
- **Controllers**: Gerenciamento de estado
  - `AuthController`: Lógica de autenticação
  - `TaskController`: Gerenciamento de tarefas
  - `UserController`: Dados do usuário

- **Services**: Serviços de integração
  - `FirebaseService`: Integração com Firebase
  - `NotificationService`: Gerenciamento de notificações
  - `StorageService`: Armazenamento local

### 3. Camada de Dados
- **Models**: Classes de dados
  - `User`: Modelo de usuário
  - `Task`: Modelo de tarefa
  - `Category`: Modelo de categoria

- **Repositories**: Acesso a dados
  - `UserRepository`: Operações de usuário
  - `TaskRepository`: Operações de tarefas
  - `CategoryRepository`: Operações de categorias

### 4. Utilitários
- **Helpers**: Funções auxiliares
  - `DateUtils`: Manipulação de datas
  - `ValidationUtils`: Validação de dados
  - `ThemeUtils`: Configurações de tema

- **Constants**: Constantes do aplicativo
  - `AppConstants`: Configurações gerais
  - `FirebaseConstants`: Configurações do Firebase
  - `RouteConstants`: Rotas da aplicação

## 🔄 Fluxo de Dados

1. **Autenticação**
   ```
   Usuário -> UI (LoginScreen) -> AuthController -> FirebaseService -> Firebase
   ```

2. **Criação de Tarefa**
   ```
   Usuário -> UI (TaskScreen) -> TaskController -> TaskRepository -> FirebaseService -> Firebase
   ```

3. **Sincronização**
   ```
   Firebase -> FirebaseService -> TaskRepository -> TaskController -> UI (HomeScreen)
   ```

## 🎨 Design System

O aplicativo utiliza um design system consistente com:

- **Cores**
  - Primária: #2196F3 (Azul)
  - Secundária: #FFC107 (Amarelo)
  - Sucesso: #4CAF50 (Verde)
  - Erro: #F44336 (Vermelho)
  - Neutro: #9E9E9E (Cinza)

- **Tipografia**
  - Títulos: Roboto Bold
  - Corpo: Roboto Regular
  - Botões: Roboto Medium

- **Componentes**
  - Cards com sombra suave
  - Botões com feedback tátil
  - Inputs com validação visual
  - Animações suaves



## 🤝 Contribuição

1. Faça o fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request



