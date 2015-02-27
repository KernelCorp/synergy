# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ThinkingType.create kind: :pd, name: 'Предметно-действенное мышление (П-Д)', description: 'Свойственно людям дела.Они усваивают информацию через движения. Обычно они обладают хорошей координацией движений. Их руками создан весь окружающий нас предметный мир. Они водят машины, стоят у станков, собирают компьютеры. Без них невозможно реализовать самую блестящую идею. Этим мышление важно для спортсменов, танцоров, артистов.'
ThinkingType.create kind: :as, name: 'Абстрактно-символическое мышление (А-С)', description: 'Обладают многие ученые – физики-теоретики, математики, экономисты, программисты, аналитики. Они могут усваивать информацию с помощью математических кодов, формул и операций, которые нельзя ни потрогать, ни представить. Благодаря особенностям такого мышления на основе гипотез сделаны многие открытия во всех областях науки.'
ThinkingType.create kind: :sl, name: 'Словесно-логическое мышление (С-Л)', description: ' Отличает людей с ярко выраженным вербальным интеллектом (от лат. verbalis - словесный). Благодаря развитому словесно-логическому мышлению ученый, преподаватель, переводчик, писатель, филолог, журналист могутсформулировать свои мысли и донести их до людей. Это умение необходимо руководителям, политикам и общественным деятелям.'
ThinkingType.create kind: :no, name: 'Наглядно-образное мышление (Н-О)', description: 'Обладают люди с художественным складом ума, которые могут представить и то, что было, и то, что будет, и то, чего никогда не было и не будет – художники, поэты, писатели, режиссеры. Архитектор, конструктор, дизайнер, художник, режиссер должны обладать развитым наглядно-образным мышлением.'
ThinkingType.create kind: :k, name: 'Креативность (К)', description: 'Это способность мыслить творчески, находить нестандартные решения задачи. Это редкое и ничем не заменимое качество, отличающее людей, талантливых в любой сфере деятельности.'

