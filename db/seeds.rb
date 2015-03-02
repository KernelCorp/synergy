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

ths = []
ths << (ThinkingSubtype.create name: 'I тип «организатор» («руководитель»)', status: 'Агостеник (лат. ago — ведущий, sthenos — сила, греч. dromos — путь) — «тот, кто обладает достаточной силой, чтобы вести других за собой».', description: 'Легко адаптируются в социальной сфере. Склонны к руководству и организаторской деятельности. Ориентированы на авторитеты и значимые в обществе нормы поведения. Часто обладают даром хороших рассказчиков, основывающимся на высоком уровне речевого развития. Стремятся к доминированию над другими.Их отличает выраженная потребность в активных действиях. Большое значение имеет не только результат, но и сам процесс его осуществления. При оценке как успехов, так и неудач склонны к преувеличению. Встречая препятствия, становятся крайне возбудимыми. В социальных отношениях выделяются решительностью и азартом. В отношениях с другими склонны занимать позицию лидера. В напряженных межличностных ситуациях преобладает стратегия соперничества. Требуют признания, стремятся обратить на себя внимание окружающих, чувствуют себя ответственными за многое и демонстрируют это перед другими. В крайних случаях склонны к запредельной ответственности, переходящей в демонстративное самобичевание или предъявление повышенных требований к окружающим. Зависимы от сиюминутного настроения. Импульсивны в принятии решений. Могут принимать решение, которое им кажется правильным в данный момент, не предполагая, что оно может повлечь за собой неприятности в дальнейшем.', suitable_job: 'управление человеческими ресурсами, управление проектом, стратегический менеджмент, спортивный менеджмент, административные должности, научные исследования, опытно-конструкторские разработки.')
ths << (ThinkingSubtype.create name: 'II тип «ответственный исполнитель» (старательный работник»)', status: 'Орстеник (лат. ordinatus—упорядоченный) — «обладающий силой упорядочивать неопределенные ситуации».', description: 'Предметно-ориентированы. Для них «умение делать дело» является первоочередным. Стремятся добиваться совершенства во владении профессией. Обладают высоким чувством ответственности. Требовательны к себе и другим. В отношениях довольно щепетильны. Высоко ценят справедливость и обладают повышенной чувствительностью к правдивости. Характеризуются многими чертами «организаторов», однако в принятии ответственных решений их часто одолевают сомнения.Во взаимоотношениях отличаются излишней деликатностью. Считают неудобным отказать в просьбе. Берутся за все дела, зачастую переоценивая свои возможности в их выполнении. Уверены, что могут справиться с любым делом в одиночку. Не могут передать часть своей работы другому, доверяя лишь себе. Упрямство часто воспринимается ими как отстаивание своих принципов. Излишне интенсивно переживают даже незначительные неудачи. Окружающие считают их трудолюбивыми и жестко относящимися к себе. Этих же качеств они ожидают от других. Могут выдерживать значительные умственные нагрузки, хотя высокая интенсивность работы вызывает раздражение. Не могут быстро включаться в процесс, так как им необходим длительный подготовительный период. Сам процесс деятельности не приносит особого удовлетворения, зато существенное значение придается результату. Чувствуют себя дискомфортно, когда процесс остается незаконченным. В манерах и движениях присуща сдержанность. Возможны резкие изменения в эмоциональном состоянии под воздействием внешних факторов. Склонность к психосоматическим заболеваниям, т.е. заболеваниям вызванным психическими причинами, например если в школу не хочется, может подниматься температура или болеть живот.', suitable_job: 'юриспруденция, гражданское право, финансовое право, прикладная информатика, банковское дело, экономика, математическое обеспечение и администрирование информационных систем, информационные системы и технологии.')
ths << (ThinkingSubtype.create name: 'III тип «инициатор» («фантазер»)', status: 'Тоностеник (лат. ton — напряженность, negativus — отрицательный) — «обладающий силой трансформировать в воображении негативные тенденции в позитивные образы».', description: 'Легко абстрагируются от реальности, обладают «концептуальным умом», т.е. схватывают общую идею, концепцию. Стремятся к овладению выбранной предметной деятельностью независимо от того, как складываются отношения с окружающими. Нередко испытывают отчужденность, чувствуя себя не такими, как все. Склонны следовать своим представлениям о мире, которые зачастую бывают далеки от реальности. В затруднительных ситуациях склонны к фантазированию. Легко устанавливают контакты с окружающими и умеют сохранять с ними определенную дистанцию. В критических межличностных ситуациях уходят в себя, внешне демонстрируя невозмутимость. Отличаются разнообразием способностей, начиная от умения описывать пережитые события и заканчивая рисованием, рукоделием. Склонны к деятельности, требующей хорошо развитых навыков тонкой моторики. Не выносят однообразной деятельности, рутины. От скучной и монотонной работы впадают в подавленное состояние. Смена деятельности их вдохновляет, новые возможности — окрыляют. В рамках одной профессии им тесно, поэтому они могут совершенно неожиданно ее сменить и заняться чем-то новым. Зачастую хобби становится их второй профессией.', suitable_job: 'различные виды искусства, такие как литературное и мультипликация, театральное реклама и творчество, дизайн, цирковое искусство, журналистика, анимация, психологическая служба.')
ths << (ThinkingSubtype.create name: 'IV тип «эмотивный» («эмпатический»)', status: 'Эмфостеник (греч. emphasis — выразительный) — «обладает силой передавать эмоции и переживания различными средствами».', description: 'Обладают повышенным сопереживанием по отношению к другим. Тяжело переживают драматические сцены даже в кинофильмах. Трудные жизненные обстоятельства могут надолго выбить из колеи. Сопереживающие. Проблемы других людей вызывают у них участие и сочувствие. Склонны тратить на заботу о других слишком много сил и энергии, что зачастую затрудняет реализацию их собственных интересов и способностей. Отличаются повышенной готовностью к спонтанномувыражению эмоций и импульсивным поступкам. Стремятся к освоению различных видов деятельности. Однако более продуктивны в случае выбора какой-либо одной области. Чувствительны к тончайшим нюансам отношений. Болезненно воспринимают изменения во взаимоотношениях с другими. Глубоко переживают размолвки. Отличаются устойчивостью переживаний. Долго находятся под впечатлением событий, в которых им пришлось участвовать. Общительны и непринужденны в контактах с окружающими. Склонны к отрицанию и подавлению затруднений в межличностных отношениях. Стремятся к соблюдению принятых в группе норм поведения. Характеризуются повышенной восприимчивостью к оценке себя и своей деятельности со стороны других.', suitable_job: 'специальная психология и педагогика, обслуживание клиентов (бармен, рецепция), воспитание и обучение (педагогика), лечение душевно больных (психиатрия), торговля, организация процесса обучения взрослых (составление программ развития).')
ths << (ThinkingSubtype.create name: 'V тип «интуитивный» («сензитивный», тревожно- мнительный»)', status: 'Констеник (лат. contradictorius — противоречивый) — «обладающий силой многое подвергать сомнению».', description: 'Обладают высокой чувствительностью нервной системы и ее быстрой истощаемостью. Выраженная эмоциональная лабильность. Эффективнее работают, имея возможность переключаться с одного вида деятельности на другой. Обладают повышенной чувствительностью к новизне. Подвержены переживаниям по поводу возможного неблагоприятного развития событий. Действуют по первому побуждению или долго не могут на что-либо решиться вообще. Их нерешительность является следствием затруднений в быстрой переработке большого объема поступающей информации. Они пытаются охватить необъятное и постичь невозможное. Это приводит к сложностям в выражении своих мыслей и чувств. Прямодушны. Их слова зачастую опережают мысли, а привычка «говорить правду в глаза» приводитк осложнениям в отношениях. Окружающие их зачастую не понимают или понимают превратно. В коллективе вырабатывают собственные нормы поведения и следуют им. В социальном поведении ориентированы на определенную группу людей, как правило, немногочисленную. Чувствуют в себе силы для того, чтобы играть в коллективе роль неформального лидера. Реализации этой потребности может мешать неуверенность в себе, порождаемая страхом выглядеть смешными в глазах окружающих. Дискомфортное состояние возникает из-за внутреннего противоречия «все понимаю, но ничего не могу с собой поделать». Склонны к самоанализу, к критической оценке собственных поступков и переживаний. Вместе с тем их точка зрения довольно трудно корректируется другими. Предпочитают постоянно контролировать обстоятельства во избежание стрессовых ситуаций. Свободолюбивы. Бурно реагируют на любые ограничения. Физически не переносят беспорядка. Из-за последнего конфликтуют с окружающими. Отличаются повышенной ранимостью. Сомневаются в себе. Нуждаются в мягком подбадривании.', suitable_job: 'психология, библиотечное дело, научные исследования, организация процесса обучения взрослых (составление программ развития), управление человеческими ресурсами, реклама, создание имиджа, работа по связям с общественностью (public relations).')
ths << (ThinkingSubtype.create name: 'VI тип «независимый» («свободный художник»)', status: 'Илостеник (лат, immunus — свободный, logos — отношение) — «обладающий силой настаивать на своем, быть независимыми в отношениях».', description: 'Характеризуются богатым воображением и пространственным видением. Чаще интровертированы, при принятии решений исходят из собственных взглядов и убеждений, живут собственными нормами. Устойчивы к давлению со стороны социального окружения. Эмоционально возбудимы. Одержимы оригинальными идеями. Активность и эффективность их работы возрастает при увеличении напряженности.Неблагоприятные обстоятельства их мобилизуют. «Все, что нас не убивает – делает нас сильнее» - типичный девиз, людей данного типа. Способны рассуждать и действовать независимо. Умеют отстаивать собственную точку зрения. Трудно примиряются со своими ошибками. Бурно реагируют на замечания окружающих, воспринимают критику «в штыки». Не торопятся проявлять инициативу при установлении контактов. Переживания стараются скрывать от окружающих, проявляя несвойственную им оживленность. Стремятся к созданию доверительных отношений, но очень осторожны в их установлении. Установившиеся связи с другими людьми отличаются глубиной и продолжительностью.', suitable_job: 'различные виды технического, художественного или интеллектуального творчества.')
ths << (ThinkingSubtype.create name: 'VII тип «коммуникативный» («переменчивый»)', status: 'Инстеник (лат. initiare — начинать) — «обладающий легкостью в пробуждении активности».', description: 'Отсутствует контроль в поведении и речи. Непосредственны в социальных отношениях. Легко вовлекаются в ситуацию и так же легко из нее выходят. Бурно реагируют на происходящие события. По сиюминутному порыву соглашаются участвовать в делах, которые являются помехой на пути к ранее намеченным целям. Легко переносят неопределенные отношения, неловкие ситуации и конфликтные обстоятельства. Обладают экономическим чутьем. Умеют быстро реагировать в незнакомой обстановке. Вместе с тем может быть понижена чувствительность к текущей ситуации, из-за чего склонны делать поспешные выводы. Зачастую бросают начатое дело, не доводя его до конца. Более успешны при такой организации процесса, когда есть возможность переключаться с одного дела на другое. Обладают высокой самооценкой, уверены в себе.', suitable_job: 'спортивный менеджмент, психология, управление человеческими ресурсами, менеджмент гостиничного и ресторанного бизнеса, гостиничное дело, ритейл, маркетинг, дизайн и реклама, public relations.')
ths << (ThinkingSubtype.create name: 'VIII тип «самодостаточный» («технически ориентированный»)', status: 'Аргостеник (лат. агтаге — укреплять, греч. henna — опора) — «обладающий достаточной силой выдерживать нагрузки».', description: 'Эмоционально стабильные. В большинстве случаев владеют собой и последовательно придерживаются определенных правил. Избегают общения с теми, кто не умеет скрывать своих чувств. «Разговору о жизни или по душам» предпочитают целенаправленную беседу. Прежде чем завязать знакомство, стараются получше присмотреться к предполагаемому партнеру. Чувствительность к переживаниям других людей слегка понижена вследствие поглощенности предметной (деловой) стороной общения. Проявляют строгость к себе и другим. Будучи хорошими специалистами, могут отлично организовывать предметную сторону дела. Склонны замыкаться в кругу собственных проблем. Обладают развитым самоконтролем. В затруднительных ситуациях расчитывают только на свои силы. Считают себя, а не обстоятельства, ответственными за собственные успехи и неудачи. Больше предпочитают индивидуальную работу. В коллективе занимаются организацией процесса предметной деятельности. В работе создают собственную систему. Не склонны пользоваться опытом и наработками других. Детально продумывают варианты своих действий. Обладают развитыми «ручными» навыками и образным воображением.', suitable_job: 'технические виды творчества, архитектура, информационные системы и технические средства, эксплуатация и обслуживание техники, административные должности.')
ths.each &:save!

