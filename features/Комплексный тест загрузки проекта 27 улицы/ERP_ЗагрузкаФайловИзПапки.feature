﻿#language: ru
@tree
@exportscenarios


Функционал: Загрузка списка файлов из файлов в документ УГПР

	Хочу чтобы всё работало без ошибок!

Контекст:

	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

  
Сценарий: Я загружаю файлы из каталога с помощью обработки загрузки
	
	Когда я создаю тестовую организацию
	Когда В командном интерфейсе я выбираю 'Управление строительным производством' 'Загрузка из kenml *'
	Тогда открылось окно 'Мастер формирования УГПР из xml: Загрузка из kenml *'
	
	






