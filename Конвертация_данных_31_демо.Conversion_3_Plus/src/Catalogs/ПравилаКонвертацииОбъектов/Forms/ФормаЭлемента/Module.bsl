#Область ОписаниеПеременных

#Область ЭтоКонвертацияXDTO

#Область АлгоритмПриОтправкеДанных

&НаКлиенте
Перем КонсольКодаПриОтправке;

&НаКлиенте
Перем ПриОтправкеДанныхHTMLСфомирован;

&НаКлиенте
Перем СветлаяТемаАлгоритмПриОтправкеДанных;

#КонецОбласти

#Область АлгоритмПередПолучениемДанных

&НаКлиенте
Перем КонсольКодаПередПолучениемДанных;

&НаКлиенте
Перем ПередПолучениемДанныхHTMLСформирован;

&НаКлиенте
Перем СветлаяТемаАлгоритмПередПолучениемДанных;

#КонецОбласти

#Область АлгоритмПриПолученииДанных

&НаКлиенте
Перем КонсольКодаПриПолученниДанных;

&НаКлиенте
Перем ПриПолученииДанныхHTMLСформирован;

&НаКлиенте
Перем СветлаяТемаАлгоритмПриПолученииДанных;

#КонецОбласти

#Область АлгоритмПослеЗагрузкиВсехДанныхТекст

&НаКлиенте
Перем КонсольКодаПослеЗагрузкиВсехДанных;

&НаКлиенте
Перем ПослеЗагрузкиВсехДанныхСформирован;

#КонецОбласти

#КонецОбласти

#Область КонвертацияXML

#Область АлгоритмПередВыгрузкойОбъекта

&НаКлиенте
Перем КонсольКодаПередВыгрузкойОбъекта;

&НаКлиенте
Перем ПередВыгрузкойОбъектаHTMLСформирован;

&НаКлиенте
Перем СветлаяТемаПередВыгрузкойОбъекта;

#КонецОбласти

#Область АлгоритмПриВыгрузкеОбъекта

&НаКлиенте
Перем КонсольКодаПриВыгрузкеОбъекта;

&НаКлиенте
Перем ПриВыгрузкеОбъектаHTMLСформирован;

&НаКлиенте
Перем СветлаяТемаПриВыгрузкеОбъектаа;

#КонецОбласти

#Область АлгоритмПослеВыгрузкиОбъекта

&НаКлиенте
Перем КонсольКодаПослеВыгрузкиОбъекта;

&НаКлиенте
Перем ПослеВыгрузкиОбъектаHTMLСформирован;

&НаКлиенте
Перем СветлаяТемаПослеВыгрузкиОбъекта;

#КонецОбласти

#Область АлгоритмПослеВыгрузкиОбъектаВФайлОбмена

&НаКлиенте
Перем КонсольКодаПослеВыгрузкиОбъектаВФайлОбмена;

&НаКлиенте
Перем ПослеВыгрузкиОбъектаВФайлОбменаHTMLСформирован;

&НаКлиенте
Перем СветлаяТемаПослеВыгрузкиОбъектаВФайлОбмена;

#КонецОбласти

#Область АлгоритмПоследовательностьПолейПоиска

&НаКлиенте
Перем КонсольКодаПоследовательностьПолейПоиска;

&НаКлиенте
Перем ПоследовательностьПолейПоискааHTMLСформирован;

&НаКлиенте
Перем СветлаяТемаПоследовательностьПолейПоиска;

#КонецОбласти

#Область АлгоритмПередЗагрузкойОбъекта

&НаКлиенте
Перем КонсольКодаПередЗагрузкойОбъекта;

&НаКлиенте
Перем ПередЗагрузкойОбъектаHTMLСформирован;

&НаКлиенте
Перем СветлаяТемаПередЗагрузкойОбъекта;

#КонецОбласти

#Область АлгоритмПриЗагрузкеОбъекта

&НаКлиенте
Перем КонсольКодаПриЗагрузкеОбъекта;

&НаКлиенте
Перем ПриЗагрузкеОбъектаHTMLСформирован;

&НаКлиенте
Перем СветлаяТемаПриЗагрузкеОбъекта;

#КонецОбласти

#Область АлгоритмПослеЗагрузкиОбъекта

&НаКлиенте
Перем КонсольКодаПослеЗагрузкиОбъекта;

&НаКлиенте
Перем ПослеЗагрузкиОбъектаHTMLСформирован;

&НаКлиенте
Перем СветлаяТемаПослеЗагрузкиОбъекта;

#КонецОбласти

#КонецОбласти

#КонецОбласти

#Область ОбработчикиСобытийФормы

