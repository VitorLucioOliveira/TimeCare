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

2. **Regras do Firestore**
   ```javascript
   rules_version = '2';
   service cloud.firestore {
     match /databases/{database}/documents {
       match /{document=**} {
         allow read, write: if request.auth != null;
       }
     }
   }
   ```

3. **Regras do Realtime Database**
   ```json
   {
     "rules": {
       ".read": "auth != null",
       ".write": "auth != null"
     }
   }
   ```

## 📱 Componentes Principais

O aplicativo está estruturado com os seguintes componentes principais:

1. **Autenticação**
   - Login/Registro de usuários
   - Gerenciamento de sessão

2. **Gerenciamento de Tarefas**
   - Criação de tarefas
   - Edição de tarefas
   - Exclusão de tarefas
   - Marcação de conclusão

3. **Sincronização**
   - Sincronização em tempo real com Firebase
   - Backup automático de dados

## 🔐 Variáveis de Ambiente

Para desenvolvimento local, crie um arquivo `.env` na raiz do projeto com as seguintes variáveis:

```
FIREBASE_API_KEY=sua_api_key
FIREBASE_PROJECT_ID=seu_project_id
FIREBASE_MESSAGING_SENDER_ID=seu_sender_id
FIREBASE_APP_ID=seu_app_id
```

## 🧪 Testes

Para executar os testes:

```bash
flutter test
```

## 📦 Build

Para gerar o APK:

```bash
flutter build apk --release
```

Para gerar o IPA (iOS):

```bash
flutter build ios --release
```

## 🤝 Contribuição

1. Faça o fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## 📞 Suporte

Para suporte, envie um email para [seu-email@dominio.com] ou abra uma issue no repositório.