ths1 = ThinkingSubtype.create name: 'I тип «организатор» («руководитель»)', status: 'Агостеник (лат. ago — ведущий, sthenos — сила, греч. dromos — путь) — «тот, кто обладает достаточной силой, чтобы вести других за собой».', description: 'Легко адаптируются в социальной сфере. Склонны к руководству и организаторской деятельности. Ориентированы на авторитеты и значимые в обществе нормы поведения. Часто обладают даром хороших рассказчиков, основывающимся на высоком уровне речевого развития. Стремятся к доминированию над другими.Их отличает выраженная потребность в активных действиях. Большое значение имеет не только результат, но и сам процесс его осуществления. При оценке как успехов, так и неудач склонны к преувеличению. Встречая препятствия, становятся крайне возбудимыми. В социальных отношениях выделяются решительностью и азартом. В отношениях с другими склонны занимать позицию лидера. В напряженных межличностных ситуациях преобладает стратегия соперничества. Требуют признания, стремятся обратить на себя внимание окружающих, чувствуют себя ответственными за многое и демонстрируют это перед другими. В крайних случаях склонны к запредельной ответственности, переходящей в демонстративное самобичевание или предъявление повышенных требований к окружающим. Зависимы от сиюминутного настроения. Импульсивны в принятии решений. Могут принимать решение, которое им кажется правильным в данный момент, не предполагая, что оно может повлечь за собой неприятности в дальнейшем.', suitable_job: 'управление человеческими ресурсами, управление проектом, стратегический менеджмент, спортивный менеджмент, административные должности, научные исследования, опытно-конструкторские разработки.'
ths2 = ThinkingSubtype.create name: 'II тип «ответственный исполнитель» (старательный работник»)', status: 'Орстеник (лат. ordinatus—упорядоченный) — «обладающий силой упорядочивать неопределенные ситуации».', description: 'Предметно-ориентированы. Для них «умение делать дело» является первоочередным. Стремятся добиваться совершенства во владении профессией. Обладают высоким чувством ответственности. Требовательны к себе и другим. В отношениях довольно щепетильны. Высоко ценят справедливость и обладают повышенной чувствительностью к правдивости. Характеризуются многими чертами «организаторов», однако в принятии ответственных решений их часто одолевают сомнения.Во взаимоотношениях отличаются излишней деликатностью. Считают неудобным отказать в просьбе. Берутся за все дела, зачастую переоценивая свои возможности в их выполнении. Уверены, что могут справиться с любым делом в одиночку. Не могут передать часть своей работы другому, доверяя лишь себе. Упрямство часто воспринимается ими как отстаивание своих принципов. Излишне интенсивно переживают даже незначительные неудачи. Окружающие считают их трудолюбивыми и жестко относящимися к себе. Этих же качеств они ожидают от других. Могут выдерживать значительные умственные нагрузки, хотя высокая интенсивность работы вызывает раздражение. Не могут быстро включаться в процесс, так как им необходим длительный подготовительный период. Сам процесс деятельности не приносит особого удовлетворения, зато существенное значение придается результату. Чувствуют себя дискомфортно, когда процесс остается незаконченным. В манерах и движениях присуща сдержанность. Возможны резкие изменения в эмоциональном состоянии под воздействием внешних факторов. Склонность к психосоматическим заболеваниям, т.е. заболеваниям вызванным психическими причинами, например если в школу не хочется, может подниматься температура или болеть живот.', suitable_job: 'юриспруденция, гражданское право, финансовое право, прикладная информатика, банковское дело, экономика, математическое обеспечение и администрирование информационных систем, информационные системы и технологии.'
ths3 = ThinkingSubtype.create name: 'III тип «инициатор» («фантазер»)', status: 'Тоностеник (лат. ton — напряженность, negativus — отрицательный) — «обладающий силой трансформировать в воображении негативные тенденции в позитивные образы».', description: 'Легко абстрагируются от реальности, обладают «концептуальным умом», т.е. схватывают общую идею, концепцию. Стремятся к овладению выбранной предметной деятельностью независимо от того, как складываются отношения с окружающими. Нередко испытывают отчужденность, чувствуя себя не такими, как все. Склонны следовать своим представлениям о мире, которые зачастую бывают далеки от реальности. В затруднительных ситуациях склонны к фантазированию. Легко устанавливают контакты с окружающими и умеют сохранять с ними определенную дистанцию. В критических межличностных ситуациях уходят в себя, внешне демонстрируя невозмутимость. Отличаются разнообразием способностей, начиная от умения описывать пережитые события и заканчивая рисованием, рукоделием. Склонны к деятельности, требующей хорошо развитых навыков тонкой моторики. Не выносят однообразной деятельности, рутины. От скучной и монотонной работы впадают в подавленное состояние. Смена деятельности их вдохновляет, новые возможности — окрыляют. В рамках одной профессии им тесно, поэтому они могут совершенно неожиданно ее сменить и заняться чем-то новым. Зачастую хобби становится их второй профессией.', suitable_job: 'различные виды искусства, такие как литературное и мультипликация, театральное реклама и творчество, дизайн, цирковое искусство, журналистика, анимация, психологическая служба.'
ths4 = ThinkingSubtype.create name: 'IV тип «эмотивный» («эмпатический»)', status: 'Эмфостеник (греч. emphasis — выразительный) — «обладает силой передавать эмоции и переживания различными средствами».', description: 'Обладают повышенным сопереживанием по отношению к другим. Тяжело переживают драматические сцены даже в кинофильмах. Трудные жизненные обстоятельства могут надолго выбить из колеи. Сопереживающие. Проблемы других людей вызывают у них участие и сочувствие. Склонны тратить на заботу о других слишком много сил и энергии, что зачастую затрудняет реализацию их собственных интересов и способностей. Отличаются повышенной готовностью к спонтанномувыражению эмоций и импульсивным поступкам. Стремятся к освоению различных видов деятельности. Однако более продуктивны в случае выбора какой-либо одной области. Чувствительны к тончайшим нюансам отношений. Болезненно воспринимают изменения во взаимоотношениях с другими. Глубоко переживают размолвки. Отличаются устойчивостью переживаний. Долго находятся под впечатлением событий, в которых им пришлось участвовать. Общительны и непринужденны в контактах с окружающими. Склонны к отрицанию и подавлению затруднений в межличностных отношениях. Стремятся к соблюдению принятых в группе норм поведения. Характеризуются повышенной восприимчивостью к оценке себя и своей деятельности со стороны других.', suitable_job: 'специальная психология и педагогика, обслуживание клиентов (бармен, рецепция), воспитание и обучение (педагогика), лечение душевно больных (психиатрия), торговля, организация процесса обучения взрослых (составление программ развития).'
ths5 = ThinkingSubtype.create name: 'V тип «интуитивный» («сензитивный», тревожно- мнительный»)', status: 'Констеник (лат. contradictorius — противоречивый) — «обладающий силой многое подвергать сомнению».', description: 'Обладают высокой чувствительностью нервной системы и ее быстрой истощаемостью. Выраженная эмоциональная лабильность. Эффективнее работают, имея возможность переключаться с одного вида деятельности на другой. Обладают повышенной чувствительностью к новизне. Подвержены переживаниям по поводу возможного неблагоприятного развития событий. Действуют по первому побуждению или долго не могут на что-либо решиться вообще. Их нерешительность является следствием затруднений в быстрой переработке большого объема поступающей информации. Они пытаются охватить необъятное и постичь невозможное. Это приводит к сложностям в выражении своих мыслей и чувств. Прямодушны. Их слова зачастую опережают мысли, а привычка «говорить правду в глаза» приводитк осложнениям в отношениях. Окружающие их зачастую не понимают или понимают превратно. В коллективе вырабатывают собственные нормы поведения и следуют им. В социальном поведении ориентированы на определенную группу людей, как правило, немногочисленную. Чувствуют в себе силы для того, чтобы играть в коллективе роль неформального лидера. Реализации этой потребности может мешать неуверенность в себе, порождаемая страхом выглядеть смешными в глазах окружающих. Дискомфортное состояние возникает из-за внутреннего противоречия «все понимаю, но ничего не могу с собой поделать». Склонны к самоанализу, к критической оценке собственных поступков и переживаний. Вместе с тем их точка зрения довольно трудно корректируется другими. Предпочитают постоянно контролировать обстоятельства во избежание стрессовых ситуаций. Свободолюбивы. Бурно реагируют на любые ограничения. Физически не переносят беспорядка. Из-за последнего конфликтуют с окружающими. Отличаются повышенной ранимостью. Сомневаются в себе. Нуждаются в мягком подбадривании.', suitable_job: 'психология, библиотечное дело, научные исследования, организация процесса обучения взрослых (составление программ развития), управление человеческими ресурсами, реклама, создание имиджа, работа по связям с общественностью (public relations).'
ths6 = ThinkingSubtype.create name: 'VI тип «независимый» («свободный художник»)', status: 'Илостеник (лат, immunus — свободный, logos — отношение) — «обладающий силой настаивать на своем, быть независимыми в отношениях».', description: 'Характеризуются богатым воображением и пространственным видением. Чаще интровертированы, при принятии решений исходят из собственных взглядов и убеждений, живут собственными нормами. Устойчивы к давлению со стороны социального окружения. Эмоционально возбудимы. Одержимы оригинальными идеями. Активность и эффективность их работы возрастает при увеличении напряженности.Неблагоприятные обстоятельства их мобилизуют. «Все, что нас не убивает – делает нас сильнее» - типичный девиз, людей данного типа. Способны рассуждать и действовать независимо. Умеют отстаивать собственную точку зрения. Трудно примиряются со своими ошибками. Бурно реагируют на замечания окружающих, воспринимают критику «в штыки». Не торопятся проявлять инициативу при установлении контактов. Переживания стараются скрывать от окружающих, проявляя несвойственную им оживленность. Стремятся к созданию доверительных отношений, но очень осторожны в их установлении. Установившиеся связи с другими людьми отличаются глубиной и продолжительностью.', suitable_job: 'различные виды технического, художественного или интеллектуального творчества.'
ths7 = ThinkingSubtype.create name: 'VII тип «коммуникативный» («переменчивый»)', status: 'Инстеник (лат. initiare — начинать) — «обладающий легкостью в пробуждении активности».', description: 'Отсутствует контроль в поведении и речи. Непосредственны в социальных отношениях. Легко вовлекаются в ситуацию и так же легко из нее выходят. Бурно реагируют на происходящие события. По сиюминутному порыву соглашаются участвовать в делах, которые являются помехой на пути к ранее намеченным целям. Легко переносят неопределенные отношения, неловкие ситуации и конфликтные обстоятельства. Обладают экономическим чутьем. Умеют быстро реагировать в незнакомой обстановке. Вместе с тем может быть понижена чувствительность к текущей ситуации, из-за чего склонны делать поспешные выводы. Зачастую бросают начатое дело, не доводя его до конца. Более успешны при такой организации процесса, когда есть возможность переключаться с одного дела на другое. Обладают высокой самооценкой, уверены в себе.', suitable_job: 'спортивный менеджмент, психология, управление человеческими ресурсами, менеджмент гостиничного и ресторанного бизнеса, гостиничное дело, ритейл, маркетинг, дизайн и реклама, public relations.'
ths8 = ThinkingSubtype.create name: 'VIII тип «самодостаточный» («технически ориентированный»)', status: 'Аргостеник (лат. агтаге — укреплять, греч. henna — опора) — «обладающий достаточной силой выдерживать нагрузки».', description: 'Эмоционально стабильные. В большинстве случаев владеют собой и последовательно придерживаются определенных правил. Избегают общения с теми, кто не умеет скрывать своих чувств. «Разговору о жизни или по душам» предпочитают целенаправленную беседу. Прежде чем завязать знакомство, стараются получше присмотреться к предполагаемому партнеру. Чувствительность к переживаниям других людей слегка понижена вследствие поглощенности предметной (деловой) стороной общения. Проявляют строгость к себе и другим. Будучи хорошими специалистами, могут отлично организовывать предметную сторону дела. Склонны замыкаться в кругу собственных проблем. Обладают развитым самоконтролем. В затруднительных ситуациях расчитывают только на свои силы. Считают себя, а не обстоятельства, ответственными за собственные успехи и неудачи. Больше предпочитают индивидуальную работу. В коллективе занимаются организацией процесса предметной деятельности. В работе создают собственную систему. Не склонны пользоваться опытом и наработками других. Детально продумывают варианты своих действий. Обладают развитыми «ручными» навыками и образным воображением.', suitable_job: 'технические виды творчества, архитектура, информационные системы и технические средства, эксплуатация и обслуживание техники, административные должности.'

