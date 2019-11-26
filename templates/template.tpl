<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/styles.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:200,400,800&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="container" id="header">
            <h1>{{basic_info.name}} {{basic_info.surname}}</h1>
            <p>ur. {{basic_info.date_of_birth}}</p>
            <p>{{basic_info.telephone}} -- {{basic_info.email}}</p>
        </div>

        <div class="container" id="education">
            <h2>Wykształcenie</h2>
            {% for item in education %}
            <div class="item">
                <h3>{{item.place}}</h3>
                <h4>{{item.date_start}} - {{item.date_end}}</h4>
                <p>{{item.additional_info}}</p>
            </div>
            {% endfor %}
        </div>

        <div class="container" id="experience">
            <h2>Doświadczenie</h2>
            {% for item in experience %}
            <div class="item">
                <h3>{{item.place}}</h3>
                <h4>{{item.date_start}} - {{item.date_end}}</h4>
                <p>{{item.additional_info}}</p>
            </div>
            {% endfor %}
        </div>

        <div class="container" id="skills">
            <h2>Umiejętności</h2>
            <ul>
                {% for item in skills %}
                <li>{{item}}</li>
                {% endfor %}
            </ul>
        </div>
        
        <div class="container" id="languages">
            <h2>Języki</h2>
            <ul>
                {% for item in languages %}
                <li>{{item}}</li>
                {% endfor %}
            </ul>
        </div>

        <div class="container" id="klauzula">
            <p>
            Wyrażam zgodę na przetwarzanie moich danych osobowych dla potrzeb niezbędnych do realizacji
            procesu rekrutacji (zgodnie z ustawą z dnia 10 maja 2018 roku o ochronie danych osobowych 
            (Dz. Ustaw z 2018, poz. 1000) oraz zgodnie z Rozporządzeniem Parlamentu Europejskiego i Rady (UE) 
            2016/679 z dnia 27 kwietnia 2016 r. w sprawie ochrony osób fizycznych w związku z przetwarzaniem 
            danych osobowych i w sprawie swobodnego przepływu takich danych oraz uchylenia dyrektywy 95/46/WE (RODO)).
            </p>
        </div>
    </body>
</html>