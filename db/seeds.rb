# This seeds contains real life data to populate the website


Formation.create({start: Date.parse('2015-08-04'), 
                  finish: Date.parse('2021-03-29'),
                  is_in_progress: false,
                  degree: 'Bachelor', 
                  field: 'Computer Science', 
                  institution: 'Universidade Federal Rural de Pernambuco - UFRPE'})

authors = Author.create([{name: 'Araujo, I. C. S'},
                         {name: 'da Silva, A. J.'},
                         {name: 'dos Santos, P. G. M.'},
                         {name: 'Gamboa, J. C. R.'},
                         {name: 'Araujo, R. S.'},
                         {name: 'Albarracin E., E. S.'},
                         {name: 'Duran A., Christian M.'},
                         {name: 'Veras, T. M. L. de'},
                         {name: 'Park, D. K.'},
                         {name: 'Blank, C.'}, 
                         {name: 'Vale, R.'},
                         {name: 'Azevedo, T. M. D.'},
                         {name: 'Araujo, I. F.'}])

coordinator = Coordinator.create({name: 'Adenilton José da Silva'})


languages = Language.create([{name: 'portuguese', is_native: true},
                             {name: 'english'},
                             {name: 'french'}])
languages.shift

language_skills = LanguageSkill.create([{skill_type: 1}, 
                                        {skill_type: 2}, 
                                        {skill_type: 3}, 
                                        {skill_type: 4}])

language_skill_level = LanguageSkillLevel.create([{skill_level_type: 1}, 
                                                  {skill_level_type: 2}, 
                                                  {skill_level_type: 3}, 
                                                  {skill_level_type: 4}, 
                                                  {skill_level_type: 5}, 
                                                  {skill_level_type: 6}])

publications = Publication.create([{title: 'Quantum enhanced k-fold cross-validation' ,
                                    publication_place: '2018 7th Brazilian Conference on Intelligent Systems (BRACIS). IEEE,2018. p. 194-199.',
                                    source: 'https://ieeexplore.ieee.org/abstract/document/8575612?casa_token=xi_jtfbe2RIAAAAA:rJDlEBoZkwXvugaBqiP2_WzJU46gpsjdXgOP1MaMgMwsNw-LHrEQav3a0_DV2bucRo78pN3eSR2G'},
                                   {title: 'Deep learning models for classification of gases detected by sensor arrays of artificial nose',
                                    publication_place: 'Anais do XVI Encontro Nacional de Inteligência Artificial e Computacional. SBC, 2019. p. 844-855.',
                                    source: 'https://sol.sbc.org.br/index.php/eniac/article/view/9339'},
                                   {title: 'Quantum enhanced cross-validation for near-optimal neural networks architecture selection',
                                    publication_place: 'International Journal of Quantum Information, v. 16, n. 08, p. 1840005, 2018.',
                                    source: 'https://www.worldscientific.com/doi/abs/10.1142/S0219749918400051?casa_token=f3_iQvpNrC8AAAAA%3AZ8HKyqqimQDh7SQS7E6NXGXAZ1NB1Uirj0RV7pCRcAMIlItDjQf6EtpqIDVGjfFm0hYHsNptklsn6_c&'},
                                   {title: 'Quantum ensembles of trained Classifiers',
                                    publication_place: 'International Joint Conference of Neural Networks, 2020, Glasgow',
                                    source: 'https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=9207488&casa_token=t_5wdGQyHW0AAAAA:pRA6YmKZvl7e9NKTGiugd4wgjoQODcKx5SAlif9xHQ77AgPjDVg9CzKipjRB54yGbFPOwS8aejGt'},
                                   {title: 'Validation of the rapid detection approach for enhancing the electronic nose systems performance, using different deep learning models and support vector machines',
                                    publication_place: 'Sensors and Actuators B: Chemical, v. 327, p. 128921, 2021.',
                                    source: 'https://www.sciencedirect.com/science/article/pii/S0925400520312685?casa_token=qvUAjlA24a0AAAAA:5FKuDSgnHuZGLUtR_kw9dNXt4psYocnszJeHT7CjiuYci8n8sWQCCaFesWzaLlyMhs7W5SQQ9Dut'},
                                   {title: 'Circuit-based quantum random access memory for classical data with continuous amplitudes',
                                    publication_place: 'IEEE Transactions on Computers, 2020.',
                                    source: 'https://ieeexplore.ieee.org/iel7/12/4358213/09259210.pdf?casa_token=SXzWtrmlDqwAAAAA:6Zg9_eckXiZwiGb76xpovzQLfnYUMIBsydinmgpGgLaX6DgwnGCJFynGZIzuvCfYVUDL8Allaj7N'}])

