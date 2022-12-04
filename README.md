#ПРАКТИЧЕСКАЯ РАБОТА №3
Реализация регистрации и авторизации пользователя

Цель работы: реализовать регистрацию и авторизацию пользователя.

Ход работы:

Для начала работы с авторизацией и регистрации необходимо скачать следующие библиотеки:


![image](https://user-images.githubusercontent.com/93879842/205504510-80216291-c946-4603-9557-841040004a4b.png)

Рисунок 19 - библиотеки

В папке core создаем папку usercase, здесь создаем файл auth


![image](https://user-images.githubusercontent.com/93879842/205504534-dd3edbb4-d327-4725-9efd-34fd993d20bc.png)


Рисунок 20 - auth.dart

В папке data создаем папку repository, здесь файл auth_repositories_impl

![image](https://user-images.githubusercontent.com/93879842/205504561-35e813ae-c006-4ffa-b676-61b08ddf24ad.png)

Рисунок 23 - auth.dart

Также в папке entity создаем еще одну папку repository, в ней файл auth_repository

![image](https://user-images.githubusercontent.com/93879842/205504638-031e65ac-d7df-4ee1-99f2-1e6c7d69221c.png)


Рисунок 24 - auth_repository.dart

Далее создаем папку screens, в ней файлы, в которых будет верстка авторизации, регистрации и окон для админа с пользователем.


![image](https://user-images.githubusercontent.com/93879842/205504657-473bc5ce-8b82-469b-89a6-c21be70d14ca.png)


Рисунок 25 – screens

![image](https://user-images.githubusercontent.com/93879842/205504677-a5896b51-ce6e-4c7c-96cb-f262ac42a385.png)


Рисунок 26 - окно регистрации с валидацией

![image](https://user-images.githubusercontent.com/93879842/205504691-111e2a1d-d047-47b7-b68b-cffcd7148981.png)


Рисунок 27 - окно авторизации с валидацией

![image](https://user-images.githubusercontent.com/93879842/205504713-9e14bd51-acfc-4db9-8b06-0c7fd51bbc88.png)

Рисунок 28 - окно админа

![image](https://user-images.githubusercontent.com/93879842/205504718-9dd3fe78-d1d2-423a-a56a-b212d568354c.png)

Рисунок 29 - окно пользователя

![image](https://user-images.githubusercontent.com/93879842/205504732-10cb1887-7890-42e9-9c68-4c8db150a3a9.png)

Рисунок 30 - ошибка в случае несовпадения пароля

![image](https://user-images.githubusercontent.com/93879842/205504746-f87f584d-c5a1-4c9f-8868-3f2be3b9710a.png)

Рисунок 31 - пользователи в бд

![image](https://user-images.githubusercontent.com/93879842/205504819-cfa55fc6-a7b6-41c6-99e3-d852699eb610.png)

Рисунок 32 - критерии валидации для каждого поля

Вывод: на данной практической работе была сделана авторизация и регистрация для пользователей.