ths1.subtype_codes.create image_code: 811, description: 'Развиты навыки организаторской деятельности, способны выдерживать длительные нагрузки, связанные с общением. Демонстративны в словах и поступках, чем внушают уважение к себе со стороны окружающих. Хорошо владеют словом (речью). Склонны к переживаниям по поводу того, как будет выглядеть результат их работы в глазах других. Подтип наиболее распространен среди людей с лидерской мотивацией, в частности среди руководителей.'
ths1.subtype_codes.create image_code: 721, description: 'Нет описания'
ths1.subtype_codes.create image_code: 712, description: 'Выражена потребность реализовать себя в предметной деятельности. Стремятся подчеркнуть внешние атрибуты своего статуса. Испытывают сложности в принятии ответственных решений, потому более успешны в роли неформального лидера.'
ths1.subtype_codes.create image_code: 631, description: 'Стремление к деятельности, связанной с работой в коллективе. Общаясь с другими, становятся наиболее активными. Развито чувство соперничества. По натуре энтузиасты, умеют вдохновлять окружающих своей идеей. Упорны в достижении намеченной цели. Часто встречается среди людей со склонностью к педагогической деятельности.'
ths1.subtype_codes.create image_code: 622, description: 'Нет описания'
ths1.subtype_codes.create image_code: 613, description: 'В коллективе держатся несколько обособленно, хотя незаметно для себя оказываются вовлеченными во множество разнообразных отношений и дел. В кругу хорошо знакомых и близких людей держатся более открыто. В стрессовых ситуациях склонны действовать, поддавшись первому импульсу. Избегать неудачи для них более характерно, нежели стремиться к успеху. Испытывают неуверенность перед предстоящими событиями.'