language_skill_and_levels = LanguageSkillAndLevel.create([{language: languages[0],
                                                           language_skill: language_skills[0],
                                                           language_skill_level: language_skill_level[2]},
                                                          {language: languages[0], 
                                                           language_skill: language_skills[1], 
                                                           language_skill_level: language_skill_level[5]}, 
                                                          {language: languages[0], 
                                                           language_skill: language_skills[2], 
                                                           language_skill_level: language_skill_level[4]}, 
                                                          {language: languages[0], 
                                                           language_skill: language_skills[3], 
                                                           language_skill_level: language_skill_level[4]}, 
                                                          {language: languages[1], 
                                                           language_skill: language_skills[0], 
                                                           language_skill_level: language_skill_level[2]},
                                                          {language: languages[1], 
                                                           language_skill: language_skills[1], 
                                                           language_skill_level: language_skill_level[5]},
                                                          {language: languages[1], 
                                                           language_skill: language_skills[2], 
                                                           language_skill_level: language_skill_level[2]}, 
                                                          {language: languages[1], 
                                                           language_skill: language_skills[3], 
                                                           language_skill_level: language_skill_level[2]}])

projects = Project.create([{title: 'Quantum machine learning: models and learning algorithms',
                            description: 'The objective of this project is to develop machine learning algorithms enhanced by quantum computation superior to classical algorithms in terms of performance, memory usage and train speed. These objectives will be addressed using traditional quantum computation, adiabatic quantum computation and open quantum computing...', 
                            coordinator: coordinator},
                           {title: 'Quantum Neural Networks: Models and Learning algorithms and architecture selection',
                            description: 'This work studies the use of  quantum associative memories in the training, architecture selection and performance evaluation of quantum neural networks. In addition, I also contributed to the implementation of procedures that generate quantum circuits for data encoding in quantum state.', 
                            coordinator: coordinator}])


publication_authors = PublicationAuthor.create([{publication: publications[0], author: authors[2], author_order: 1},
                                                {publication: publications[0], author: authors[0], author_order: 2},
                                                {publication: publications[0], author: authors[4], author_order: 3},
                                                {publication: publications[0], author: authors[1], author_order: 4},
                                                {publication: publications[1], author: authors[0], author_order: 1},
                                                {publication: publications[1], author: authors[3], author_order: 2},
                                                {publication: publications[1], author: authors[1], author_order: 3},
                                                {publication: publications[2], author: authors[2], author_order: 1},
                                                {publication: publications[2], author: authors[4], author_order: 2},
                                                {publication: publications[2], author: authors[0], author_order: 3},
                                                {publication: publications[2], author: authors[1], author_order: 4},
                                                {publication: publications[3], author: authors[0], author_order: 1},
                                                {publication: publications[3], author: authors[1], author_order: 2},
                                                {publication: publications[4], author: authors[3], author_order: 1},
                                                {publication: publications[4], author: authors[1], author_order: 2},
                                                {publication: publications[4], author: authors[0], author_order: 3},
                                                {publication: publications[4], author: authors[5], author_order: 5},
                                                {publication: publications[4], author: authors[6], author_order: 6},
                                                {publication: publications[5], author: authors[7], author_order: 1},
                                                {publication: publications[5], author: authors[0], author_order: 2},
                                                {publication: publications[5], author: authors[8], author_order: 3},
                                                {publication: publications[5], author: authors[1], author_order: 4}])