&НаСервере
Процедура Расш1_ПриСозданииНаСервереПосле(Отказ, СтандартнаяОбработка)
	
	Если ЭтоКонвертацияXDTO Тогда
		
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПриОтправкеДанных, Элементы.Страница_ПриОтправке, ЭтотОбъект);
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПередПолучениемДанных, Элементы.Страница_ПриКонвертацииДанныхXDTO, ЭтотОбъект);
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПриПолученииДанных, Элементы.Страница_ПередЗаписьюПолученныхДанных, ЭтотОбъект);
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПослеЗагрузкиВсехДанныхТекст, Элементы.Страница_ПослеЗагрузкиВсехДанных, ЭтотОбъект);
		
		//Расш1_КонсольКода.СоздатьРеквизит(ЭтотОбъект, "Конвертация", "СправочникСсылка.Конвертации");
		//ЭтотОбъект["Конвертация"] = Параметры.Конвертация;
		//
		//ИзменитьУсловноеОформление();
		
		Элементы.Страница_ОбработчикиXDTO.Доступность = Ложь;
		
	Иначе
		
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПередВыгрузкойОбъекта, Элементы.Страница_ПередВыгрузкой, ЭтотОбъект);
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПриВыгрузкеОбъекта, Элементы.Страница_ПриВыгрузке, ЭтотОбъект);
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПослеВыгрузкиОбъекта, Элементы.Страница_ПослеВыгрузки, ЭтотОбъект);
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПослеВыгрузкиОбъектаВФайлОбмена, Элементы.Страница_ПослеВыгрузкиВФайл, ЭтотОбъект);
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПоследовательностьПолейПоиска, Элементы.Страница_ПоляПоиска, ЭтотОбъект);
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПередЗагрузкойОбъекта, Элементы.Страница_ПередЗагрузкой, ЭтотОбъект);
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПриЗагрузкеОбъекта, Элементы.Страница_ПриЗагрузке, ЭтотОбъект);
		Расш1_КонсольКода.СоздатьКонсоль(Элементы.АлгоритмПослеЗагрузкиОбъекта, Элементы.Страница_ПослеЗагрузки, ЭтотОбъект);
		
		//Расш1_КонсольКода.СоздатьРеквизит(ЭтотОбъект, "Конвертация", "СправочникСсылка.Конвертации");
		//ЭтотОбъект["Конвертация"] = Параметры.Конвертация;
		//
		//ИзменитьУсловноеОформление();
		
		Элементы.Страница_ОбработчикиXML.Доступность = Ложь;
		
	КонецЕсли;
	
	Расш1_КонсольКода.СоздатьРеквизит(ЭтотОбъект, "Конвертация", "СправочникСсылка.Конвертации");
		ЭтотОбъект["Конвертация"] = Параметры.Конвертация;
	
	ИзменитьУсловноеОформление();
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_ПриОткрытииПосле(Отказ)
	
	Если ЭтоКонвертацияXDTO Тогда
		
		Если ОбластьПрименения = 1 Тогда
			Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПередПолучениемДанных.Имя);
			Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПриПолученииДанных.Имя);
			Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПослеЗагрузкиВсехДанныхТекст.Имя);
		ИначеЕсли ОбластьПрименения = 0 Тогда
			Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПриОтправкеДанных.Имя);
		Иначе
			Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПередПолучениемДанных.Имя);
			Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПриПолученииДанных.Имя);
			Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПослеЗагрузкиВсехДанныхТекст.Имя);
			Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПриОтправкеДанных.Имя);
		КонецЕсли;
		
	Иначе
		
		Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПередВыгрузкойОбъекта.Имя);
		Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПриВыгрузкеОбъекта.Имя);
		Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПослеВыгрузкиОбъекта.Имя);
		Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПослеВыгрузкиОбъектаВФайлОбмена.Имя);
		Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПоследовательностьПолейПоиска.Имя);
		Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПередЗагрузкойОбъекта.Имя);
		Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПриЗагрузкеОбъекта.Имя);
		Расш1_КонсольКода.НазначитьРеквизитуКонсолиАдрес(ЭтотОбъект, Элементы.АлгоритмПослеЗагрузкиОбъекта.Имя);
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_ПередЗаписьюПосле(Отказ, ПараметрыЗаписи)
	
	Если ЭтоКонвертацияXDTO Тогда
		
		// Запишем новый текст в реквизиты.
		Если ОбластьПрименения = 0 Тогда
			Объект.АлгоритмПриОтправкеДанных = КонсольКодаПриОтправке.getText();
		КонецЕсли;
		
		Если ОбластьПрименения = 1 Тогда
			Объект.АлгоритмПередПолучениемДанных = КонсольКодаПередПолучениемДанных.getText();
			Объект.АлгоритмПриПолученииДанных = КонсольКодаПриПолученниДанных.getText();
		КонецЕсли;
		
		Если ОбластьПрименения = 2 Тогда
			Объект.АлгоритмПриОтправкеДанных = КонсольКодаПриОтправке.getText();
			Объект.АлгоритмПередПолучениемДанных = КонсольКодаПередПолучениемДанных.getText();
			Объект.АлгоритмПриПолученииДанных = КонсольКодаПриПолученниДанных.getText();
		КонецЕсли;
		
	Иначе
		
		Объект.АлгоритмПередВыгрузкойОбъекта = КонсольКодаПередВыгрузкойОбъекта.getText();
		Объект.АлгоритмПриВыгрузкеОбъекта = КонсольКодаПриВыгрузкеОбъекта.getText();
		Объект.АлгоритмПослеВыгрузкиОбъекта = КонсольКодаПослеВыгрузкиОбъекта.getText();
		Объект.АлгоритмПослеВыгрузкиОбъектаВФайлОбмена = КонсольКодаПослеВыгрузкиОбъектаВФайлОбмена.getText();
		Объект.АлгоритмПоследовательностьПолейПоиска = КонсольКодаПоследовательностьПолейПоиска.getText();
		Объект.АлгоритмПередЗагрузкойОбъекта = КонсольКодаПередЗагрузкойОбъекта.getText();
		Объект.АлгоритмПриЗагрузкеОбъекта = КонсольКодаПриЗагрузкеОбъекта.getText();
		Объект.АлгоритмПослеЗагрузкиОбъекта = КонсольКодаПослеЗагрузкиОбъекта.getText();
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_СтраницыПриСменеСтраницыПосле(Элемент, ТекущаяСтраница)
	
	Если ТекущаяСтраница.Имя = "Страница_ОбработчикиXDTO" Тогда
		
		Если ОбластьПрименения = 1 Тогда
			ПослеФормированияКонсолей("Страница_ПриКонвертацииДанныхXDTO");
		Иначе
			ПослеФормированияКонсолей("Страница_ПриОтправке");
		КонецЕсли;
		
	ИначеЕсли ТекущаяСтраница.Имя = "Страница_ОбработчикиXML" Тогда
		
		ПослеФормированияКонсолей();// Проанализировать возможно нужно передать страницу по умолчанию.
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_ОбработчикиXMLПриСменеСтраницыПосле(Элемент, ТекущаяСтраница)
	ПослеФормированияКонсолей(ТекущаяСтраница.Имя);
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