ths[0].subtype_codes.create image_code: 811, description: 'Развиты навыки организаторской деятельности, способны выдерживать длительные нагрузки, связанные с общением. Демонстративны в словах и поступках, чем внушают уважение к себе со стороны окружающих. Хорошо владеют словом (речью). Склонны к переживаниям по поводу того, как будет выглядеть результат их работы в глазах других. Подтип наиболее распространен среди людей с лидерской мотивацией, в частности среди руководителей.'
ths[0].subtype_codes.create image_code: 721, description: 'Нет описания'
ths[0].subtype_codes.create image_code: 712, description: 'Выражена потребность реализовать себя в предметной деятельности. Стремятся подчеркнуть внешние атрибуты своего статуса. Испытывают сложности в принятии ответственных решений, потому более успешны в роли неформального лидера.'
ths[0].subtype_codes.create image_code: 631, description: 'Стремление к деятельности, связанной с работой в коллективе. Общаясь с другими, становятся наиболее активными. Развито чувство соперничества. По натуре энтузиасты, умеют вдохновлять окружающих своей идеей. Упорны в достижении намеченной цели. Часто встречается среди людей со склонностью к педагогической деятельности.'
ths[0].subtype_codes.create image_code: 622, description: 'Нет описания'
ths[0].subtype_codes.create image_code: 613, description: 'В коллективе держатся несколько обособленно, хотя незаметно для себя оказываются вовлеченными во множество разнообразных отношений и дел. В кругу хорошо знакомых и близких людей держатся более открыто. В стрессовых ситуациях склонны действовать, поддавшись первому импульсу. Избегать неудачи для них более характерно, нежели стремиться к успеху. Испытывают неуверенность перед предстоящими событиями.'


