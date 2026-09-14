# bsl_console (single-file)

Готовый `index.html` для поля HTML документа 1С. Сборка [salexdv/bsl_console](https://github.com/salexdv/bsl_console), ветка `webpack`.

- Коммит: `47430a9f285347069e58a4aaa732087a51fbec7c` («Примечания подзапросов»)
- Команда: `npm run build:pack` (сжатый single-file, проверка `npm run check:single`)
- Назначение: общий макет `bsl_console` (текстовый документ). В поле HTML кладётся **текст**, не `file://`.

Обновить:

```
git clone --depth 1 --branch webpack https://github.com/salexdv/bsl_console.git
cd bsl_console
npm install
npm run build:pack
copy dist\index.html <этот каталог>\index.html
```

Затем скопировать `index.html` в `Конвертация_данных_31_демо.Conversion_3_Plus/src/CommonTemplates/bsl_console/Template.txt`.

Исходники консоли в этом репозитории не правятся.