#Область ЭтоКонвертацияXDTO

&НаКлиенте
Процедура АлгоритмПриОтправкеДанныхHTMLСформирован(Элемент)
	
	КонсольКодаПриОтправке = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПриОтправке, 
		Объект.АлгоритмПриОтправкеДанных, 
		ПриОтправкеДанныхHTMLСфомирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПриОтправкеДанныхHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПередПолучениемДанныхHTMLСформирован(Элемент)
	
	КонсольКодаПередПолучениемДанных = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПередПолучениемДанных, 
		Объект.АлгоритмПередПолучениемДанных, 
		ПередПолучениемДанныхHTMLСформирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПередПолучениемДанныхHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПриПолученииДанныхHTMLСформирован(Элемент)
	
	КонсольКодаПриПолученниДанных = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПриПолученниДанных, 
		Объект.АлгоритмПриПолученииДанных, 
		ПриПолученииДанныхHTMLСформирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПриПолученииДанныхHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПослеЗагрузкиВсехДанныхТекстHTMLСформирован(Элемент)
	
	КонсольКодаПослеЗагрузкиВсехДанных = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПослеЗагрузкиВсехДанных, 
		АлгоритмПослеЗагрузкиВсехДанныхТекст, 
		ПослеЗагрузкиВсехДанныхСформирован);
	
	КонсольКодаПослеЗагрузкиВсехДанных.setReadOnly(Истина);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_АлгоритмПослеЗагрузкиВсехДанныхОткрытиеВместо(Элемент, СтандартнаяОбработка)
	
	СтандартнаяОбработка = Ложь;
	Если НЕ ЗначениеЗаполнено(Объект.АлгоритмПослеЗагрузкиВсехДанных) Тогда
		Возврат;
	КонецЕсли;
	
	МассивСсылокНаАлгоритмы = СсылкиНаАлгоритмыПоИмени(Объект.АлгоритмПослеЗагрузкиВсехДанных, СписокКонвертаций);
	Если МассивСсылокНаАлгоритмы = Неопределено Тогда
		Возврат;
	КонецЕсли;
	Если МассивСсылокНаАлгоритмы.Количество() = 1 Тогда
		ПараметрыФормы = Новый Структура("Ключ");
		ПараметрыФормы.Ключ = МассивСсылокНаАлгоритмы[0];
		ИмяФормыАлгоритм = "Справочник.Алгоритмы.ФормаОбъекта";
	Иначе
		ПараметрыФормы = Новый Структура("ТребованияКОтбору");
		ПараметрыФормы.ТребованияКОтбору = МассивСсылокНаАлгоритмы;
		ИмяФормыАлгоритм = "Справочник.Алгоритмы.ФормаСписка";
	КонецЕсли;
	
	// Добавлена строка +++
	ПараметрыФормы.Вставить("Конвертация", ЭтотОбъект["Конвертация"]);
	// Добавлена строка ---
	
	ОткрытьФорму(ИмяФормыАлгоритм, ПараметрыФормы, ЭтаФорма);
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_Тумблер_ОбластьПримененияПриИзмененииПосле(Элемент)
	
	Элементы.НаправлениеАлгоритмПриОтправкеДанныхHTML.Заголовок = "Направление";
	Элементы.НаправлениеАлгоритмПередПолучениемДанныхHTML.Заголовок = "Направление";
	Элементы.НаправлениеАлгоритмПриПолученииДанныхHTML.Заголовок = "Направление";
	Элементы.Страница_ОбработчикиXDTO.Доступность = Ложь;
	
	ИзменитьУсловноеОформление();
	
	Расш1_ПриОткрытииПосле(Ложь);
	
КонецПроцедуры

