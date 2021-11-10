﻿
#Область ОписаниеПеременных

&НаКлиенте
Перем КонсольКодаПриОбработке;

&НаКлиенте
Перем КонсольКодаВыборкаДанных;

&НаКлиенте
Перем ПриОбработкеHTMLСфомирован;

&НаКлиенте
Перем ВыборкаДанныхHTMLСформирован;

&НаКлиенте
Перем СветлаяТемаАлгоритмПриОбработке;

&НаКлиенте
Перем СветлаяТемаАлгоритмВыборкаДанных;

#КонецОбласти

#Область ОбработчикиСобытийФормы

&НаСервере
Процедура Расш1_ПриСозданииНаСервереПосле(Отказ, СтандартнаяОбработка)
	
	Если КонвертацияXDTO Тогда
		
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПриОбработке, Элементы.Страница_ПриОбработке, ЭтотОбъект);
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмВыборкаДанных, Элементы.Страница_ВыборкаДанных, ЭтотОбъект);
		
		Расш1_КонсольКода.СоздатьРеквизит(ЭтотОбъект, "Конвертация", "СправочникСсылка.Конвертации");
		ЭтотОбъект["Конвертация"] = Параметры.Конвертация;
		
		Элементы.НаправлениеАлгоритмВыборкаДанныхHTML.Видимость = Ложь;
		Элементы.НаправлениеАлгоритмПриОбработкеHTML.Видимость = Ложь;
		
		Элементы.ОбработчикиСобытийXDTO.Доступность = Ложь;
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_ПриОткрытииПосле(Отказ)
	
	Если КонвертацияXDTO Тогда
		
		Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПриОбработке.Имя);
		
		Если Объект.ИспользоватьДляОтправки Тогда
			Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмВыборкаДанных.Имя);
		Иначе
			ВыборкаДанныхHTMLСформирован = Истина;
			ПослеФормированияКонсолей();
		КонецЕсли;
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_ПередЗаписьюПосле(Отказ, ПараметрыЗаписи)
	
	Если КонвертацияXDTO Тогда
		
		// Запишем новый текст в реквизиты.
		Если Объект.ИспользоватьДляПолучения Тогда
			Объект.АлгоритмПриОбработке = КонсольКодаПриОбработке.getText();
		КонецЕсли;
		
		Если Объект.ИспользоватьДляОтправки Тогда
			Объект.АлгоритмВыборкаДанных = КонсольКодаВыборкаДанных.getText();
		КонецЕсли;
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_СтраницыПриСменеСтраницыПосле(Элемент, ТекущаяСтраница)
	
	Если ТекущаяСтраница.Имя = "ОбработчикиСобытийXDTO" Тогда
		ПослеФормированияКонсолей("Страница_ПриОбработке");
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_СтраницыОбработчикиXDTOПриСменеСтраницыПосле(Элемент, ТекущаяСтраница)
	ПослеФормированияКонсолей(ТекущаяСтраница.Имя);
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

&НаКлиенте
Процедура АлгоритмПриОбработкеHTMLСформирован(Элемент)
	
	КонсольКодаПриОбработке = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПриОбработке, 
		Объект.АлгоритмПриОбработке, 
		ПриОбработкеHTMLСфомирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПриОбработкеHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмВыборкаДанныхHTMLСформирован(Элемент)
	
	КонсольКодаВыборкаДанных = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаВыборкаДанных, 
		Объект.АлгоритмВыборкаДанных, 
		ВыборкаДанныхHTMLСформирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмВыборкаДанныхHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

&НаКлиенте
Процедура Расш1_ИспользоватьДляОтправкиПриИзмененииПосле(Элемент)
	Элементы.ОбработчикиСобытийXDTO.Доступность = Ложь;
	Расш1_ПриОткрытииПосле(Ложь);
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура СменитьТемуАлгоритмПриОбработкеHTML(Команда)
	Расш1_КонсольКода.СменитьТему(ЭтотОбъект, Элементы.АлгоритмПриОбработке.Имя + "HTML", СветлаяТемаАлгоритмПриОбработке);
КонецПроцедуры

&НаКлиенте
Процедура СменитьТемуАлгоритмВыборкаДанныхHTML(Команда)
	Расш1_КонсольКода.СменитьТему(ЭтотОбъект, Элементы.АлгоритмВыборкаДанных.Имя + "HTML", СветлаяТемаАлгоритмВыборкаДанных);
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмПриОбработкеHTML()
	КонсольКодаПриОбработке.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмВыборкаДанных()
	КонсольКодаВыборкаДанных.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Процедура ПослеФормированияКонсолей(ИмяСтраницы = "")
	
	Если Объект.ИспользоватьДляОтправки 
		И ПриОбработкеHTMLСфомирован 
		И ВыборкаДанныхHTMLСформирован Тогда
		
		Элементы.ОбработчикиСобытийXDTO.Доступность = Истина;
		
	ИначеЕсли Не Объект.ИспользоватьДляОтправки 
		И ПриОбработкеHTMLСфомирован Тогда
		
		Элементы.ОбработчикиСобытийXDTO.Доступность = Истина;
		
	КонецЕсли;
	
	Если Элементы.Страницы.ТекущаяСтраница.Имя <> "ОбработчикиСобытийXDTO" Тогда
		Возврат;
	КонецЕсли;
	
	Если ПустаяСтрока(ИмяСтраницы) Тогда
		ИмяСтраницы = Элементы.Страницы.ТекущаяСтраница.Имя;
	КонецЕсли;
	
	ИспользованиеПКО = ЗаполнитьПараметрИспользованиеПКО(ИмяСтраницы);
	
	ОписаниеПользовательскихОбъектовJSON = 
		ПолучитьОписаниеПараметровJSON(
			ЭтотОбъект["Конвертация"], Объект.ОбъектВыборки, Объект.ИспользоватьДляОтправки, ИмяСтраницы, ИспользованиеПКО);
	
	ОбновитьОписаниеПараметровОбработчиковВоВсехКонсолях(ОписаниеПользовательскихОбъектовJSON, ИмяСтраницы);
	