ths[1].subtype_codes.create image_code: 541, description: 'Нет описания'
ths[1].subtype_codes.create image_code: 532, description: 'Систематизаторы, могут работать с большим объемом информации, упорядочивая и систематизируя ее. Длительное общение с большим количеством людей утомляет. Более плодотворно работают с другими один на один. Чувствительны к отношениям с окружающими людьми. Проявляют гибкость в поддержании отношений. Эмоции часто подавляются стремлением объяснить происходящее с рациональной точки зрения. Честолюбивы, обладают высоким уровнем притязаний. Тяжелопереживают неудачи, склонны переоценивать их значение. Часто встречается среди представителей профессий, имеющих отношение к знаковым системам, — научные работники, экономисты, секретари и референты.'
ths[1].subtype_codes.create image_code: 523, description: 'Нет описания'
ths[1].subtype_codes.create image_code: 514, description: 'Нет описания'

ths[2].subtype_codes.create image_code: 433, description: 'Легко вовлекаются в происходящие вокруг события, но при отсутствии поощрения со стороны и постоянной обратной связи быстро теряют к ним интерес. В общении с другими стремятся покорить окружающих своей оригинальностью и самобытностью. Эмоциональны, обладают образным складом мышления. Часто встречается среди представителей художественно-творческих профессий — сценаристов, мультипликаторов, работников кино.'
ths[2].subtype_codes.create image_code: 343, description: 'Нет описания'
ths[2].subtype_codes.create image_code: 334, description: 'Нет описания'