ths2.subtype_codes.create image_code: 541, description: 'Нет описания'
ths2.subtype_codes.create image_code: 532, description: 'Систематизаторы, могут работать с большим объемом информации, упорядочивая и систематизируя ее. Длительное общение с большим количеством людей утомляет. Более плодотворно работают с другими один на один. Чувствительны к отношениям с окружающими людьми. Проявляют гибкость в поддержании отношений. Эмоции часто подавляются стремлением объяснить происходящее с рациональной точки зрения. Честолюбивы, обладают высоким уровнем притязаний. Тяжелопереживают неудачи, склонны переоценивать их значение. Часто встречается среди представителей профессий, имеющих отношение к знаковым системам, — научные работники, экономисты, секретари и референты.'
ths2.subtype_codes.create image_code: 523, description: 'Нет описания'
ths2.subtype_codes.create image_code: 514, description: 'Нет описания'

ths3.subtype_codes.create image_code: 433, description: 'Легко вовлекаются в происходящие вокруг события, но при отсутствии поощрения со стороны и постоянной обратной связи быстро теряют к ним интерес. В общении с другими стремятся покорить окружающих своей оригинальностью и самобытностью. Эмоциональны, обладают образным складом мышления. Часто встречается среди представителей художественно-творческих профессий — сценаристов, мультипликаторов, работников кино.'
ths3.subtype_codes.create image_code: 343, description: 'Нет описания'
ths3.subtype_codes.create image_code: 334, description: 'Нет описания'