КонецПроцедуры

&НаСервереБезКонтекста
Функция ПолучитьОписаниеПараметровJSON(
		Знач Конвертация, Знач ОбъектКонфигурации, Знач ИспользоватьДляОтправки, Знач ИмяСтраницы, Знач ИспользованиеПКО)
	
	ПользовательскиеОбъекты = Новый Структура;
	
	Если ИспользоватьДляОтправки Тогда
		Направление = "Отправка";
	Иначе
		Направление = "Получение";
	КонецЕсли;
	
	Если Не ПустаяСтрока(Направление) Тогда
		КомпонентыОбмена = Расш1_КоллекцияМетаданных.ПолучитьОписаниеКомпонентыОбмена(Направление);
		ПользовательскиеОбъекты.Вставить("КомпонентыОбмена", КомпонентыОбмена);
	КонецЕсли;
	
	Если Не ПустаяСтрока(ОбъектКонфигурации) И ИспользоватьДляОтправки Тогда
		ДанныеИБ = Расш1_КоллекцияМетаданных.ПолучитьОписаниеДанныеИБ(ОбъектКонфигурации);
		ПользовательскиеОбъекты.Вставить("ДанныеИБ", ДанныеИБ);
	КонецЕсли;
	
	Если ИспользованиеПКО.Количество() > 0 Тогда
		ИспользованиеПКОJson = Расш1_КоллекцияМетаданных.ПолучитьОписаниеИспользованиеПКО(ИспользованиеПКО);
		ПользовательскиеОбъекты.Вставить("ИспользованиеПКО", ИспользованиеПКОJson);
	КонецЕсли;
	
	ОписаниеПользовательскихОбъектов = Новый Структура;
	ОписаниеПользовательскихОбъектов.Вставить("customObjects", ПользовательскиеОбъекты);
	
	ОписаниеПользовательскихОбъектовJSON = 
		Расш1_КоллекцияМетаданных.ПолучитьОписаниеМетаданныхJSON(ОписаниеПользовательскихОбъектов);
	
	Возврат ОписаниеПользовательскихОбъектовJSON;
	
КонецФункции

&НаКлиенте
Функция ЗаполнитьПараметрИспользованиеПКО(ИмяСтраницы)
	
	ИспользованиеПКО = Новый Структура;
	
	Если Элементы.СтраницыОбработчикиXDTO.ТекущаяСтраница.Имя = "Страница_ПриОбработке" 
		И ИспользоватьНесколькоПравилКонвертации Тогда
		
		Для Каждого СтрокаПравил Из Объект.ПравилаКонвертацииОбъектов Цикл
			ИспользованиеПКО.Вставить(СтрокаПравил.ПравилоКонвертацииОбъекта, Истина);
		КонецЦикла;
		
	ИначеЕсли Элементы.СтраницыОбработчикиXDTO.ТекущаяСтраница.Имя = "Страница_ПриОбработке" Тогда
		ИспользованиеПКО.Вставить(Объект.ПравилоКонвертацииОбъекта, Истина);
	КонецЕсли;
	
	Возврат ИспользованиеПКО;
	
КонецФункции

&НаКлиенте
Процедура ОбновитьОписаниеПараметровОбработчиковВоВсехКонсолях(ОписаниеПараметровJSON, ИмяСтраницы)
	
	АдресОбновления = "";
	Если ИмяСтраницы = "Страница_ПриОбработке" Тогда
		
		РезультатОбновления = КонсольКодаПриОбработке.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
		
		Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
			КонсольКодаПриОбработке.triggerSuggestions();
		Иначе
			Ошибка = РезультатОбновления.errorDescription;
			ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
		КонецЕсли;
		
	ИначеЕсли ИмяСтраницы = "Страница_ВыборкаДанных" Тогда
		
		РезультатОбновления = КонсольКодаВыборкаДанных.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
		
		Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
			КонсольКодаВыборкаДанных.triggerSuggestions();
		Иначе
			Ошибка = РезультатОбновления.errorDescription;
			ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
		КонецЕсли;
		
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти

#Если Клиент Тогда
	ПриОбработкеHTMLСфомирован = Ложь;
	ВыборкаДанныхHTMLСформирован = Ложь;
	СветлаяТемаАлгоритмПриОбработке = Истина;
	СветлаяТемаАлгоритмВыборкаДанных = Истина;
#КонецЕсли