ths[3].subtype_codes.create image_code: 181, description: 'Обладают обостренной чувствительностью к внешним событиям, вследствие чего уровень тревожности зачастую повышен. Мягки и деликатны в общении. Восприимчивы во взаимоотношениях с окружающими. Упорны в выполнении предметной деятельности, но не склонны отыскивать новые способы разрешения проблем.'
ths[3].subtype_codes.create image_code: 271, description: 'Нет описания'
ths[3].subtype_codes.create image_code: 172, description: 'Нет описания'
ths[3].subtype_codes.create image_code: 361, description: 'Нет описания'
ths[3].subtype_codes.create image_code: 262, description: 'Нет описания'
ths[3].subtype_codes.create image_code: 163, description: 'Нет описания'

ths[4].subtype_codes.create image_code: 451, description: 'Выражена потребность к получению новой информации и новых впечатлений. Увлечение деталями часто мешает сосредоточиться на главном. Стремление к успеху преобладает над страхом неудач. Общение с другими затруднено из-за высоких притязаний на статусную роль при отсутствии дипломатических навыков и выраженной импульсивности.'
ths[4].subtype_codes.create image_code: 352, description: 'Склонны увлекаться вопросами и проблемами, связанными со здоровьем и медициной. Обладают глубиной мышления, пытаются проникнуть в суть ситуации, события или явления. Огромное внимание уделяют деталям и мелочам. В поведении отличаются импульсивностью, в результате чего их слова и действия могут опережать мысли. В качестве компенсации вырабатывают у себя навыки пунктуальности, которая может переходить в сверхпунктуальность.'
ths[4].subtype_codes.create image_code: 253, description: 'Обладают пытливым умом. Испытывают удовольствие, когда удается обнаружить необычный способ разрешения ситуации. Выражена оптимистическая установка. Стремление к доверительным отношениям в сочетании с коммуникативной импульсивностью может создавать сложности в социальной адаптации.'
ths[4].subtype_codes.create image_code: 154, description: 'Нет описания'