ths4.subtype_codes.create image_code: 181, description: 'Обладают обостренной чувствительностью к внешним событиям, вследствие чего уровень тревожности зачастую повышен. Мягки и деликатны в общении. Восприимчивы во взаимоотношениях с окружающими. Упорны в выполнении предметной деятельности, но не склонны отыскивать новые способы разрешения проблем.'
ths4.subtype_codes.create image_code: 271, description: 'Нет описания'
ths4.subtype_codes.create image_code: 172, description: 'Нет описания'
ths4.subtype_codes.create image_code: 361, description: 'Нет описания'
ths4.subtype_codes.create image_code: 262, description: 'Нет описания'
ths4.subtype_codes.create image_code: 163, description: 'Нет описания'

ths5.subtype_codes.create image_code: 451, description: 'Выражена потребность к получению новой информации и новых впечатлений. Увлечение деталями часто мешает сосредоточиться на главном. Стремление к успеху преобладает над страхом неудач. Общение с другими затруднено из-за высоких притязаний на статусную роль при отсутствии дипломатических навыков и выраженной импульсивности.'
ths5.subtype_codes.create image_code: 352, description: 'Склонны увлекаться вопросами и проблемами, связанными со здоровьем и медициной. Обладают глубиной мышления, пытаются проникнуть в суть ситуации, события или явления. Огромное внимание уделяют деталям и мелочам. В поведении отличаются импульсивностью, в результате чего их слова и действия могут опережать мысли. В качестве компенсации вырабатывают у себя навыки пунктуальности, которая может переходить в сверхпунктуальность.'
ths5.subtype_codes.create image_code: 253, description: 'Обладают пытливым умом. Испытывают удовольствие, когда удается обнаружить необычный способ разрешения ситуации. Выражена оптимистическая установка. Стремление к доверительным отношениям в сочетании с коммуникативной импульсивностью может создавать сложности в социальной адаптации.'
ths5.subtype_codes.create image_code: 154, description: 'Нет описания'