&НаКлиенте
Процедура Расш1_АлгоритмПослеЗагрузкиВсехДанныхПриИзмененииПосле(Элемент)
	
	// Прочитаем текст из реквизита.
	КонсольКодаПослеЗагрузкиВсехДанных.updateText(АлгоритмПослеЗагрузкиВсехДанныхТекст);
	
КонецПроцедуры

#КонецОбласти

#Область ЭтоКонвертацияXML

&НаКлиенте
Процедура АлгоритмПередВыгрузкойОбъектаHTMLСформирован(Элемент)
	
	КонсольКодаПередВыгрузкойОбъекта = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПередВыгрузкойОбъекта, 
		Объект.АлгоритмПередВыгрузкойОбъекта, 
		ПередВыгрузкойОбъектаHTMLСформирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПередВыгрузкойОбъектаHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПриВыгрузкеОбъектаHTMLСформирован(Элемент)
	
	КонсольКодаПриВыгрузкеОбъекта = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПриВыгрузкеОбъекта, 
		Объект.АлгоритмПриВыгрузкеОбъекта, 
		ПриВыгрузкеОбъектаHTMLСформирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПриВыгрузкеОбъектаHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПослеВыгрузкиОбъектаHTMLСформирован(Элемент)
	
	КонсольКодаПослеВыгрузкиОбъекта = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПослеВыгрузкиОбъекта, 
		Объект.АлгоритмПослеВыгрузкиОбъекта, 
		ПослеВыгрузкиОбъектаHTMLСформирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПослеВыгрузкиОбъектаHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПослеВыгрузкиОбъектаВФайлОбменаHTMLСформирован(Элемент)
	
	КонсольКодаПослеВыгрузкиОбъектаВФайлОбмена = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПослеВыгрузкиОбъектаВФайлОбмена, 
		Объект.АлгоритмПослеВыгрузкиОбъектаВФайлОбмена, 
		ПослеВыгрузкиОбъектаВФайлОбменаHTMLСформирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПослеВыгрузкиОбъектаВФайлОбменаHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПоследовательностьПолейПоискаHTMLСформирован(Элемент)
	
	КонсольКодаПоследовательностьПолейПоиска = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПоследовательностьПолейПоиска, 
		Объект.АлгоритмПоследовательностьПолейПоиска, 
		ПоследовательностьПолейПоискааHTMLСформирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПоследовательностьПолейПоискаHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПередЗагрузкойОбъектаHTMLСформирован(Элемент)
	
	КонсольКодаПередЗагрузкойОбъекта = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПередЗагрузкойОбъекта, 
		Объект.АлгоритмПередЗагрузкойОбъекта, 
		ПередЗагрузкойОбъектаHTMLСформирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПередЗагрузкойОбъектааHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПриЗагрузкеОбъектаHTMLСформирован(Элемент)
	
	КонсольКодаПриЗагрузкеОбъекта = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПриЗагрузкеОбъекта, 
		Объект.АлгоритмПриЗагрузкеОбъекта, 
		ПриЗагрузкеОбъектаHTMLСформирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПриЗагрузкеОбъектаHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПослеЗагрузкиОбъектаHTMLСформирован(Элемент)
	
	КонсольКодаПослеЗагрузкиОбъекта = Элемент.Документ.defaultView;
	
	Расш1_КонсольКода.УстановкаАтрибутовКонсолиКода(
		КонсольКодаПослеЗагрузкиОбъекта, 
		Объект.АлгоритмПослеЗагрузкиОбъекта, 
		ПослеЗагрузкиОбъектаHTMLСформирован);
	
	ПослеФормированияКонсолей();
	
КонецПроцедуры

&НаКлиенте
Процедура АлгоритмПослеЗагрузкиОбъектаHTMLПриНажатии(Элемент, ДанныеСобытия, СтандартнаяОбработка)
	Расш1_КонсольКода.ПриНажатии(ЭтотОбъект, ДанныеСобытия, Элемент);
КонецПроцедуры

#КонецОбласти

#КонецОбласти

#Область ОбработчикиКомандФормы

#Область ЭтоКонвертацияXDTO

&НаКлиенте
Процедура СменитьТемуАлгоритмПриОтправкеДанныхHTML(Команда)
	Расш1_КонсольКода.СменитьТему(ЭтотОбъект, Элементы.АлгоритмПриОтправкеДанных.Имя + "HTML", СветлаяТемаАлгоритмПриОтправкеДанных);
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмПриОтправкеДанныхHTML()
	КонсольКодаПриОтправке.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры

&НаКлиенте
Процедура СменитьТемуАлгоритмПередПолучениемДанныхHTML(Команда)
	Расш1_КонсольКода.СменитьТему(ЭтотОбъект, Элементы.АлгоритмПередПолучениемДанных.Имя + "HTML", СветлаяТемаАлгоритмПередПолучениемДанных);
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмПередПолучениемДанныхHTML()
	КонсольКодаПередПолучениемДанных.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры

&НаКлиенте
Процедура СменитьТемуАлгоритмПриПолученииДанныхHTML(Команда)
	Расш1_КонсольКода.СменитьТему(ЭтотОбъект, Элементы.АлгоритмПриПолученииДанных.Имя + "HTML", СветлаяТемаАлгоритмПриПолученииДанных);
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмПриПолученииДанныхHTML()
	КонсольКодаПриПолученниДанных.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры

&НаКлиенте
Процедура ОтправкаАлгоритмПриОтправкеДанныхHTML(Команда)
	ПриИзмененииНаправления(Команда);
КонецПроцедуры

&НаКлиенте
Процедура ПолучениеАлгоритмПриОтправкеДанныхHTML(Команда)
	ПриИзмененииНаправления(Команда);
КонецПроцедуры

&НаКлиенте
Процедура ОтправкаАлгоритмПередПолучениемДанныхHTML(Команда)
	ПриИзмененииНаправления(Команда);
КонецПроцедуры

&НаКлиенте
Процедура ПолучениеАлгоритмПередПолучениемДанныхHTML(Команда)
	ПриИзмененииНаправления(Команда);
КонецПроцедуры

&НаКлиенте
Процедура ОтправкаАлгоритмПриПолученииДанныхHTML(Команда)
	ПриИзмененииНаправления(Команда);
КонецПроцедуры

&НаКлиенте
Процедура ПолучениеАлгоритмПриПолученииДанныхHTML(Команда)
	ПриИзмененииНаправления(Команда);
КонецПроцедуры

#КонецОбласти

#Область ЭтоКонвертацияXML

&НаКлиенте
Процедура СменитьТемуАлгоритмПередВыгрузкойОбъектаHTML(Команда)
	Расш1_КонсольКода.СменитьТему(ЭтотОбъект, Элементы.АлгоритмПередВыгрузкойОбъекта.Имя + "HTML", СветлаяТемаПередВыгрузкойОбъекта);
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмПередВыгрузкойОбъектаHTML()
	КонсольКодаПередВыгрузкойОбъекта.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры


&НаКлиенте
Процедура СменитьТемуАлгоритмПриВыгрузкеОбъектаHTML(Команда)
	Расш1_КонсольКода.СменитьТему(ЭтотОбъект, Элементы.АлгоритмПриВыгрузкеОбъекта.Имя + "HTML", СветлаяТемаПриВыгрузкеОбъектаа);
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмПриВыгрузкеОбъектаHTML()
	КонсольКодаПриВыгрузкеОбъекта.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры


&НаКлиенте
Процедура СменитьТемуАлгоритмПослеВыгрузкиОбъектаHTML(Команда)
	Расш1_КонсольКода.СменитьТему(ЭтотОбъект, Элементы.АлгоритмПослеВыгрузкиОбъекта.Имя + "HTML", СветлаяТемаПослеВыгрузкиОбъекта);
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмПослеВыгрузкиОбъектаHTML()
	КонсольКодаПослеВыгрузкиОбъекта.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры


&НаКлиенте
Процедура СменитьТемуАлгоритмПослеВыгрузкиОбъектаВФайлОбменаHTML(Команда)
	Расш1_КонсольКода.СменитьТему(
		ЭтотОбъект, 
		Элементы.АлгоритмПослеВыгрузкиОбъектаВФайлОбмена.Имя + "HTML", 
		СветлаяТемаПослеВыгрузкиОбъектаВФайлОбмена);
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмПослеВыгрузкиОбъектаВФайлОбменаHTML()
	КонсольКодаПослеВыгрузкиОбъектаВФайлОбмена.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры


&НаКлиенте
Процедура СменитьТемуАлгоритмПоследовательностьПолейПоискаHTML(Команда)
	Расш1_КонсольКода.СменитьТему(
		ЭтотОбъект, 
		Элементы.АлгоритмПоследовательностьПолейПоиска.Имя + "HTML", 
		СветлаяТемаПоследовательностьПолейПоиска);
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмПоследовательностьПолейПоискаHTML()
	КонсольКодаПоследовательностьПолейПоиска.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры


&НаКлиенте
Процедура СменитьТемуАлгоритмПередЗагрузкойОбъектаHTML(Команда)
	Расш1_КонсольКода.СменитьТему(
		ЭтотОбъект, 
		Элементы.АлгоритмПередЗагрузкойОбъекта.Имя + "HTML", 
		СветлаяТемаПередЗагрузкойОбъекта);
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмПередЗагрузкойОбъектаHTML()
	КонсольКодаПередЗагрузкойОбъекта.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры


&НаКлиенте
Процедура СменитьТемуАлгоритмПриЗагрузкеОбъектаHTML(Команда)
	Расш1_КонсольКода.СменитьТему(
		ЭтотОбъект, 
		Элементы.АлгоритмПриЗагрузкеОбъекта.Имя + "HTML", 
		СветлаяТемаПриЗагрузкеОбъекта);
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмПриЗагрузкеОбъектаHTML()
	КонсольКодаПриЗагрузкеОбъекта.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры


&НаКлиенте
Процедура СменитьТемуАлгоритмПослеЗагрузкиОбъектаHTML(Команда)
	Расш1_КонсольКода.СменитьТему(
		ЭтотОбъект, 
		Элементы.АлгоритмПослеЗагрузкиОбъекта.Имя + "HTML", 
		СветлаяТемаПослеЗагрузкиОбъекта);