ths[5].subtype_codes.create image_code: 442, description: 'Нет описания'
ths[5].subtype_codes.create image_code: 424, description: 'Продуктивность деятельности возрастает в напряженной ситуации. Тщательны в работе, стремятся к совершенствованию процесса. Если за что-то берутся, то доводят это до конца. Часто их можно узнать пофразе «как это можно так плохо работать». Тщательно продумывают варианты своего возможного будущего.'
ths[5].subtype_codes.create image_code: 244, description: 'Высокая частота встречаемости среди людей художественного склада и литературной профессии (журналисты, писатели, public relations).'

ths[6].subtype_codes.create image_code: 415, description: 'Часто встречается у людей с поэтическим складом ума.'
ths[6].subtype_codes.create image_code: 325, description: 'Нет описания'
ths[6].subtype_codes.create image_code: 235, description: 'Отличаются склонностью к развитию многочисленных контактов. Развито умение быстро переключаться в общении с одного человека на другого, с одного вида коммуникативной деятельности на другой. Часто встречается среди людей, деятельность которых связана с интенсивным, но кратковременным взаимодействием с другими (журналисты, public relations). В самом процессе общения видят предмет и цель своих усилий.'
ths[6].subtype_codes.create image_code: 145, description: 'Нет описания'

ths[7].subtype_codes.create image_code: 118, description: 'Склонны к техническим профессиям, где есть необходимость сочетать изобретательские навыки с прикладной задачей, зачастую связанной с техническими и кибернетическими системами, — инженеры, конструкторы, программисты. Выдерживают высокие стрессовые нагрузки, поэтому эффективны в таких профессиях, как управление сложными операционными системами. Сохраняют спокойствие в эмоционально- напряженной ситуации. При первой же возможности «выключаются» из ситуации и стремятся действовать автономно. Возлагают на себя ответственность за свои успехи и неудачи.'
ths[7].subtype_codes.create image_code: 127, description: 'Нет описания'
ths[7].subtype_codes.create image_code: 217, description: 'Распространен среди людей технической ориентации, склонных к целостному видению проблемы, — изобретателей, дизайнеров, системных программистов и прочих технически ориентированных и наглядно-образных профессий, таких, как рентгенолог и оператор.'
ths[7].subtype_codes.create image_code: 136, description: 'Нет описания'
ths[7].subtype_codes.create image_code: 226, description: 'Отличаются высокой мотивацией достижений.'
ths[7].subtype_codes.create image_code: 316, description: 'Характеризуются стремлением создавать теории, по преимуществу глобальные. Склонны успешно осуществлять сложную и кропотливую работу.'