ths6.subtype_codes.create image_code: 442, description: 'Нет описания'
ths6.subtype_codes.create image_code: 424, description: 'Продуктивность деятельности возрастает в напряженной ситуации. Тщательны в работе, стремятся к совершенствованию процесса. Если за что-то берутся, то доводят это до конца. Часто их можно узнать пофразе «как это можно так плохо работать». Тщательно продумывают варианты своего возможного будущего.'
ths6.subtype_codes.create image_code: 244, description: 'Высокая частота встречаемости среди людей художественного склада и литературной профессии (журналисты, писатели, public relations).'

ths7.subtype_codes.create image_code: 415, description: 'Часто встречается у людей с поэтическим складом ума.'
ths7.subtype_codes.create image_code: 325, description: 'Нет описания'
ths7.subtype_codes.create image_code: 235, description: 'Отличаются склонностью к развитию многочисленных контактов. Развито умение быстро переключаться в общении с одного человека на другого, с одного вида коммуникативной деятельности на другой. Часто встречается среди людей, деятельность которых связана с интенсивным, но кратковременным взаимодействием с другими (журналисты, public relations). В самом процессе общения видят предмет и цель своих усилий.'
ths7.subtype_codes.create image_code: 145, description: 'Нет описания'

ths8.subtype_codes.create image_code: 118, description: 'Склонны к техническим профессиям, где есть необходимость сочетать изобретательские навыки с прикладной задачей, зачастую связанной с техническими и кибернетическими системами, — инженеры, конструкторы, программисты. Выдерживают высокие стрессовые нагрузки, поэтому эффективны в таких профессиях, как управление сложными операционными системами. Сохраняют спокойствие в эмоционально- напряженной ситуации. При первой же возможности «выключаются» из ситуации и стремятся действовать автономно. Возлагают на себя ответственность за свои успехи и неудачи.'
ths8.subtype_codes.create image_code: 127, description: 'Нет описания'
ths8.subtype_codes.create image_code: 217, description: 'Распространен среди людей технической ориентации, склонных к целостному видению проблемы, — изобретателей, дизайнеров, системных программистов и прочих технически ориентированных и наглядно-образных профессий, таких, как рентгенолог и оператор.'
ths8.subtype_codes.create image_code: 136, description: 'Нет описания'
ths8.subtype_codes.create image_code: 226, description: 'Отличаются высокой мотивацией достижений.'
ths8.subtype_codes.create image_code: 316, description: 'Характеризуются стремлением создавать теории, по преимуществу глобальные. Склонны успешно осуществлять сложную и кропотливую работу.'

ProfessionType.create name: 'Человек-Природа', description: 'все профессии, связанные с растениеводством, животноводством и лесным хозяйством, минералогией и другими полезными ископаемыми, водными ресурсами.'
ProfessionType.create name: 'Человек-Техника', description: 'все технические профессии.'
ProfessionType.create name: 'Человек-Человек', description: 'все профессии, связанные с обслуживанием людей, с общением.'
ProfessionType.create name: 'Человек-Знак', description: 'все профессии, связанные с расчетами, цифровыми и буквенными знаками, деньгами, кодами, в том числе и музыкальные специальности.'
ProfessionType.create name: 'Человек-Художественный образ', description: 'все творческие специальности.'