КонецПроцедуры

&НаКлиенте
Процедура ЗаменитьВхожденияАлгоритмПослеЗагрузкиОбъектаHTML()
	КонсольКодаПослеЗагрузкиОбъекта.editor.trigger("", "editor.action.changeAll");
КонецПроцедуры

#КонецОбласти

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервере
Процедура ИзменитьУсловноеОформление()
	
	Если ЭтоКонвертацияXDTO Тогда
		
		ВидимостьНаправления = Объект.ИспользоватьДляОтправки И Объект.ИспользоватьДляПолучения;
		Элементы.НаправлениеАлгоритмПриОтправкеДанныхHTML.Видимость = ВидимостьНаправления;
		Элементы.НаправлениеАлгоритмПередПолучениемДанныхHTML.Видимость = ВидимостьНаправления;
		Элементы.НаправлениеАлгоритмПриПолученииДанныхHTML.Видимость = ВидимостьНаправления;
		
		Элементы.АлгоритмПослеЗагрузкиВсехДанныхТекстHTMLПанельКоманд.Видимость = Ложь;
		Элементы.ПоказатьТекстАлгоритмаПослеЗагрузкиВсехДанных.Доступность = Ложь;
		
	Иначе
		
		
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ПриИзмененииНаправления(Команда)
	
	ПослеФормированияКонсолей();
	
	Элементы[Команда.Имя].Родитель.Заголовок = Элементы[Команда.Имя].Заголовок;
	Элементы[Команда.Имя].Родитель.Картинка = Элементы[Команда.Имя].Картинка;
	
КонецПроцедуры

&НаКлиенте
Процедура ПослеФормированияКонсолей(ИмяСтраницы = "")
	
	Если ЭтоКонвертацияXDTO Тогда
		
		Элементы.Страница_ОбработчикиXDTO.Доступность = ВсеКонсолиСформированы();
		
		Если Элементы.Страницы.ТекущаяСтраница.Имя <> "Страница_ОбработчикиXDTO" Тогда
			Возврат;
		КонецЕсли;
		
		Если ОбластьПрименения = 2 Тогда
			Направление = "";
		ИначеЕсли ОбластьПрименения = 0 Тогда
			Направление = "Отправка";
		Иначе
			Направление = "Получение";
		КонецЕсли;
		
		Если ПустаяСтрока(ИмяСтраницы) Тогда
			ИмяСтраницы = Элементы.ОбработчикиXDTO.ТекущаяСтраница.Имя;
		КонецЕсли;
		
		ОписаниеПользовательскихОбъектовJSON = 
			ПолучитьОписаниеПараметровJSON(
				ЭтотОбъект["Конвертация"], Объект.ОбъектКонфигурации, Направление, ИмяСтраницы, ЭтоКонвертацияXDTO);
		
		ОбновитьОписаниеПараметровОбработчиковВоВсехКонсолях(ОписаниеПользовательскихОбъектовJSON, ИмяСтраницы);
		
	Иначе
		
		Элементы.Страница_ОбработчикиXML.Доступность = ВсеКонсолиСформированы();
		
		Если Элементы.Страницы.ТекущаяСтраница.Имя <> "Страница_ОбработчикиXML" Тогда
			Возврат;
		КонецЕсли;
		
		Направление = "";
		
		Если ПустаяСтрока(ИмяСтраницы) Тогда
			ИмяСтраницы = Элементы.ОбработчикиXML.ТекущаяСтраница.Имя;
		КонецЕсли;
		
		ОписаниеПользовательскихОбъектовJSON = 
			ПолучитьОписаниеПараметровJSON(
				ЭтотОбъект["Конвертация"], Объект.ОбъектКонфигурации, Направление, ИмяСтраницы, ЭтоКонвертацияXDTO);
		
		ОбновитьОписаниеПараметровОбработчиковВоВсехКонсолях(ОписаниеПользовательскихОбъектовJSON, ИмяСтраницы);
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Функция ВсеКонсолиСформированы()
	
	Результат = Ложь;
	
	Если ЭтоКонвертацияXDTO Тогда
		
		Если ОбластьПрименения = 1 
			И ПередПолучениемДанныхHTMLСформирован 
			И ПриПолученииДанныхHTMLСформирован
			И ПослеЗагрузкиВсехДанныхСформирован Тогда
			
			Результат = Истина;
			
		ИначеЕсли ОбластьПрименения = 0 
			И ПриОтправкеДанныхHTMLСфомирован Тогда
			
			Результат = Истина;
			
		ИначеЕсли ОбластьПрименения = 2
			И ПриОтправкеДанныхHTMLСфомирован
			И ПередПолучениемДанныхHTMLСформирован
			И ПриПолученииДанныхHTMLСформирован
			И ПослеЗагрузкиВсехДанныхСформирован Тогда
			
			Результат = Истина;
			
		КонецЕсли;
		
	Иначе
		
		Если ПередВыгрузкойОбъектаHTMLСформирован 
			И ПриВыгрузкеОбъектаHTMLСформирован
			И ПослеВыгрузкиОбъектаHTMLСформирован
			И ПослеВыгрузкиОбъектаВФайлОбменаHTMLСформирован
			И ПоследовательностьПолейПоискааHTMLСформирован
			И ПередЗагрузкойОбъектаHTMLСформирован
			И ПриЗагрузкеОбъектаHTMLСформирован
			И ПослеЗагрузкиОбъектаHTMLСформирован Тогда
			
			Результат = Истина;
			
		КонецЕсли;
		
	КонецЕсли;
	
	Возврат Результат;
	