FactorChoiseProfession.create factor: 'Престиж профессии (популярность)', motivation: 'Признание окружающих', arguments: 'Университет возможностей, встречи с знаменитыми, успешными людьми (мастер-классы), востребованность специальности на рынке труда (за этой профессией будущее) и т.д.'
FactorChoiseProfession.create factor: 'Возможность трудоустройства', motivation: 'Стабильность', arguments: 'Наличие центра трудоустройства, востребованность специальности на рынке труда, совмещение работы и учебы, приобретение опыта работы во время прохождения практик'
FactorChoiseProfession.create factor: 'Высокая заработная плата', motivation: 'Материальная обеспеченность', arguments: 'Приобретения опыта по специальности, возможность совмещения работы и учебы и т.д.'
FactorChoiseProfession.create factor: 'Качество образования', motivation: 'Знание, обучение', arguments: 'Практико-ориентированное обучение, возможность трудоустройства, сильный профессорско-преподавательский состав'
FactorChoiseProfession.create factor: 'Мнения и желания близких', motivation: 'Избегание неудачи', arguments: 'Доступная оплата обучения, диплом государственного образца'
FactorChoiseProfession.create factor: 'Мои способности и интересы', motivation: 'Достижения', arguments: 'Возможность участвовать в научных конференциях, бизнес-проектах, кружки'
FactorChoiseProfession.create factor: 'Близость к дому', motivation: 'Комфорт, безопасность', arguments: 'Близкое расположение корпуса на Семеновской от метро, наличие дистанционных программ обучения'
FactorChoiseProfession.create factor: 'Доступная оплата обучения', motivation: 'Независимость, самостоятельность', arguments: 'Средний ценник по Москве, совмещение работы и учебы (возможность оплачивать обучение самому) и т.д.'
FactorChoiseProfession.create factor: 'Выбор друзей (за компанию)', motivation: 'Социальная', arguments: 'Разнообразная внеучебная студенческая жизнь, акция «приведи друга»'
FactorChoiseProfession.create factor: 'Гарантированное поступление', motivation: 'Избегание неудачи', arguments: 'Центр подготовки к ЕГЭ'

pp1 = PreferenceProfession.create profession_a: 'работник оранжереи', profession_b: 'микробиолог'
pp2 = PreferenceProfession.create profession_a: 'искусствовед', profession_b: 'следователь'
pp3 = PreferenceProfession.create profession_a: 'адвокат', profession_b: 'библиотекарь'
pp4 = PreferenceProfession.create profession_a: 'телеграфист', profession_b: 'океанолог'
pp5 = PreferenceProfession.create profession_a: 'фотомодель', profession_b: 'бармен'
pp6 = PreferenceProfession.create profession_a: 'брокер', profession_b: 'нотариус'
pp7 = PreferenceProfession.create profession_a: 'инженер', profession_b: 'сис.администратор'
pp8 = PreferenceProfession.create profession_a: 'философ', profession_b: 'врач'
pp9 = PreferenceProfession.create profession_a: 'фермер', profession_b: 'священнослужитель'
pp10 = PreferenceProfession.create profession_a: 'эколог', profession_b: 'налоговый инспектор'
pp11 = PreferenceProfession.create profession_a: 'кинолог', profession_b: 'литературный переводчик'
pp12 = PreferenceProfession.create profession_a: 'автомеханик', profession_b: 'дизайнер интерьера'
pp13 = PreferenceProfession.create profession_a: 'фармацевт', profession_b: 'юрисконсульт'
pp14 = PreferenceProfession.create profession_a: 'ювелир', profession_b: 'торговый администратор'
pp15 = PreferenceProfession.create profession_a: 'художник-модельер', profession_b: 'инспектор таможни'
pp16 = PreferenceProfession.create profession_a: 'инженер-электронщик', profession_b: 'пиарщик'
pp17 = PreferenceProfession.create profession_a: 'хирург', profession_b: 'тренер команды'
pp18 = PreferenceProfession.create profession_a: 'повар', profession_b: 'бухгалтер'
pp19 = PreferenceProfession.create profession_a: 'реставратор', profession_b: 'дипломат'
pp20 = PreferenceProfession.create profession_a: 'военнослужащий', profession_b: 'флорист'
pp21 = PreferenceProfession.create profession_a: 'лингвист', profession_b: 'страховой агент'
pp22 = PreferenceProfession.create profession_a: 'режиссер', profession_b: 'журналист'
pp23 = PreferenceProfession.create profession_a: 'экскурсовод', profession_b: 'секретарь-референт'
pp24 = PreferenceProfession.create profession_a: 'водитель', profession_b: 'бортпроводник'
pp25 = PreferenceProfession.create profession_a: 'метеоролог', profession_b: 'картограф'
pp26 = PreferenceProfession.create profession_a: 'физик', profession_b: 'архитектор'
pp27 = PreferenceProfession.create profession_a: 'социальный работник', profession_b: 'предприниматель'
pp28 = PreferenceProfession.create profession_a: 'портной', profession_b: 'хореограф'
pp29 = PreferenceProfession.create profession_a: 'геолог', profession_b: 'гид-переводчик'
pp30 = PreferenceProfession.create profession_a: 'агроном', profession_b: 'аниматор'
pp31 = PreferenceProfession.create profession_a: 'археолог', profession_b: 'оператор почтовой связи'
pp32 = PreferenceProfession.create profession_a: 'социолог', profession_b: 'менеджер'
pp33 = PreferenceProfession.create profession_a: 'преподаватель', profession_b: 'экономист'
pp34 = PreferenceProfession.create profession_a: 'инспектор ГАИ', profession_b: 'риэлтор'
pp35 = PreferenceProfession.create profession_a: 'рекламщик', profession_b: 'корректор'
pp36 = PreferenceProfession.create profession_a: 'программист', profession_b: 'спортивный агент'
pp37 = PreferenceProfession.create profession_a: 'актер', profession_b: 'архивариус'
pp38 = PreferenceProfession.create profession_a: 'пчеловод', profession_b: 'руководитель ком. службы'
pp39 = PreferenceProfession.create profession_a: 'парикмахер-стилист', profession_b: 'главный бухгалтер'
pp40 = PreferenceProfession.create profession_a: 'ведущий тренингов', profession_b: 'аудитор'
pp41 = PreferenceProfession.create profession_a: 'музыкант-исполнитель', profession_b: 'банковский служащий'
pp42 = PreferenceProfession.create profession_a: 'официант', profession_b: 'судья'


