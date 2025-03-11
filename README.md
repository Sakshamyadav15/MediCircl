# medicircle

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

medicircl-backend/
│── src/
│   ├── config/
│   │   ├── db.js
│   │   ├── cloudStorage.js
│   │   ├── aiService.js
│   │   ├── firebase.js
│   │   ├── dotenv.js
│   ├── models/
│   │   ├── user.model.js
│   │   ├── doctor.model.js
│   │   ├── appointment.model.js
│   │   ├── prescription.model.js
│   ├── routes/
│   │   ├── user.routes.js
│   │   ├── doctor.routes.js
│   │   ├── appointment.routes.js
│   │   ├── prescription.routes.js
│   │   ├── ai.routes.js
│   ├── controllers/
│   │   ├── user.controller.js
│   │   ├── doctor.controller.js
│   │   ├── appointment.controller.js
│   │   ├── prescription.controller.js
│   │   ├── ai.controller.js
│   ├── middlewares/
│   │   ├── authMiddleware.js
│   │   ├── errorHandler.js
│   │   ├── validateRequest.js
│   ├── services/
│   │   ├── auth.service.js
│   │   ├── storage.service.js
│   │   ├── ai.service.js
│   ├── utils/
│   │   ├── helpers.js
│   │   ├── logger.js
│   ├── app.js
│   ├── server.js
│── tests/
│   ├── user.test.js
│   ├── doctor.test.js
│── .env
│── .gitignore
│── package.json
│── README.md