КонецФункции

&НаСервереБезКонтекста
Функция ПолучитьОписаниеПараметровJSON(
		Знач Конвертация, Знач ОбъектКонфигурации, Знач Направление, Знач ИмяСтраницы, Знач ЭтоКонвертацияXDTO)
	
	ПользовательскиеОбъекты = Новый Структура;
	
	Если ЭтоКонвертацияXDTO Тогда
		
		Если Не ПустаяСтрока(Направление) Тогда
			КомпонентыОбмена = Расш1_КоллекцияМетаданных.ПолучитьОписаниеКомпонентыОбмена(Направление);
			ПользовательскиеОбъекты.Вставить("КомпонентыОбмена", КомпонентыОбмена);
		КонецЕсли;
		
		Если Не ПустаяСтрока(ОбъектКонфигурации) Тогда
			ДанныеИБ = Расш1_КоллекцияМетаданных.ПолучитьОписаниеДанныеИБ(ОбъектКонфигурации);
			ПользовательскиеОбъекты.Вставить("ДанныеИБ", ДанныеИБ);
		КонецЕсли;
		
		Если ИмяСтраницы = "Страница_ПриОтправке" Тогда
			
			ПараметрыКонвертации = Расш1_КоллекцияМетаданных.ПолучитьОписаниеПараметрыКонвертации(Конвертация);
			ПользовательскиеОбъекты.Вставить("ПараметрыКонвертации", ПараметрыКонвертации);
			
			// Описать эти объекты нет возможности, т.к. они формируются в процессе обмена в базах приемника и источника.
			ПользовательскиеОбъекты.Вставить("ДанныеXDTO", "");
			ПользовательскиеОбъекты.Вставить("СтекВыгрузки", "");
			
		ИначеЕсли ИмяСтраницы = "Страница_ПриКонвертацииДанныхXDTO" Тогда
			
			// Описать эти объекты нет возможности, т.к. они формируются в процессе обмена в базах приемника и источника.
			ПользовательскиеОбъекты.Вставить("ДанныеXDTO", "");
			ПользовательскиеОбъекты.Вставить("ПолученныеДанные", "");
			
		ИначеЕсли ИмяСтраницы = "Страница_ПередЗаписьюПолученныхДанных" Тогда
			
			// Описать эти объекты нет возможности, т.к. они формируются в процессе обмена в базах приемника и источника.
			ПользовательскиеОбъекты.Вставить("КонвертацияСвойств", "");
			ПользовательскиеОбъекты.Вставить("ПолученныеДанные", "");
			
		КонецЕсли;
		
	Иначе
		
		
		
	КонецЕсли;
	
	ОписаниеПользовательскихОбъектов = Новый Структура;
	ОписаниеПользовательскихОбъектов.Вставить("customObjects", ПользовательскиеОбъекты);
	
	ОписаниеПользовательскихОбъектовJSON = 
		Расш1_КоллекцияМетаданных.ПолучитьОписаниеМетаданныхJSON(ОписаниеПользовательскихОбъектов);
	
	Возврат ОписаниеПользовательскихОбъектовJSON;
	
КонецФункции