pref1 = PreferenceResult.create title: 'Реалистический тип', description: 'Реалистический'
pref1.save
pref2 = PreferenceResult.create title: 'Исследовательский тип', description: 'Исследовательский'
pref2.save
pref3 = PreferenceResult.create title: 'Артистический тип', description: 'Артистический'
pref3.save
pref4 = PreferenceResult.create title: 'Социальный тип', description: 'Социальный'
pref4.save
pref5 = PreferenceResult.create title: 'Предпринимательский тип', description: 'Предпринимательский'
pref5.save
pref6 = PreferenceResult.create title: 'Конвенциональный тип', description: 'Конвенциональный'
pref6.save

pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp1
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp4
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp7
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp9
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp12
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp14
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp16
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp18
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp20
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp24
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp28
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp30
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp34
pref1.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp38

pref2.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp1
pref2.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp4
pref2.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp8
pref2.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp10
pref2.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp11
pref2.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp13
pref2.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp17
pref2.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp21
pref2.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp25
pref2.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp26
pref2.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp29
pref2.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp31
pref2.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp32
pref2.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp36

pref3.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp2
pref3.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp5
pref3.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp11
pref3.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp12
pref3.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp15
pref3.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp19
pref3.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp20
pref3.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp22
pref3.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp26
pref3.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp28
pref3.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp35
pref3.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp37
pref3.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp39
pref3.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp41

pref4.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp2
pref4.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp5
pref4.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp8
pref4.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp9
pref4.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp14
pref4.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp17
pref4.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp23
pref4.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp24
pref4.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp27
pref4.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp29
pref4.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp30
pref4.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp33
pref4.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp40
pref4.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp42

pref5.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp3
pref5.preference_result_criteriums.create correct_answer: 'A', preference_profession: pp6
pref5.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp13
pref5.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp15
pref5.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp16
pref5.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp19
pref5.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp21
pref5.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp22
pref5.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp27
pref5.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp32
pref5.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp34
pref5.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp36
pref5.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp38
pref5.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp42

pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp3
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp6
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp7
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp10
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp18
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp23
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp25
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp31
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp33
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp35
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp37
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp39
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp40
pref6.preference_result_criteriums.create correct_answer: 'B', preference_profession: pp41

ProfessionType.create name: 'Человек-Природа', description: 'все профессии, связанные с растениеводством, животноводством и лесным хозяйством, минералогией и другими полезными ископаемыми, водными ресурсами.'
ProfessionType.create name: 'Человек-Техника', description: 'все технические профессии.'
ProfessionType.create name: 'Человек-Человек', description: 'все профессии, связанные с обслуживанием людей, с общением.'
ProfessionType.create name: 'Человек-Знак', description: 'все профессии, связанные с расчетами, цифровыми и буквенными знаками, деньгами, кодами, в том числе и музыкальные специальности.'
ProfessionType.create name: 'Человек-Художественный образ', description: 'все творческие специальности.'

PicturePattern.create picture_number: 1, title: 'улыбающаяся или смешная рожица, фигурка', description: ''
PicturePattern.create picture_number: 1, title: 'солнце', description: ''
PicturePattern.create picture_number: 1, title: 'цветочек', description: ''
PicturePattern.create picture_number: 1, title: 'глаз', description: ''
PicturePattern.create picture_number: 1, title: 'планеты (вселенная)', description: ''

