<html>
    <head>
        <link rel="stylesheet" href="css/styles.css">
    </head>
    <body>
        <div class="container" id="header">
            <h1>{{basic_info.name}} {{basic_info.surname}}</h1>
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
    </body>
</html>