&НаКлиенте
Процедура ОбновитьОписаниеПараметровОбработчиковВоВсехКонсолях(ОписаниеПараметровJSON, ИмяСтраницы)
	
	Если ЭтоКонвертацияXDTO Тогда
		
		АдресОбновления = "";
		Если ИмяСтраницы = "Страница_ПриКонвертацииДанныхXDTO" Тогда
			
			РезультатОбновления = КонсольКодаПередПолучениемДанных.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
			
			Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
				КонсольКодаПередПолучениемДанных.triggerSuggestions();
			Иначе
				Ошибка = РезультатОбновления.errorDescription;
				ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
			КонецЕсли;
			
		ИначеЕсли ИмяСтраницы = "Страница_ПередЗаписьюПолученныхДанных" Тогда
			
			РезультатОбновления = КонсольКодаПриПолученниДанных.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
			
			Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
				КонсольКодаПриПолученниДанных.triggerSuggestions();
			Иначе
				Ошибка = РезультатОбновления.errorDescription;
				ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
			КонецЕсли;
			
		ИначеЕсли ИмяСтраницы = "Страница_ПриОтправке" Тогда
			
			РезультатОбновления = КонсольКодаПриОтправке.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
			
			Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
				КонсольКодаПриОтправке.triggerSuggestions();
			Иначе
				Ошибка = РезультатОбновления.errorDescription;
				ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
			КонецЕсли;
			
		КонецЕсли;
		
	Иначе
		
		АдресОбновления = "";
		Если ИмяСтраницы = "Страница_ПередВыгрузкой" Тогда
			
			РезультатОбновления = КонсольКодаПередВыгрузкойОбъекта.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
			
			Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
				КонсольКодаПередВыгрузкойОбъекта.triggerSuggestions();
			Иначе
				Ошибка = РезультатОбновления.errorDescription;
				ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
			КонецЕсли;
			
		ИначеЕсли ИмяСтраницы = "Страница_ПриВыгрузке" Тогда
			
			РезультатОбновления = КонсольКодаПриВыгрузкеОбъекта.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
			
			Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
				КонсольКодаПриВыгрузкеОбъекта.triggerSuggestions();
			Иначе
				Ошибка = РезультатОбновления.errorDescription;
				ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
			КонецЕсли;
			
		ИначеЕсли ИмяСтраницы = "Страница_ПослеВыгрузки" Тогда
			
			РезультатОбновления = КонсольКодаПослеВыгрузкиОбъекта.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
			
			Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
				КонсольКодаПослеВыгрузкиОбъекта.triggerSuggestions();
			Иначе
				Ошибка = РезультатОбновления.errorDescription;
				ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
			КонецЕсли;
			
		ИначеЕсли ИмяСтраницы = "Страница_ПослеВыгрузкиВФайл" Тогда
			
			РезультатОбновления = КонсольКодаПослеВыгрузкиОбъектаВФайлОбмена.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
			
			Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
				КонсольКодаПослеВыгрузкиОбъектаВФайлОбмена.triggerSuggestions();
			Иначе
				Ошибка = РезультатОбновления.errorDescription;
				ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
			КонецЕсли;
			
		ИначеЕсли ИмяСтраницы = "Страница_ПоляПоиска" Тогда
			
			РезультатОбновления = КонсольКодаПоследовательностьПолейПоиска.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
			
			Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
				КонсольКодаПоследовательностьПолейПоиска.triggerSuggestions();
			Иначе
				Ошибка = РезультатОбновления.errorDescription;
				ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
			КонецЕсли;
			
		ИначеЕсли ИмяСтраницы = "Страница_ПередЗагрузкой" Тогда
			
			РезультатОбновления = КонсольКодаПередЗагрузкойОбъекта.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
			
			Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
				КонсольКодаПередЗагрузкойОбъекта.triggerSuggestions();
			Иначе
				Ошибка = РезультатОбновления.errorDescription;
				ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
			КонецЕсли;
			
		ИначеЕсли ИмяСтраницы = "Страница_ПриЗагрузке" Тогда
			
			РезультатОбновления = КонсольКодаПриЗагрузкеОбъекта.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
			
			Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
				КонсольКодаПриЗагрузкеОбъекта.triggerSuggestions();
			Иначе
				Ошибка = РезультатОбновления.errorDescription;
				ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
			КонецЕсли;
			
		ИначеЕсли ИмяСтраницы = "Страница_ПослеЗагрузки" Тогда
			
			РезультатОбновления = КонсольКодаПослеЗагрузкиОбъекта.updateMetadata(ОписаниеПараметровJSON, АдресОбновления);
			
			Если ТипЗнч(РезультатОбновления) = Тип("Булево") Тогда
				КонсольКодаПослеЗагрузкиОбъекта.triggerSuggestions();
			Иначе
				Ошибка = РезультатОбновления.errorDescription;
				ОбщегоНазначенияКлиент.СообщитьПользователю(Ошибка);
			КонецЕсли;
			
		КонецЕсли;
		
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти

#Если Клиент Тогда
	
	ПриОтправкеДанныхHTMLСфомирован = Ложь;
	СветлаяТемаАлгоритмПриОтправкеДанных = Истина;
	
	ПередПолучениемДанныхHTMLСформирован = Ложь;
	СветлаяТемаАлгоритмПередПолучениемДанных = Истина;
	
	ПриПолученииДанныхHTMLСформирован = Ложь;
	СветлаяТемаАлгоритмПриПолученииДанных = Истина;
	
	ПослеЗагрузкиВсехДанныхСформирован = Ложь;
	
	ПередВыгрузкойОбъектаHTMLСформирован = Ложь;
	СветлаяТемаПередВыгрузкойОбъекта = Истина;
	
	ПриВыгрузкеОбъектаHTMLСформирован = Ложь;
	СветлаяТемаПриВыгрузкеОбъектаа = Истина;
	
	ПослеВыгрузкиОбъектаHTMLСформирован = Ложь;
	СветлаяТемаПослеВыгрузкиОбъекта = Истина;
	
	ПослеВыгрузкиОбъектаВФайлОбменаHTMLСформирован = Ложь;
	СветлаяТемаПослеВыгрузкиОбъектаВФайлОбмена = Истина;
	
	ПоследовательностьПолейПоискааHTMLСформирован = Ложь;
	СветлаяТемаПоследовательностьПолейПоиска = Истина;
	
	ПередЗагрузкойОбъектаHTMLСформирован = Ложь;
	СветлаяТемаПередЗагрузкойОбъекта = Истина;
	
	ПриЗагрузкеОбъектаHTMLСформирован = Ложь;
	СветлаяТемаПриЗагрузкеОбъекта = Истина;
	
	ПослеЗагрузкиОбъектаHTMLСформирован = Ложь;
	СветлаяТемаПослеЗагрузкиОбъекта = Истина;
	
#КонецЕсли