PicturePattern.create picture_number: 2, title: 'изображение выходит за пределы внутреннего квадрата', description: ''
PicturePattern.create picture_number: 2, title: 'одинокий домик или символ жилища', description: ''
PicturePattern.create picture_number: 2, title: 'рисунок расположен как во внутреннем квадрате, так и вне его', description: ''

PicturePattern.create picture_number: 3, title: 'подчинение рисунку, дополнив его квадратами или другими геометрическими фигурами, так что получился симметричный узор', description: ''
PicturePattern.create picture_number: 3, title: 'рисунок дополнен геометрическими формами, но не является симметричным', description: ''
PicturePattern.create picture_number: 3, title: 'картинка с кривыми линиями, несимметричная и непохожая на правильное геометрическое построение', description: ''

PicturePattern.create picture_number: 4, title: 'рисунок расположен над волнистой линией', description: ''
PicturePattern.create picture_number: 4, title: 'рисунок расположен под волнистой линией', description: ''
PicturePattern.create picture_number: 4, title: 'рисунок расположен и над волнистой линией и под ней', description: ''
PicturePattern.create picture_number: 4, title: 'изображение утопающего или тонущего предмета', description: ''
PicturePattern.create picture_number: 4, title: 'цепочка или линейный орнамент', description: ''

PicturePattern.create picture_number: 5, title: 'рисунок выглядит как элемент какой-либо игры', description: ''
PicturePattern.create picture_number: 5, title: 'решетка (тюремная), забор', description: ''
PicturePattern.create picture_number: 5, title: 'оконный переплет (иногда со шторой)', description: ''

PicturePattern.create picture_number: 6, title: 'стрела, летящая в цель, то есть мишень', description: ''
PicturePattern.create picture_number: 6, title: 'мишень дополнена другими линиями или стрелами', description: ''
PicturePattern.create picture_number: 6, title: 'что-то иное, не похожее на символы стрелы и мишени', description: ''

ColorPattern.create color: 'Красно-желтая гамма', nice: 'решителен, к профессиональному выбору готов. Может испытывать трудности выбора между несколькими деятельностями. Предпочитает активную и разнообразную деятельность, полагается на свои способности.', not_nice: 'не желание участвовать в активной и разнообразной деятельности, не верит в себя.'
ColorPattern.create color: 'Красный цвет', nice: 'активность, настойчивость, лидерство.', not_nice: 'усталость от активности, желание отдохнуть.'
ColorPattern.create color: 'Желтый цвет', nice: 'умеет сочувствовать, дарить надежду на лучшее, утешать.', not_nice: 'отсутствие надежды на лучшее, крушение иллюзий.'
ColorPattern.create color: 'Оранжевый цвет', nice: 'оптимизм.', not_nice: 'пессимизм.'
ColorPattern.create color: 'Фиолетовый цвет', nice: 'вера в сверхестественное, надежда на чудо.', not_nice: 'отрицание чуда, вера в разум, собственные силы.'
ColorPattern.create color: 'Сине-зеленая гамма', nice: 'в выборе профессии определился, предпочитает спокойную работу, размеренный график, предсказуемый результат.', not_nice: 'не любит спокойную работу, размеренный график, предсказуемый результат.'
ColorPattern.create color: 'Зеленый цвет', nice: 'готов прилагать волевые усилия для достижения поставленной цели.', not_nice: 'не готов к волевым усилиям для достижения поставленной цели.'
ColorPattern.create color: 'Грязные, пачкающие тона', nice: 'вытеснение ситуации выбора профессии, стресс, кризис.', not_nice: 'ситуация выбора профессии, не является стрессовой или кризисной.'
ColorPattern.create color: 'Пастельные, белесые тона', nice: 'нежелание взрослеть, инфантилизм, к выбору профессии и переменам в жизни не готов; в выборе полагается на мнение других, перекладывает ответственность.', not_nice: 'желание поскорее повзрослеть, к выбору профессии и переменам в жизни готов; при выборе не прислушивается к мнению других людей, сам берет ответственность.'
ColorPattern.create color: 'Серый', nice: 'скука, разочарование.', not_nice: 'амбициозность, стремление сделать карьеру.'

