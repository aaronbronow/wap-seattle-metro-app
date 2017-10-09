<%

Dim landmarks
landmarks = Array("1001 4th Ave Plaza Bldg", _
"110 Union Bldg", _
"1111 3rd Ave Bldg", _
"1201 Western Bldg", _
"132nd Square Park", _
"1411 4th Ave Bldg", _
"1601 2nd Ave Bldg", _
"2nd Ave & Seneca Bldg", _
"3rd & Broad Bldg", _
"400 Yesler Bldg", _
"415 Bell Inc Bldg", _
"419 Bldg", _
"4th & Battery Bldg", _
"4th & Blanchard Bldg", _
"4th & Pike Bldg", _
"4th & Vine Bldg", _
"4th Avenue Plaza", _
"505 Union Station Bldg", _
"5th Avenue Hospital", _
"605 Union Station Bldg", _
"625 Union Station Bldg", _
"6th & Pike Bldg", _
"705 Union Station Bldg", _
"814 2nd Ave Bldg", _
"83 King St Bldg", _
"84 Union Bldg", _
"905 2nd Ave Bldg", _
"A B Ernst Park", _
"Abbey View Memorial Cemetery", _
"Acacia Park Cemetery", _
"ACT", _
"Adams School", _
"Adelaide Park", _
"Adelaide School", _
"Administration Bldg", _
"Admiral Viewpoint Park", _
"Aetna Plaza", _
"African American Academy", _
"Agren Memorial Park", _
"Air Strip", _
"Airborne Bldg", _
"Airport King Co.", _
"Airport Park", _
"Airport Plaza", _
"Airport Plaza Hotel", _
"Airport SeaTac", _
"Airport Spokane P&R", _
"Airport/Spokane P&R", _
"Aki Kurose Middle School", _
"Alaska Bldg", _
"Alaska Junction", _
"Albert Einstein Middle School", _
"Alder Square HC", _
"Alder Square Health Center", _
"Alderbrook Park", _
"Alderdale Park", _
"Alexander Graham Bell School", _
"Alexis Hotel", _
"Algona - Pacific Library", _
"Algona City Hall", _
"Algona Library", _
"Algona Park", _
"Alki Beach Park", _
"Alki Playground", _
"Alki School", _
"All Saints Lutheran Church", _
"All Saints Lutheran Church P&R", _
"Alpac School", _
"Alternative High School", _
"American Youth Hostel", _
"Amgen", _
"Amtrak - King St Station", _
"Amtrak Edmonds", _
"Amy Yee Tennis Center", _
"Anderson Park in Kent", _
"Anderson Park in Redmond", _
"Angle Lake Park", _
"Animal Control - Kent", _
"Animal Control - Redmond", _
"Apollo School", _
"Aquarium", _
"Arbor Heights School", _
"Arbor Lake Park", _
"Arboretum", _
"Arcade Plaza Bldg", _
"Arctic Bldg", _
"Ardmore Park", _
"Ardmore School", _
"Areis Bldg", _
"Armed Forces Examining & Entrance Statio", _
"Arnold Medical Center", _
"Arrowhead School", _
"Art Institute of Seattle", _
"Arthur Johnson Park", _
"Assumption School", _
"Atlantic City Park", _
"Auburn Adventist Academy High School", _
"Auburn Chamber of Commerce", _
"Auburn City Hall", _
"Auburn Game Farm Park", _
"Auburn Garage at Auburn Station", _
"Auburn General Hospital", _
"Auburn High School", _
"Auburn HSC", _
"Auburn Library", _
"Auburn Municipal Airport", _
"Auburn North Center", _
"Auburn P&R", _
"Auburn Pioneer Cemetary", _
"Auburn QFC", _
"Auburn Regional Golf Course", _
"Auburn Regional Medical Center", _
"Auburn Riverside High School", _
"Auburn Sounder Station", _
"Auburn Station", _
"Auburn Station Garage P&R", _
"Auburn Station Surface Lot P&R", _
"Auburn Surface Lot at Auburn Station", _
"Auburndale Park", _
"Audubon School", _
"Aurora Church of the Nazarene P&R", _
"Aurora Square", _
"Aurora Village Center", _
"Aurora Village Transit Center", _
"Aurora Village Transit Center P&R", _
"Av Arcade Bldg", _
"AVTC", _
"B F Day Playground", _
"Bagley School", _
"Bagley Wright Theater", _
"Bainbridge Island Ferry Terminal", _
"Baker Playground", _
"Ballard Bldg", _
"Ballard Community Hospital", _
"Ballard High School", _
"Ballard Library", _
"Ballard Locks", _
"Ballard NH", _
"Ballard Park", _
"Ballard Playground", _
"Ballard QFC", _
"Ballinger Terrace", _
"BAM", _
"Bank of America Tower", _
"Bank of California Center", _
"Bannerwood Park", _
"Bar-S Playground", _
"Bartell Crossroads Junction", _
"Bartell Drugs 4th-Madison", _
"Bartell Drugs-Admiral", _
"Bartell Drugs-Auburn", _
"Bartell Drugs-Aurora", _
"Bartell Drugs-Ballard", _
"Bartell Drugs-Bellevue", _
"Bartell Drugs-Bellevue N", _
"Bartell Drugs-Bellevue Village", _
"Bartell Drugs-Boren & Madison", _
"Bartell Drugs-Bridle Trails", _
"Bartell Drugs-Burien", _
"Bartell Drugs-Canyon Park", _
"Bartell Drugs-Cascade Ctr", _
"Bartell Drugs-Cedar Plaza", _
"Bartell Drugs-Coal Creek", _
"Bartell Drugs-Crossroads", _
"Bartell Drugs-Des Moines", _
"Bartell Drugs-Downtown", _
"Bartell Drugs-DT 3rd & Union", _
"Bartell Drugs-Greenwood", _
"Bartell Drugs-Houghton", _
"Bartell Drugs-Inglewood", _
"Bartell Drugs-Kingsgate", _
"Bartell Drugs-Lake City", _
"Bartell Drugs-Lake Meridian", _
"Bartell Drugs-Magnolia", _
"Bartell Drugs-Queen Anne(24 hrs)", _
"Bartell Drugs-Redmond", _
"Bartell Drugs-Redmond Towne Center", _
"Bartell Drugs-Redondo", _
"Bartell Drugs-Renton", _
"Bartell Drugs-Riverton Hts", _
"Bartell Drugs-Roosevelt", _
"Bartell Drugs-Sammamish Hghlds", _
"Bartell Drugs-Univ Village", _
"Bartell Drugs-University Ave", _
"Bartell Drugs-Wallingford", _
"Bartell Drugs-West Seattle", _
"Bartell Drugs-White Center", _
"Bartell Drugs-Wilderness Village", _
"Bassett Pond Park", _
"Bastyr University", _
"Bayview Playground", _
"BCC", _
"Beacon Hill Library", _
"Beacon Hill NH", _
"Beacon Hill Playground", _
"Beacon Hill School", _
"Bear Creek Christian School North", _
"Bear Creek Christian School South", _
"Bear Creek Country Club", _
"Bear Creek P&R", _
"Bear Creek Park", _
"Bear Creek School", _
"Bear Creek Village", _
"Beaver Lake Middle School", _
"Beaver Lake Park", _
"Bel Square", _
"Bel-East QFC", _
"Bell Plaza", _
"Bellefield Office Park", _
"Bellefields Nature Park", _
"Belleview Christian School", _
"Bellevue Art Museum", _
"Bellevue Botanical Garden", _
"Bellevue Chamber of Commerce", _
"Bellevue Christian High School", _
"Bellevue Christian Reformed Church P&R", _
"Bellevue Christian School", _
"Bellevue City Hall", _
"Bellevue Comm College", _
"Bellevue Community College", _
"Bellevue Foursquare Church P&R", _
"Bellevue High School", _
"Bellevue Highland Park", _
"Bellevue Lodge", _
"Bellevue Montessori School", _
"Bellevue Municipal Golf Course", _
"Bellevue QFC", _
"Bellevue Regional Library", _
"Bellevue Square", _
"Bellevue Transit Center", _
"Benaroya Business Park", _
"Benaroya Business Park at Orcas", _
"Benaroya Hall", _
"Benjamin Franklin School", _
"Benjamin Rush School", _
"Bennett School", _
"Bertschi School", _
"Best Western at Southcenter", _
"Bethany Bible Church P&R", _
"Bethel Lutheran Church P&R", _
"Beverly Park First Baptist Church P&R", _
"Beverly Park School", _
"Bicentennial Park in Auburn", _
"Bicentennial Park in Tukwila", _
"Big Finn Hill Park", _
"Bikur Cholum Cemetary", _
"Bill Reams East Sammamish Park", _
"Bitter Lake NH", _
"Bitter Lake Park", _
"Black Angus Motor Inn", _
"Black Diamond Cemetery", _
"Black Diamond City Hall", _
"Black Diamond Library", _
"Black Diamond Masonic Lodge P&R", _
"Black Diamond School", _
"Blaine School", _
"Blanchet High School", _
"Blood Bank - Bellevue", _
"Blood Bank - First Hill", _
"Blood Bank - Northend", _
"Blood Bank - Tukwila", _
"Blyth Park", _
"Bobby Morris Playground", _
"Boeing Auburn", _
"Boeing Credit Union", _
"Boeing DC", _
"Boeing Everett", _
"Boeing Field King County-International", _
"Boeing Kent", _
"Boeing Plant 2", _
"Boeing Renton", _
"Borden Playfield", _
"Boren Park", _
"Bothell City Hall", _
"Bothell High School", _
"Bothell IOOF Cemetary", _
"Bothell Library", _
"Bothell Municipal Court", _
"Bothell P&R", _
"Bothell QFC", _
"Boulevard Lane Park", _
"Boulevard Park Library", _
"Bovee Park", _
"Bow Lake Park", _
"Bow Lake School", _
"Brannan Park", _
"Bremerton Ferry Terminal", _
"Briarcrest  Intermediate", _
"Briarwood School", _
"Brickyard Freeway Station", _
"Brickyard P&R", _
"Brickyard Road P&R", _
"Bridge Motel", _
"Bridle Trail State Park", _
"Brigadoon School", _
"Brighton Playground", _
"Brighton School", _
"Brisco Meander Park", _
"Broadmoor Golf Course", _
"Broadview Library", _
"Broadview Thompson School", _
"Broadway Market", _
"Broadway QFC", _
"Brooklyn Bldg", _
"Brookside School", _
"Bruggers Bog Park", _
"Bryant Park", _
"Bryant School", _
"Bryn Mawr NH", _
"Bryn Mawr Park", _
"Bryn Mawr School", _
"BTC", _
"Buena Vista SDA School", _
"Burien City Hall", _
"Burien Library", _
"Burien P&R", _
"Burien Park", _
"Burien QFC", _
"Burien Transit Center", _
"Burke Gilman Park", _
"Burke Memorial Museum", _
"Burlington Green Park", _
"Burrows Landing Park", _
"Burton Acres Park", _
"Burton School", _
"Bush High School", _
"Bush School", _
"BUTC", _
"Byron Kibler School", _
"Cabrini Medical Tower", _
"Calvary  Christian Assembly Church", _
"Calvary Catholic Cemetery", _
"Calvary Christian Assembly Church P&R", _
"Camelot Park", _
"Camelot School", _
"Camp Sealth Recreation Area", _
"Campbell Hill School", _
"Campus Park", _
"Campus Square at Federal Way", _
"Camron Park", _
"Capitol Hill", _
"Capitol Hill Library", _
"Capitol Hill NH", _
"Capitol Hill QFC", _
"Carillon Point", _
"Carkeek Park", _
"Carl Sandberg School", _
"Carnation Cemetary", _
"Carnation City Hall", _
"Carnation Golf Course", _
"Carnation Library", _
"Carnation QFC", _
"Carnation School", _
"Carpenter Center Bldg", _
"Carriage Crest School", _
"Cascade Golf Course", _
"Cascade Jr High School", _
"Cascade Middle School", _
"Cascade Park", _
"Cascade School", _
"Cascade View School", _
"Cascadia Community College", _
"CBD", _
"CCC", _
"Cecil Powell Neighborhood Park", _
"Cedar Grove Park", _
"Cedar Lanes Park", _
"Cedar Lawns Memorial Park", _
"Cedar Park Christian School", _
"Cedar River Park", _
"Cedar River School", _
"Cedar River Trail", _
"Cedar River Trail ROW", _
"Cedar Valley School", _
"Cedarcrest High School", _
"Cedarhurst School", _
"Celebration Park", _
"Cellular One", _
"Census Bureau", _
"Center House", _
"Center Monorail Terminal", _
"Center Park Council", _
"Center Plaza", _
"Central Bldg", _
"Central Business District NH", _
"Central District NH", _
"Central Houghton Park", _
"Central HSC", _
"Central Terminal Bldg", _
"Century House Motel Hotel", _
"Century Plaza Bldg", _
"Challanger School", _
"Charles A Lindbergh High School", _
"Chateau Ste Michelle Winery", _
"Chelsea Park", _
"Cherry Crest Park", _
"Cherry Crest School", _
"Cherry Valley School", _
"Childrens Hospital & Medical Center", _
"Children's Museum", _
"Chinatown Library", _
"Chinook Middle School in Bellevue", _
"Chinook Middle School in SeaTac", _
"Chinook School", _
"Chism Beach Park", _
"Christ the King School", _
"Christa Mcauliffe School", _
"Christensen Greenbelt Park", _
"Christian Faith High School", _
"Christian Faith School", _
"Christian Life Prep School", _
"Chrysalis High School", _
"Chrysalis School", _
"Citizenship & Immigration Service", _
"City Centre", _
"City Hall Park", _
"City Park in Auburn", _
"City Park in Fall City", _
"City University North Seattle", _
"City University Renton", _
"Clark School", _
"Clarke Beach Park", _
"Cleveland High School", _
"Cleveland Playground", _
"Cleveland Street Square", _
"Clise Park", _
"Clyde Beach Park", _
"Clyde Hill City Hall", _
"Clyde Hill School", _
"Clyde Hill Town Park", _
"Coal Creek Park", _
"Coal Creek QFC", _
"Coalfield Park", _
"Coast Guard 13th District", _
"Coast Guard Museum", _
"Cobb Bldg", _
"Cobb Medical Center", _
"Coca-Cola Co", _
"Coe School", _
"Cogswell, Henrey College North", _
"Coleman Playground", _
"College Club Bldg", _
"College Inn Guest House", _
"Collins Bldg", _
"Colman Bldg", _
"Colman Dock", _
"Colman Park", _
"Colonial Christian School", _
"Columbia Bldg", _
"Columbia City", _
"Columbia City HSC", _
"Columbia City NH", _
"Columbia Health Center", _
"Columbia Library", _
"Columbia Park", _
"Columbia School", _
"Columbia Winery", _
"Comfort Inn", _
"Comm Chapel Christian School", _
"Commodore Motor Hotel", _
"Commodore Park", _
"Commons at Federal Way", _
"Commons at Issaquah", _
"Commons Playfield", _
"Community Bible Fellowship", _
"Community Bible Fellowship P&R", _
"Community Memorial Hospital", _
"Concord School", _
"Concordia Lutheran School", _
"Continental Bldg", _
"Contract High School", _
"Convention Center", _
"Convention Place Station", _
"Convention Place TS", _
"Convention Place Tunnel Station", _
"Cooper School", _
"Cornish College Kerry Hall", _
"Cornish College of the Arts", _
"Cottage Lake Park", _
"Cottage Lake School", _
"Cottonwood Grove", _
"Cougar Mountain Community Park", _
"Cougar Mountain Park", _
"Cougar Mtn Academy School", _
"Cougar Mtn Regional Wildland Park", _
"Cougar Ridge School", _
"Court Aukeen", _
"Court Bellevue", _
"Court Federal Way Municipal", _
"Court In The Square", _
"Court Issaquah", _
"Court KC", _
"Court MI", _
"Court NE", _
"Court Renton", _
"Court Seattle Municipal", _
"Court Shoreline", _
"Court SW", _
"Covey Run Winery", _
"Covington City Hall", _
"Covington Library", _
"Covington QFC", _
"Covington School", _
"Covington, Timberlane NH", _
"Cowen Park", _
"Crest Airpark", _
"Crestview Park", _
"Crestwood School", _
"Crestwoods Park", _
"Crossroads", _
"Crossroads QFC", _
"Crown Hill Cemetery", _
"Crown Hill NH", _
"Crown Hill QFC", _
"Crystal Springs Park", _
"Daniel School", _
"Daniels Creek Park", _
"Dash Point Highlands Park", _
"Dash Point School", _
"Dash Point State Park", _
"Data I/O Corp", _
"David E Brink Park", _
"Davis Park", _
"Day School", _
"Daybreak Star Center", _
"Dearborn Park", _
"Dearborn Park School", _
"Decatur High School", _
"Decatur School", _
"Delmar Bldg", _
"Delridge Playfield", _
"Delridge Public Library", _
"Denny Blaine Park", _
"Denny Bldg", _
"Denny Madrona Playground", _
"Denny Middle School", _
"Denny Park", _
"Denny Park Holmes Point", _
"Department of Licensing-Auburn", _
"Department of Licensing-Bellevue", _
"Department of Licensing-Burien", _
"Department of Licensing-Federal Way", _
"Department of Licensing-Greenwood", _
"Department of Licensing-Kirkland", _
"Department of Licensing-North Bend", _
"Department of Licensing-North District", _
"Department of Licensing-Renton", _
"Department of Licensing-Seattle", _
"Department of Licensing-West Seattle", _
"Des Moines  Chamber of Commerce", _
"Des Moines Beach Park", _
"Des Moines City Hall", _
"Des Moines Creek Park", _
"Des Moines Fieldhouse Park", _
"Des Moines Library", _
"Des Moines Memorial Park", _
"Des Moines Police Department", _
"Des Moines QFC", _
"Des Moines School", _
"Design Center Northwest", _
"Dexter Horton Bldg", _
"Dick Scobee School", _
"Dimmit A W Middle Jr High School", _
"Discovery Park", _
"Discovery School", _
"District Court - Aukeen", _
"District Court - Bellevue", _
"District Court - Issaquah", _
"District Court - Mercer Island", _
"District Court - Northeast", _
"District Court - Renton", _
"District Court - Shoreline", _
"District Court - Southwest", _
"Dockton Park", _
"DOL Aub", _
"DOL Bellevue", _
"DOL Burien", _
"DOL Fed Wy", _
"DOL Greenwood", _
"DOL Kirkland", _
"DOL N Bend", _
"DOL North", _
"DOL Renton", _
"DOL Seattle", _
"DOL W Seattle", _
"Don Armeni Park", _
"Doubletree Inn - Airport", _
"Doubletree Inn - Bellevue", _
"Doubletree Inn - Bellevue Center", _
"Doubletree Plaza Hotel", _
"Douglass-Truth Library", _
"Downtown Park", _
"Downtown Seattle HC", _
"Dr Rizal Park", _
"DSHS Auburn", _
"DSHS Ballard", _
"DSHS Belltown", _
"DSHS Burien", _
"DSHS Eastside", _
"DSHS Federal Way", _
"DSHS Kent", _
"DSHS North", _
"DSHS Rainier", _
"DSHS Renton", _
"DSHS White Center", _
"Dumas Bay Centre", _
"Dunlap School", _
"Duvall City Hall", _
"Duvall Library", _
"Duvall P&R", _
"Duvall Park", _
"Duwamish River Park", _
"Dykstra Park", _
"E J Roberts Park", _
"Earlington Park", _
"East District HC", _
"East Green River Park 5", _
"East Hill Park", _
"East Hill School", _
"East HSC", _
"East King County Convention & Visitors B", _
"East Norway Hill Park", _
"East Redmond QFC", _
"East Ridge School", _
"Eastgate Congregational Church", _
"Eastgate Interim (KC)", _
"Eastgate NH", _
"Eastgate P&R", _
"Eastgate Park", _
"Eastgate School", _
"Eastlake High School", _
"Eastside Catholic High School", _
"Eastside Christian School", _
"Eastside Hospital", _
"Echo Lake Park", _
"Echo Lake School", _
"Eckstein Middle School", _
"Econo Lodge", _
"Edgewater Inn", _
"Edith Moulton Park", _
"Edmonds Ferry Terminal", _
"Edmonds Station", _
"Einstein Middle School", _
"Elk Run Golf Course", _
"Elliott Bay Park", _
"Embassy Suites Hotel", _
"Emerald Downs", _
"Emerson School", _
"Emily Dickenson School", _
"Emma Schmitz Memorial Overlook Park", _
"EMP", _
"Employment Security Dept - Ballard", _
"Employment Security Dept - Bellevue", _
"Employment Security Dept - Belltown", _
"Employment Security Dept - Burien", _
"Employment Security Dept - Lake City", _
"Employment Security Dept - North Seattle", _
"Employment Security Dept - Rainier", _
"Employment Security Dept - Renton", _
"Empty Space Theater", _
"Enatai Park", _
"Enatai School", _
"Enchanted Village", _
"Endolyne Park", _
"Enumclaw Cemetary", _
"Enumclaw Chamber of Commerce", _
"Enumclaw Christian School", _
"Enumclaw City Hall", _
"Enumclaw County Park", _
"Enumclaw Golf Course", _
"Enumclaw High School", _
"Enumclaw Jr High School", _
"Enumclaw Library", _
"Enumclaw Pool", _
"Enumclaw QFC", _
"EPA", _
"Epiphany School", _
"Eton School", _
"Evans Pool", _
"Everest Park", _
"Evergreen Heights School", _
"Evergreen High School", _
"Evergreen Hospital", _
"Evergreen Jr High School", _
"Evergreen Park Cemetery", _
"Evergreen Point Bridge P&R", _
"Evergreen Point Freeway Station", _
"Evergreen Village", _
"Ewing Park", _
"Exchange Bldg", _
"Executive Inn", _
"Experience Music Project", _
"Factoria QFC", _
"Factoria Square Mall", _
"Fairfax Hospital", _
"Fairmount Park", _
"Fairmount Park School", _
"Fairmount Playground", _
"Fairview Christian School", _
"Fairweather Park", _
"Fairwood Assembly of God P&R", _
"Fairwood Golf & Country Club", _
"Fairwood Library", _
"Fairwood NH", _
"Fairwood QFC", _
"Fairwood School", _
"Fairwood Square", _
"Fall City Cemetery", _
"Fall City Library", _
"Fall City Memorial Park", _
"Fall City Riverfront Park", _
"Fall City School", _
"Farmers Park", _
"Farmers Park P&R", _
"Farrel-McWhirter Park", _
"Fauntleroy Ferry Terminal", _
"Fauntleroy Park", _
"Federal Bldg", _
"Federal Bldg, Henry M Jackson", _
"Federal Center South", _
"Federal Office Bldg (old)", _
"Federal Reserve Bank", _
"Federal Way Center", _
"Federal Way Chamber of Commerce", _
"Federal Way City Hall", _
"Federal Way HC", _
"Federal Way High School", _
"Federal Way HSC", _
"Federal Way Library", _
"Federal Way Municipal Court", _
"Federal Way P&R", _
"Federal Way QFC", _
"Federal Way Regional Library", _
"Federal Way Transit Center", _
"Federal Way Transit Center/P&R", _
"Felix Bldg", _
"Ferdinand St Playground", _
"Fernwood Park", _
"Ferry Terminal Fauntleroy", _
"Ferry Terminal Seattle", _
"Ferry Terminal Vashon", _
"FHCRC", _
"Fifth Ave NE/NE 133rd St P&R", _
"Fifth Avenue Theater", _
"Financial Center", _
"Finn Hill Jr High School", _
"Finn Hill NH", _
"Firdale Village", _
"Fire Department Museum", _
"First Hill Park", _
"First Hill Park in Seattle", _
"Fischer Studio Bldg", _
"Fisherman's Terminal", _
"Fishing Hole Park", _
"Five Mile Lake County Park", _
"Flaming Geyser State Park", _
"Flo Ware Park", _
"Foote E B Winery", _
"Forbes Creek Park", _
"Forest Glen Park", _
"Forest Hill Park", _
"Forest Lawn Cemetery", _
"Forest Ridge High School", _
"Fort Dent Park", _
"Fort Lawton Military Reservation", _
"Foster Golf Links", _
"Foster High School", _
"Foster Library", _
"Foster Park", _
"Four Corner Square", _
"Four Freedoms House", _
"Four Seasons Olympic Hotel", _
"Franklin High School", _
"Franklin High School Playfield", _
"Fred Hutchinson Cancer Research Center", _
"Fred Hutchinson Outpatient Clinic", _
"Fred Hutchinson Playground", _
"Fred Nelson Middle School", _
"Freeway Park", _
"Freeway Park 3", _
"Fremont Canal Park", _
"Fremont Library", _
"Fremont NH", _
"French Creek Cellars", _
"Frink Park", _
"Froula Playground", _
"Frye Art Museum", _
"Fulmer Field", _
"FWTC", _
"Galland & Seneca Bldg", _
"Game Farm Wilderness Park", _
"Garfield High School", _
"Garfield Playground", _
"Garrison Creek Park", _
"Gary Grant Soos Creek Park", _
"Gas Works Park", _
"Gateway Center", _
"Gateway QFC", _
"Gatewood School", _
"Gatzert School", _
"Gene Coulon Memorial Beach Park", _
"Genesee Hill School", _
"Genesee Playground", _
"Georgetown NH", _
"Georgetown Playground", _
"Gethsemane Cemetery", _
"GH Bothell", _
"GH Burien", _
"GH Central", _
"GH Downtown Seattle", _
"GH Eastside", _
"GH Factoria", _
"GH Federal Way", _
"GH Northgate", _
"GH Rainier", _
"GH Redmond", _
"GH Renton", _
"Gibson Park", _
"Gildo Rey School", _
"Gilman Playground", _
"Gilman Village", _
"Glen Acres Golf Course", _
"Glenco Park", _
"Glendale Golf & Country Club", _
"Glenn Nelson Park", _
"Globe Office Center", _
"Goldcreek County Park", _
"Golden Gardens Park", _
"Goldsmith Bldg", _
"Goldsmith Park", _
"Golf Club at Newcastle", _
"Goodard Park", _
"Grace Lutheran Church P&R", _
"Graham Hill Playground", _
"Graham Hill School", _
"Grain Terminal", _
"Grand Central on the Park Bldg", _
"Grandview Park", _
"Grass Lake School", _
"Grass Lawn Park", _
"Gray Line of Seattle", _
"GRCC", _
"Great Northern Railway Bldg", _
"Great Northwest Factory Stores", _
"Greater Highland Center", _
"Green Gables School", _
"Green Lake Library", _
"Green Lake Motel", _
"Green Lake NH", _
"Green Lake P&R", _
"Green Lake Park", _
"Green Lake Park West", _
"Green Lake School", _
"Green River Comm Coll", _
"Green River Community College", _
"Green River Montessori School", _
"Green River ROW Park", _
"Green River Surgical Center", _
"Green Tree Park", _
"Greenwood Cemetery", _
"Greenwood Library", _
"Greenwood NH", _
"Greenwood School", _
"Gregory Heights School", _
"Greyhound Bus Depot", _
"Grosvenor House", _
"Group Health - Bothell", _
"Group Health - Burien", _
"Group Health - Central Co-op Hospital", _
"Group Health - Downtown Seattle", _
"Group Health - East Marginal", _
"Group Health - Eastside Hospital", _
"Group Health - Factoria", _
"Group Health - Federal Way", _
"Group Health - Northgate", _
"Group Health - Rainier", _
"Group Health - Redmond", _
"Group Health - Renton", _
"Groveland Park", _
"GSA Park", _
"GSA Regional Offices", _
"Haller Lake Playground", _
"Hamilin Park", _
"Hamilton Middle School", _
"Hamilton View Park", _
"Harbor Island", _
"Harbor Island NH", _
"Harborview Medical Center", _
"Harold H. Heath Professional Bldg", _
"Hartford Bldg", _
"Harvard Market QFC", _
"Hatchery Park", _
"Hawthorne School", _
"Hazel Valley Park", _
"Hazel Valley School", _
"Hazelnut Park", _
"Hazelwood Park", _
"Hazelwood School in Auburn", _
"Hazelwood School in Newcastle", _
"HCC", _
"Health Center - Downtown Seattle", _
"Health Center - East District", _
"Health Center - Federal Way", _
"Health Center - Northshore", _
"Health Service Center - Auburn", _
"Health Service Center - Central", _
"Health Service Center - Columbia City", _
"Health Service Center - East", _
"Health Service Center - Federal Way", _
"Health Service Center - North", _
"Health Service Center - Southeast", _
"Health Service Center - Southwest", _
"Heatherdowns Park (Site)", _
"Heazel Memorial Park", _
"Helen Keller School", _
"Henry Art Gallery", _
"Henry David Thoreau School", _
"Heritage Christian School", _
"Heritage High School", _
"Heritage Inn - Airport", _
"Heritage School", _
"Hiawatha Playground", _
"Hidden Valley Park", _
"High Point Library", _
"High Point School", _
"Highland Middle School", _
"Highland Park Playground", _
"Highland Park School", _
"Highland Terrace School", _
"Highlands Library", _
"Highlands Park in Kirkland", _
"Highlands Park in Renton", _
"Highlands School", _
"Highlands School in Renton", _
"Highline Community College", _
"Highline Community Hospital", _
"Highline High School", _
"Highline Riverton Community Hospital", _
"Highline Specialty Center", _
"Highpoint Playground", _
"Hillaire Park", _
"Hillcrest Burial Park Cemetery", _
"Hillgrove Cemetery", _
"Hillside Plaza", _
"Hilltop Park", _
"Hilltop Red Apple Market", _
"Hilltop School", _
"Hillwood Park", _
"Hilton - Airport", _
"Hilton - Bellevue", _
"Hilton - Seattle", _
"Hing Hay Park", _
"Hiram M Chittenden Locks", _
"Hobart Cemetary", _
"Hoge Bldg", _
"Holiday Inn - Airport", _
"Holiday Inn - Bellevue", _
"Holiday Inn - Crowne Plaza", _
"Holiday Inn - Duwamish", _
"Holiday Inn - Issaquah", _
"Holiday Inn - Renton", _
"Hollywood Hill School", _
"Holman Road QFC", _
"Holy Family Church P&R", _
"Holy Family Krain Cemetary", _
"Holy Family School in Auburn", _
"Holy Family School in Kirkland", _
"Holy Family School in Seattle", _
"Holy Names Academy", _
"Holy Rosary School", _
"Holy Spirit Lutheran Church P&R", _
"Holyrood Cemetery", _
"Home of the Good Shepherd", _
"Homestead Field", _
"Horace Mann School", _
"Horizon School", _
"Horizon View Park", _
"Hosp Ballard Swedish", _
"Hosp Eastside", _
"Hosp UW", _
"Hosp VA", _
"Hotel Monaco", _
"Houghton Beach Park", _
"Houghton Freeway Station", _
"Houghton P&R", _
"Howe St Playground", _
"Howell Park", _
"HUB", _
"HUD", _
"Hughes Playground", _
"Hughes School", _
"Hunts Point City Hall", _
"Hunts Point Park", _
"Husky Stadium", _
"Hyatt Regency-Bellevue", _
"Hylebos State Park", _
"I5/NE 145th Freeway Station", _
"I-5/NE 65th St. Green Lake P&R", _
"I-5/NE 65th St./Green Lake (S)", _
"IBM Office Bldg", _
"IDX Tower", _
"Idylwood Park", _
"IKEA", _
"Ilalko School", _
"Illahee Jr High School", _
"Indian Cultural Center", _
"Indian Tom Park", _
"Industrial Skills", _
"Inglemoor County Park", _
"Inglemoor High School", _
"Inglewood Country Club", _
"Inglewood Jr High School", _
"Inglewood QFC", _
"Ingraham High School", _
"Inn at Virginia Mason", _
"Insurance Center Bldg", _
"Interbay Athletic Field", _
"Interbay Golf Course", _
"Interbay QFC", _
"Interlake High School", _
"Interlaken Park", _
"Internal Revenue Service", _
"International District", _
"International District Library", _
"International District Station", _
"International District TS", _
"International District Tunnel Station", _
"International School", _
"Interurban Bldg", _
"Intiman Theater", _
"IRS", _
"Island Crest Park", _
"Island Park School", _
"Islander Middle Jr High School", _
"Issaquah Cemetery", _
"Issaquah Chamber of Commerce", _
"Issaquah City Hall", _
"Issaquah High School", _
"Issaquah Highlands Interim P & R", _
"Issaquah Highlands P&R", _
"Issaquah Library", _
"Issaquah Middle School", _
"Issaquah P&R", _
"Issaquah QFC", _
"Issaquah Valley School", _
"Ivanhoe Park", _
"Jackson Bldg", _
"Jackson Park Golf Course", _
"Japanese Teahouse", _
"Jefferson High School", _
"Jefferson Park Golf Course", _
"Jefferson Square", _
"Jenkins Creek Park", _
"Jenkins Creek School", _
"Jet Motel - Airport", _
"Jewish Day School", _
"JJ Smith School", _
"John F Kennedy Private High School", _
"John Hay Playground", _
"John Hay School", _
"John Muir School in Kingsgate", _
"John Muir School in Seattle", _
"John Rogers School", _
"Johnathan Hartman Park", _
"Jones Bldg", _
"Joseph Foster Memorial Park", _
"Joseph Vance Bldg", _
"Joshua Green Bldg", _
"Juanita Bay Park", _
"Juanita High School", _
"Juanita School", _
"Justice Dept - US Attorney", _
"Juvenile Court & Youth Center", _
"Juvenile Hall", _
"Kaibara Park", _
"Kamiakin Jr High School", _
"Kathryn C Lewis Park", _
"KC Admin", _
"KC Development and Environmental Svcs", _
"KC Fairgrounds", _
"KCAC", _
"Keeney Park", _
"Kellogg Middle School", _
"Kelsey Creek Park", _
"Kenmore Air", _
"Kenmore Air Harbor Inc", _
"Kenmore Community Church", _
"Kenmore Jr High School", _
"Kenmore Library", _
"Kenmore P&R", _
"Kenmore School", _
"Kenneth Jones Pool", _
"Kennydale Beach Park", _
"Kennydale Lions Park", _
"Kennydale School", _
"Kennydale United Methodist P&R", _
"Ken's Market-Greenwood", _
"Ken's Market-Queen Anne", _
"Kent Chamber of Commerce", _
"Kent City Hall", _
"Kent Covenant Church P&R", _
"Kent Des Moines P&R", _
"Kent Desmoines Freeway Station", _
"Kent East Hill NH", _
"Kent Garage at Kent Station (ST)", _
"Kent Hill Plaza", _
"Kent Jr High School", _
"Kent Memorial Park", _
"Kent Meridian High School", _
"Kent P&R", _
"Kent Plaza", _
"Kent Regional Library", _
"Kent School", _
"Kent Sounder Station", _
"Kent Station", _
"Kent Station Garage P&R", _
"Kent Station Surface Lot P&R", _
"Kent Surface Lot at Kent Station (ST)", _
"Kent TC", _
"Kent Teen Clinic", _
"Kent Transit Center", _
"Kent United Methodist Church P&R", _
"Kent View Christian High School", _
"Kent View Christian School", _
"Kent West Cont High School", _
"Kent West Mall", _
"Kent/Des Moines P&R (KC)", _
"Kentlake High School", _
"Kentridge High School", _
"Kentwood High School", _
"Kenworth Northwest Inc.", _
"Keough Park", _
"Kerry Park", _
"Key Arena", _
"Key Bank Tower", _
"Key Tower", _
"KeyArena", _
"Kidney Center", _
"Killarney Glen Park", _
"Kilo Jr High School", _
"Kimball School", _
"King County Administration Bldg", _
"King County Adult Correctional Facility", _
"King County Aquatic Center", _
"King County Courthouse", _
"King County Fairgrounds", _
"King County Housing Authority", _
"King County Jail", _
"King of Glory Church P&R", _
"King Street Center", _
"King Street Station", _
"Kings Garden Incorporation", _
"Kings High School", _
"Kings School", _
"Kingsgate Freeway Station Northbound", _
"Kingsgate Freeway Station Southbound", _
"Kingsgate Library", _
"Kingsgate NH", _
"Kingsgate P&R", _
"Kingsgate Park", _
"Kinnear Park", _
"Kirkland Cemetery", _
"Kirkland Chamber of Commerce", _
"Kirkland City Hall", _
"Kirkland Jr High School", _
"Kirkland Library", _
"Kirkland Park Place", _
"Kirkland Parkplace", _
"Kirkland QFC", _
"Kirkland SDA School", _
"Kirkland Transit Center", _
"Kirstine M Burger Park", _
"Kiwanis Bicentennial Air Park", _
"Kiwanis Memorial Park", _
"Kiwanis Park 10th SW", _
"Kiwanis Park 98th Ave S", _
"Kiwanis Park Crest Ave", _
"Kiwanis Park in Burien", _
"Kiwanis Park in Renton", _
"Kiwanis Park N 2nd", _
"Kiwanis Park S 1st", _
"Kiwanis Park S 5th", _
"Klahanie #1", _
"Klahanie #1 P&R", _
"Klahanie #3 P&R", _
"Klahanie QFC", _
"Klondike Gold Rush National Park", _
"Kmart Plaza Center", _
"KNTC", _
"Kobe Park Bldg", _
"Kobe Terrace Park", _
"Korean Zion Presbyterian Church P&R", _
"KSC", _
"KTC", _
"Kubota Gardens", _
"La Plaza East", _
"La Quinta Inn - Airport", _
"La Quinta Inn - Bellevue", _
"Labor Temple", _
"Lafayette School", _
"Lagoon Park", _
"Lake Boren Park", _
"Lake City Chamber of Commerce", _
"Lake City Library", _
"Lake City NH", _
"Lake City Park", _
"Lake City QFC", _
"Lake Dolloff School", _
"Lake Fenwick Park", _
"Lake Forest Park Center", _
"Lake Forest Park City Hall", _
"Lake Forest Park Library", _
"Lake Forest Park Montessori Academy", _
"Lake Forest Park School", _
"Lake Francis Park", _
"Lake Geneva Park", _
"Lake Grove Park", _
"Lake Grove School", _
"Lake Hills Center", _
"Lake Hills Community Center Playground", _
"Lake Hills Greenbelt Park", _
"Lake Hills Library", _
"Lake Hills Park", _
"Lake Hills School", _
"Lake Meridian Marketplace", _
"Lake Meridian P&R", _
"Lake Meridian Park", _
"Lake Sammamish State Park", _
"Lake Sawyer Park", _
"Lake Street Park", _
"Lake Union Bldg", _
"Lake Union Plaza", _
"Lake Washington Christian Church P&R", _
"Lake Washington High School", _
"Lake Washington Park", _
"Lake Washington Technical College", _
"Lake Wilderness Golf Course", _
"Lake Wilderness Park", _
"Lake Wilderness School", _
"Lake Youngs Park", _
"Lake Youngs School", _
"Lakeland School", _
"Lakeridge Park", _
"Lakeridge School in Mercer Island", _
"Lakeridge School in Skyway", _
"Lakeside High School", _
"Lakeside Middle School", _
"Lakeview Cemetery", _
"Lakeview Medical Dental Center", _
"Lakeview Park in Burien", _
"Lakeview Park in Seattle", _
"Lakeview School in Auburn", _
"Lakeview School in Kirkland", _
"Lakewood Park", _
"Lakota Jr High School", _
"Lakota Park", _
"Lander Street Annex", _
"Landsburg Park", _
"Langstons Landing", _
"Latona School", _
"Laurelhurst Playfield", _
"Laurelhurst School", _
"Lavizzo Park", _
"Lawton Park", _
"Lawton School", _
"Lea Hill School", _
"Lenora 1000 Bldg", _
"Leota Jr High School", _
"Les Gove Museum Park", _
"Leschi Park", _
"Leschi School", _
"Levdansky Park", _
"Liberty High School", _
"Liberty Park", _
"Licensing Dept - Auto Plates, KC Admin B", _
"Licton Springs Park", _
"Lincoln Center East", _
"Lincoln Park", _
"Lincoln School Facility", _
"Linda Heights Park", _
"Lindbergh High School", _
"Linwood Park", _
"Little School", _
"Lloyd Bldg", _
"Lockwood School", _
"Loehmanns Plaza", _
"Logan Bldg", _
"Louisa May Alcott School", _
"Love Bldg", _
"Lowell School", _
"Lowell School Playground", _
"Lower Talbot Hill Park", _
"Lowery C 'Pops' Mounger Pool", _
"Lowman Beach Park", _
"Lowman Bldg", _
"Loyal Heights Playfield", _
"Loyal Heights School", _
"Loyal Inn", _
"Luther Burbank Park", _
"Lutheran Bible Institute", _
"LWTC", _
"Lyon Bldg", _
"MacDonald Memorial Park", _
"Madison Middle School", _
"Madison Park", _
"Madison Renaissance Hotel", _
"Madrona Park", _
"Madrona Playground", _
"Madrona School", _
"Madrona School in SeaTac", _
"Madrona-Sally Goodmark Library", _
"Magnolia Library", _
"Magnolia NH", _
"Magnolia Park", _
"Magnuson Park", _
"Mail Box West", _
"Manhattan QFC", _
"Maple Hills School", _
"Maple Leaf NH", _
"Maple School", _
"Maple Valley Heights Park", _
"Maple Valley High School", _
"Maple Valley Library", _
"Maple Valley P&R", _
"Maple Valley School", _
"Maple Wood Playground", _
"Mapleleaf Playground", _
"Maplewood Golf Course", _
"Maplewood Heights Park", _
"Maplewood Heights School", _
"Maplewood Park", _
"Maplewood Roadside Park", _
"Margaret Mead School", _
"Marina Mart", _
"Marina Park", _
"Marine View Park", _
"Marion Bldg", _
"Marion Oliver McCaw Hall", _
"Maritime Bldg", _
"Mark Twain Park", _
"Mark Twain School in Des Moines", _
"Mark Twain School in Kirkland", _
"Market Square", _
"Market Square Park", _
"Marketime Foods", _
"Marriot Residence Inn - Bellevue", _
"Marriot Residence Inn - Bothell", _
"Marriot Residence Inn - Sea Tac", _
"Marriot Residence Inn - Tukwila", _
"Marsh & McLennan Bldg", _
"Marsh Park", _
"Marshall Alternative High School", _
"Martin Johnson Park", _
"Martin Luther King Memorial Park", _
"Marvista School", _
"Marymoor Museum", _
"Marymoor Park", _
"Marymoor Park East", _
"Matthews Beach Park", _
"Mattson Jr High School", _
"May Creek Park", _
"Mayfair Park", _
"Mayflower Park Hotel", _
"Maywood Hills School", _
"Maywood Middle School", _
"McCaw Hall", _
"McClure Middle School", _
"McCormick Park in Bellevue", _
"McCormick Park in Shoreline", _
"McFarland Park", _
"McGilvra School", _
"McKnight Playground", _
"McKnight-John Middle School", _
"McLendon Hardware Inc", _
"McMicken Heights Park", _
"McMicken Heights School", _
"McMurray Intermediate School", _
"Meadow Park", _
"Meadowbrook Playfield", _
"Meany Middle School", _
"Meany Playground", _
"Meany Tower Hotel", _
"Medical Dental Bldg", _
"Medina City Hall", _
"Medina School", _
"Medina South Park", _
"Mee Kwa Mooks Park", _
"Meeker Jr High School", _
"Meeker QFC", _
"Melbourne Tower", _
"Memorial Park", _
"Memorial Stadium", _
"Mercer Is United Methodist Church P&R", _
"Mercer Island Chamber of Commerce", _
"Mercer Island City Hall", _
"Mercer Island High School", _
"Mercer Island Library", _
"Mercer Island P&R", _
"Mercer Island Presbyterian Church P&R", _
"Mercer Island QFC", _
"Mercer Middle School", _
"Mercer Slough Park", _
"Mercer, Asa Middle School", _
"Mercerdale Playfield", _
"Meridian Cemetary", _
"Meridian Elementary School", _
"Meridian Jr High School", _
"Meridian Park", _
"Meridian Playground", _
"Meridian QFC", _
"Meridian School", _
"Meridian Valley Golf & Country Club", _
"Metro CSO", _
"Metro Customer Stop", _
"Metro Transit Accessible Services", _
"Metro Transit Lost and Found", _
"Metropole Bldg", _
"Metropolitan Park Bldg", _
"Metzler/O'Grady Park", _
"Meydenbauer Center", _
"Meydenbauer Park", _
"Microsoft Corporation-Issaquah", _
"Microsoft Corporation-Redmond", _
"Microsoft Corporation-Redmond West", _
"Midway QFC", _
"Midway School", _
"Mill Creek Park", _
"Mill Pond Park", _
"Miller Playground", _
"Milwaukee Playfield", _
"Mini Park", _
"Minor School", _
"Mirror Lake Park", _
"Mirror Lake School", _
"MOF", _
"MOHAI", _
"Montessori House School", _
"Montessori of Kirkland School", _
"Montgomery Park", _
"Montlake Freeway Station", _
"Montlake Library", _
"Montlake Park", _
"Montlake School", _
"Moore Theater", _
"Moorlands Playfield", _
"Moorlands School", _
"Morningside Park", _
"Moshier Memorial Park", _
"Moshier Park", _
"Motel 6 - Airport", _
"Mounger Pool", _
"Mount Baker NH", _
"Mount Baker Park", _
"Mount Olivet Cemetery", _
"Mount Pleasant Cemetery", _
"Mount Rainier High School", _
"Mount Si Golf Course", _
"Mount View School", _
"Mountain View Cemetery", _
"Mountain View Golf Course", _
"MS Issaquah", _
"MS Redmond", _
"Mt Si High School", _
"Mt Si Memorial Park", _
"Muckleshoot Indian Casino", _
"Muckleshoot Indian Cemetery", _
"Muckleshoot Library", _
"Museum of Flight", _
"Museum of History and Industry", _
"Museum of Sea & Ships", _
"Myrtle Edwards Park", _
"Naden Park", _
"Naramore Fountain Park", _
"Narrows Park", _
"Nathan Hale High School", _
"National Archives and Records Admin", _
"National Guard Armory", _
"National Park Service", _
"Nativity Lutheran Church P&R", _
"Nature Trails Park", _
"Nautilus School", _
"Naval Reserve Armory", _
"NE 116th P&R", _
"NE 12th St Greenbelt", _
"NE Goldsmith Park", _
"NE Sammamish Neighborhood Park", _
"NE Vashon Park", _
"Neely Obrien School", _
"Neighborhood Christian School", _
"Nendel's Inn", _
"Neptune Bldg", _
"New Life Church @ Renton", _
"New Life Church at Renton P&R", _
"Newcastle Cemetery", _
"Newcastle Chamber of Commerce", _
"Newcastle City Hall", _
"NewHolly Library", _
"Newmark", _
"Newport Covenant Church P&R", _
"Newport Heights School", _
"Newport High School", _
"Newport Hills Community Church", _
"Newport Hills Community Church P&R", _
"Newport Hills NH", _
"Newport Hills P&R", _
"Newport Hills Park", _
"Newport Way Library", _
"NG Mall East Side", _
"NG Mall West Side", _
"NG Totem Pole", _
"NG Village", _
"NGTC", _
"Nintendo of America", _
"NOAA Admin Office", _
"Nolte State Park", _
"Nordic Heritage Museum", _
"Nordstrom Federal CU", _
"Nordstrom Medical Tower", _
"Norman Rockwell School", _
"Normandy Park", _
"Normandy Park City Hall", _
"Normandy Park Congregational P&R", _
"North Acres Park", _
"North Beach NH", _
"North Beach School", _
"North Bend City Hall", _
"North Bend Library", _
"North Bend QFC", _
"North Bend School", _
"North Benson Center", _
"North City Park", _
"North City School", _
"North Creek NH", _
"North East Library", _
"North Green River Park", _
"North Highlands Park", _
"North Hill School", _
"North HSC", _
"North Jackson Park P&R", _
"North Kirkland Community Center Park", _
"North Mercer QFC", _
"North Meridian Park", _
"North Rose Hill Park", _
"North Seatac Park", _
"North Seattle Christian Jr High School", _
"North Seattle Christian School", _
"North Seattle Community College", _
"North Seattle P&R", _
"North Seattle Park", _
"North Seattle QFC", _
"North Shorewood Park", _
"North Towne Park", _
"North Towne QFC", _
"Northcrest Park", _
"Northeast 116th & I-405 (S)", _
"Northgate Mall  Totem Pole", _
"Northgate Mall East", _
"Northgate Mall West", _
"Northgate NH", _
"Northgate North Garage", _
"Northgate North Garage P&R", _
"Northgate P&R", _
"Northgate P&R (KC)", _
"Northgate Plaza", _
"Northgate QFC", _
"Northgate School", _
"Northgate TC Extension (KC)", _
"Northgate TC Extension Carpool (KC)", _
"Northgate Transit Center", _
"Northgate Transit Center East P&R", _
"Northgate Transit Center P&R", _
"Northgate Village", _
"Northshore Chamber of Commerce", _
"Northshore HC", _
"Northshore Jr High School", _
"Northshore Senior Center", _
"Northup P&R", _
"Northwest Community Center (Park)", _
"Northwest High School", _
"Northwest Hospital", _
"Northwest Industrial Bldgs", _
"Northwest Kidney Center", _
"Northwest Medical Bldg", _
"Northwest Montessori School", _
"Northwest Rooms", _
"Northwest University", _
"Norton Bldg", _
"Novelty Cemetary", _
"NSCC", _
"NW Factory Stores", _
"NW Hospital", _
"NW Medical Bldg", _
"NWU", _
"Oak Tree Village Center", _
"Ober Park", _
"Ober Park Annex (Vashon Parks Dept)", _
"Ober Park Annex P&R", _
"Ober Park P&R", _
"Occidental Park", _
"Occidental Square", _
"Oceanic Bldg", _
"Odea High School", _
"Odle Middle School", _
"Off Campus High School", _
"O'Grady Park", _
"Old Mill Town", _
"Old Ship Museum", _
"Oliver M Hazen High School", _
"Olson Myers P&R", _
"Olson Pl SW/Myers Way P&R", _
"Olson Place/Myers Way P&R", _
"Olympic Bldg", _
"Olympic Hills School", _
"Olympic Jr High School", _
"Olympic School", _
"Olympic View Park", _
"Olympic View School in Federal Way", _
"Olympic View School in Seattle", _
"Olympus Northwest Middle School", _
"One Bellevue Center", _
"One Renton Place", _
"One Union Square", _
"Opstad School", _
"O'Shea Bldg", _
"OTC", _
"Othello Playground", _
"Our Lady of Fatima School", _
"Our Lady of Guadalupe School", _
"Our Lady of Lourdes School", _
"Our Lady of the Lake School", _
"Our Savior Lutheran Church P&R", _
"Our Saviour's Baptist Church P&R", _
"Overlake East Center", _
"Overlake Fashion Plaza", _
"Overlake Golf & Country Club", _
"Overlake High School", _
"Overlake Hospital & Medical Center", _
"Overlake Industrial Area", _
"Overlake Industrial Area - Microsoft", _
"Overlake Jr High School", _
"Overlake Medical Center Issaquah", _
"Overlake P&R", _
"Overlake TC at NE 40th St", _
"Overlake Transit Center", _
"Overlake Transit Center P&R", _
"Pac Med Central", _
"Pac Med North", _
"Pac Med South", _
"Paccar", _
"Pacific Bldg", _
"Pacific City Hall", _
"Pacific City Park", _
"Pacific First Center", _
"Pacific Hotel", _
"Pacific Library", _
"Pacific Lutheran Cemetery", _
"Pacific Medical Center - Central", _
"Pacific Medical Center - North", _
"Pacific Medical Center - South", _
"Pacific Middle School", _
"Pacific Place", _
"Pacific Plaza", _
"Pacific Science Center", _
"Palisades Park", _
"Palmer State Park", _
"Panther Lake Center", _
"Panther Lake School in Federal Way", _
"Panther Lake School in Kent", _
"Paradise Valley Cemetery", _
"Paramount Theater Bldg", _
"Park Orchard", _
"Park Orchard School", _
"Park Place Bldg", _
"Park Site", _
"Parkside Park", _
"Parkside School", _
"Parkside Wetlands", _
"Parkway Plaza", _
"Parkwood School", _
"Parsons Garden", _
"Passport Office", _
"Paul Thomas Winery", _
"Pavilion Mall", _
"Pea Patch Park", _
"Peasley Canyon Rd/West Valley Hwy", _
"Peasley Canyon Rd/West Valley Hwy P&R", _
"Pedestrian Park", _
"Pegasus School", _
"Perkins School", _
"Perrigo Community Park", _
"Peter Kirk Building", _
"Peter Kirk Park", _
"Peter Kirk School", _
"Peter Saar Cemetary", _
"Petrovitsky Park", _
"Phantom Lake School", _
"Phillip Arnold Park", _
"Physio-Control Corp", _
"Pickering Place Shopping Center", _
"Pier 102", _
"Pier 105", _
"Pier 106", _
"Pier 107", _
"Pier 108", _
"Pier 115", _
"Pier 128", _
"Pier 18", _
"Pier 25", _
"Pier 30", _
"Pier 36", _
"Pier 37", _
"Pier 42", _
"Pier 46", _
"Pier 48", _
"Pier 5", _
"Pier 50", _
"Pier 52", _
"Pier 54", _
"Pier 55", _
"Pier 56", _
"Pier 57", _
"Pier 59", _
"Pier 62", _
"Pier 63", _
"Pier 66", _
"Pier 67", _
"Pier 69", _
"Pier 7", _
"Pier 70", _
"Pier 70 Shopping Center", _
"Pier 86", _
"Pier 88", _
"Pier 89", _
"Pier 90", _
"Pier 91", _
"Pike Place Market", _
"Pikes Peak Greenbelt Park", _
"Pine Lake Middle School", _
"Pine Lake Park", _
"Pine Lake QFC", _
"Pine Tree Park", _
"Pine Tree School", _
"Pinehurst Playground", _
"Pioneer Bldg", _
"Pioneer School", _
"Pioneer Square", _
"Pioneer Square Station", _
"Pioneer Square TS", _
"Pioneer Square Tunnel Station", _
"Plaza 600", _
"PO Central", _
"PO Terminal Station", _
"Polson Bldg", _
"Polyclinic", _
"Pontius & John Center", _
"Port of Seattle Headquarters", _
"Post Intelligencer Bldg", _
"Post Office - Central", _
"Post Office - Terminal Station", _
"Pound Kent", _
"Pound Redmond", _
"Pound Seattle", _
"Powell Barnett Playground", _
"Pratt Park", _
"Prefontaine Bldg", _
"Preston Cemetary", _
"Preston P&R", _
"Preston Park", _
"Prince of Peace Lutheran Church", _
"Prince of Peace Lutheran Church P&R", _
"Private Park", _
"Promenade Market", _
"Providence Medical Center", _
"Public Boat Launch", _
"Public Boat Launch & Fishing Area", _
"Public Fishing Rec Area", _
"Public Safety Building", _
"Puget Park", _
"Puget Sound Plaza", _
"Quality Inn at Seatac", _
"Queen Anne Library", _
"Queen Anne NH", _
"Queen Anne QFC", _
"Qwest Field", _
"Qwest Field Event Center", _
"Radisson Hotel - Airport", _
"Rafter Park", _
"Railroad Park", _
"Rainier Bank Tower and Square", _
"Rainier Beach High School", _
"Rainier Beach Library", _
"Rainier Beach NH", _
"Rainier Beach QFC", _
"Rainier Golf & Country Club", _
"Rainier Jr High School", _
"Rainier QFC", _
"Rainier Valley Christian School", _
"Rainier Valley NH", _
"Rainier View School in Federal Way", _
"Rainier View School in Skyway", _
"Ramada Inn Northgate", _
"Ramada Inn Seattle", _
"Ranke Bldg", _
"Ravenna Blvd Office Bldg", _
"Ravenna Park", _
"Ravensdale Cemetary", _
"Ravensdale Park", _
"Recreation Area", _
"Redhook Ale Brewery", _
"Redmond Center", _
"Redmond Chamber of Commerce", _
"Redmond Christian Jr High School", _
"Redmond Christian School", _
"Redmond City Hall", _
"Redmond High School", _
"Redmond Jr High School", _
"Redmond Library", _
"Redmond P&R", _
"Redmond QFC", _
"Redmond School", _
"Redmond Town Center", _
"Redondo Park", _
"Redondo Square", _
"Regional Justice Center", _
"REI", _
"Renton Airport", _
"Renton Alternative High School", _
"Renton Boeing Lot 10", _
"Renton Center", _
"Renton Chamber of Commerce", _
"Renton Christian School", _
"Renton City Hall", _
"Renton City Municipal Garage", _
"Renton First Baptist Church P&R", _
"Renton Fish and Game Club", _
"Renton Fred Meyer P&R", _
"Renton High School", _
"Renton Highlands NH", _
"Renton Highlands P&R", _
"Renton Historical Museum", _
"Renton Main Library", _
"Renton Memorial HS Stadium", _
"Renton P&R (KC)", _
"Renton Park", _
"Renton Park School", _
"Renton QFC", _
"Renton Technical College", _
"Renton Transit Center", _
"Renton Transit Center P&R", _
"Renton Village Center", _
"Reservoir Park", _
"Richmond Beach Center", _
"Richmond Beach Library", _
"Richmond Beach Park", _
"Richmond Beach QFC", _
"Richmond Highlands Park", _
"Richmond Reserve Park", _
"Ridgecrest Park", _
"Ridgecrest School", _
"Ridgewood School", _
"Riverbend Golf Complex", _
"Riverton Crest Cemetery", _
"Riverton Heights School", _
"Riverton Hospital", _
"Riverview Playfield", _
"RJC", _
"Roadside Park & Viewpoint", _
"Roanoke Park", _
"Roanoke Park-Mercer Island", _
"Robert Frost School", _
"Robinson Point Park", _
"Robinswood Park", _
"Robinswood School", _
"Rodgers Park", _
"Roger Playground", _
"Ronald Bog Park", _
"Roosevelt High School", _
"Roosevelt Hotel", _
"Roosevelt QFC", _
"Rose Hill Jr High School", _
"Rose Hill Presbyterian Church P&R", _
"Rose Hill School", _
"Ross Plaza", _
"Rotary Park in Auburn", _
"Rotary Park in Mercer Island", _
"Rox Hill Park", _
"Roxhill School", _
"Royal Brougham Pavilion", _
"RTC", _
"Russell Road Park", _
"RVT", _
"Rxtra Care Pharmacy", _
"S Bellevue P&R", _
"S Kirkland P&R", _
"S Mercer Center LLC @ Mercer Island QFC", _
"S Mercer Island P&R", _
"SAAM", _
"Sacajawea Jr High School", _
"Sacajawea Park", _
"Sacajawea Playground", _
"Sacajawea School", _
"Sacred Heart Church of Enumclaw P&R", _
"Sacred Heart School", _
"Safeco Corp", _
"Safeco Field", _
"Safeco Plaza Tower", _
"Safeway Admin & Distrib Center", _
"Saghalie Junior High School", _
"Sahalee Golf & Country Club", _
"Saint Edward State Park", _
"Saint Patricks Cemetery", _
"Salmon Bay Park", _
"Salmon Creek Park", _
"Salmon Creek School", _
"Saltwater State Park", _
"SAM", _
"Samantha Smith School", _
"Sammamish City Hall", _
"Sammamish High School", _
"Sammamish Highlands Center", _
"Sammamish Hills Lutheran Church P&R", _
"Sammamish Library", _
"Sammamish River Regional Park", _
"Sammamish River Trail ROW", _
"Sammamish River Trail ROW - Bothell", _
"Sand Point Country Club", _
"Sand Point School", _
"Sandel Playground", _
"Sanislo School", _
"SCC", _
"SCCA", _
"SCCC", _
"Scenic Hill Park", _
"Scenic Hill School", _
"Schick's Shadel", _
"Schmitz Park", _
"Schmitz Park School", _
"School District Facility", _
"Science Center", _
"Scootie Brown Park", _
"SDC", _
"Seacrest Marina Park", _
"SeaFirst Fifth Ave Plaza", _
"Seahawk Stadium", _
"Seahawks Stadium", _
"Seahurst Park", _
"Seahurst School", _
"Sealth High School", _
"Seatac", _
"SeaTac Airport", _
"Sea-Tac Airport", _
"SeaTac City Hall", _
"Sea-Tac Crest Motel Inn - Airport", _
"Seatac Mall", _
"Sea-Tac Office Center", _
"Seatac Village", _
"Seattle Alternative High School", _
"Seattle Animal Shelter", _
"Seattle Art Museum", _
"Seattle Asian Art Museum", _
"Seattle Baptist High School", _
"Seattle Baptist School", _
"Seattle Cancer Care Alliance", _
"Seattle Center East", _
"Seattle Center Pavillion", _
"Seattle Center South", _
"Seattle Center West", _
"Seattle Central Community College", _
"Seattle Central Library", _
"Seattle Chamber of Commerce", _
"Seattle Christian High School", _
"Seattle Christian School", _
"Seattle City Hall", _
"Seattle City Light", _
"Seattle Country Day School", _
"Seattle Design Center", _
"Seattle Eye Clinic", _
"Seattle Ferry Terminal", _
"Seattle Golf & Country Club", _
"Seattle Hebrew School", _
"Seattle Housing Authority", _
"Seattle Inn", _
"Seattle International Raceway", _
"Seattle International Trade Center", _
"Seattle Justice Center", _
"Seattle Lutheran High School", _
"Seattle Municipal Bldg", _
"Seattle Municipal Court", _
"Seattle Municipal Tower", _
"Seattle Pacific University", _
"Seattle Passenger Ferry Terminal", _
"Seattle Prep High School", _
"Seattle Repertory Theater", _
"Seattle Schools John Stanford Center", _
"Seattle Sounder Station North Entrance", _
"Seattle Sounder Station South", _
"Seattle Tacoma International Airport", _
"Seattle Telco Credit Union", _
"Seattle Tennis Club", _
"Seattle Times", _
"Seattle Tower", _
"Seattle University", _
"Seattle University Gymnasium", _
"Secret Park", _
"Securities Bldg", _
"Security Pacific Bldg", _
"Segale Business Park", _
"Sequoia Jr High School", _
"Settlers Landing Park", _
"Seven Oaks Park", _
"Seward Park", _
"Seward Park NH", _
"SHA", _
"Shadow Lake School", _
"Shadow Motel - Airport", _
"Shamrock Park", _
"Shaughnessy Park", _
"Sheraton Hotel", _
"Sherwood Forest School in Bellevue", _
"Sherwood Forest School in Federal Way", _
"Shilshole Bay Marina", _
"Shorecrest High School", _
"Shoreline Cemetary", _
"Shoreline Chamber of Commerce", _
"Shoreline Community College", _
"Shoreline Historical Museum", _
"Shoreline Library", _
"Shoreline P&R", _
"Shoreline Sr Actvty Ctr", _
"Shoreline United Methodist Church P&R", _
"Shoreview Park", _
"Shorewood High School", _
"Shorewood Park", _
"Shorewood School", _
"Showalter Middle School", _
"Si View County Park", _
"Sierra Heights Park", _
"Sierra Heights School", _
"Silver Lake School", _
"Sixth Ave Inn", _
"SKCAC", _
"Skinner Bldg", _
"Skykomish City Hall", _
"Skykomish Library", _
"Skykomish Park", _
"Skyline High School", _
"Skyway Library", _
"Skyway NH", _
"Skyway Park", _
"Smith Cove Park", _
"Smith Tower", _
"Snoqualamie Middle School", _
"Snoqualamie School", _
"Snoqualamie Winery", _
"Snoqualmie City Hall", _
"Snoqualmie Falls", _
"Snoqualmie Library", _
"Snoqualmie Valley Historical Muesum", _
"Snoqualmie Valley Hospital", _
"Social Security Office - Bellevue", _
"Social Security Office - Burien", _
"Social Security Office - Downtown", _
"Social Security Office - Kent", _
"Social Security Office - North Seattle", _
"Social Security Office - South Seattle", _
"Social Security Office - West Seattle", _
"SODO Center", _
"Somerset School", _
"Sonrise Evangelical Free Church", _
"Soos Creek School", _
"Sorrento Hotel", _
"Sortun Martin School", _
"Soundview Playfield", _
"South Arcade 98 Union Bldg", _
"South Bellevue P&R", _
"South Burnett Linear Park", _
"South Federal Way P&R", _
"South Kirkland P&R", _
"South Lake Union Park", _
"South Mercer Island P&R", _
"South Park NH", _
"South Park Playground", _
"South Renton P&R", _
"South Seattle Community College", _
"Southcenter", _
"Southcenter Plaza", _
"Southeast HSC", _
"Southeast Neighborhood Cntr", _
"Southern Heights Park", _
"Southern Heights School", _
"Southgate Park", _
"Southwest District Service Center", _
"Southwest HSC", _
"Southwest Library", _
"Southwood School", _
"Southworth Ferry Terminal", _
"Space Needle", _
"Spinney Homestead Park", _
"Spiritbrook Park", _
"Spiritridge Park", _
"Spiritridge School", _
"Sportsman Park", _
"Spring Beach Park", _
"Spring Brook Greenbelt", _
"Spring Glen QFC", _
"Spring Glen School", _
"Spring Hills Park", _
"Spring Valley Montessori School", _
"Springbrook School", _
"Springwood HC", _
"Springwood Health Center", _
"Spruce Park", _
"SPU", _
"Squak Mtn State Park Natural Area", _
"SR 18/Auburn- Black Diamond Rd", _
"SR 18/Auburn Black Diamond Rd P&R", _
"SR 908/Kirkland Way P&R", _
"SSCC", _
"SSO Bellevue", _
"SSO Burien", _
"SSO CBD", _
"SSO Kent", _
"SSO North Seattle", _
"SSO South Seattle", _
"SSO West Seattle", _
"St Alphonsus School", _
"St Andrews Lutheran Church P&R", _
"St Annes School", _
"St Anthony Private School", _
"St Benedict School", _
"St Bernadette School", _
"St Brendan School", _
"St Catherine School", _
"St Christopher Academy High School", _
"St Christopher Academy School", _
"St Edward School", _
"St Francis of Assisi School", _
"St George School", _
"St Johns School", _
"St Josephs School", _
"St Louise School", _
"St Luke School", _
"St Marks Catholic School", _
"St Matthews School", _
"St Michelle Winery", _
"St Monica School", _
"St Paul School", _
"St Philomenas School", _
"St Therese School", _
"St Thomas School", _
"St Vincent De Paul School", _
"St. Columba's Episcopal Church", _
"St. Columba's Episcopal Church P&R", _
"St. Francis Community Hospital", _
"St. Luke's Lutheran Church", _
"St. Lukes Lutheran Church P&R", _
"St. Luke's Lutheran Church P&R", _
"St. Margaret's Episcopal P&R", _
"St. Thomas Episcopal Church P&R", _
"Stadium Exhibition Center", _
"Stan Sayres Memorial Park", _
"Stanford High School", _
"Stanford School", _
"STAR Center", _
"Star Lake Freeway Station", _
"Star Lake P&R", _
"Star Lake School", _
"Staton Hills Winery", _
"Steel Lake Park", _
"Stevens School", _
"Stevenson School", _
"Stillwater School", _
"SU", _
"Summit Alternative School", _
"Summit North Park", _
"Sunny Bank Park", _
"Sunny Hills School", _
"Sunnycrest School", _
"Sunnydale School", _
"Sunrise Park", _
"Sunrise School in Kent", _
"Sunrise School in Woodinville", _
"Sunrise United Methodist Church", _
"Sunrise United Methodist Church P&R", _
"Sunset Court Park", _
"Sunset Hill Viewpoint Park", _
"Sunset Hills Memorial Park Cemetery", _
"Sunset Intermediate School", _
"Sunset Ravine Park", _
"Sunset School in Bellevue", _
"Sunset School in Factoria", _
"Sunset Village", _
"Super Mall", _
"Super Mall of the Great Northwest", _
"SW District Service Center", _
"SW Spokane St P&R", _
"Swedish Ballard Hospital", _
"Swedish Hospital", _
"Swedish Medical Center", _
"Swedish Medical Center Ballard", _
"Swedish Medical Center Issaquah", _
"Sylvester Middle School", _
"Syre School", _
"Tac-Sea Motel - Airport", _
"Tahlequah (Vashon Island)", _
"Tahlequah Ferry Terminal", _
"Tahlequah P&R", _
"Tahoma High School", _
"Tahoma Jr High School", _
"Tahoma Military Cemetery", _
"Talbot Hill Park", _
"Talbot Hill School", _
"Tall Chief Golf Course", _
"Tam O'Shanter Park", _
"Tashkent Park", _
"Taylor Park", _
"Terminal 102", _
"Terminal 105", _
"Terminal 106", _
"Terminal 107", _
"Terminal 108", _
"Terminal 115", _
"Terminal 128", _
"Terminal 18", _
"Terminal 25", _
"Terminal 30", _
"Terminal 37", _
"Terminal 42", _
"Terminal 46", _
"Terminal 5", _
"Terminal 86", _
"Terminal 88", _
"Terminal 89", _
"Terminal 90", _
"Terminal 91", _
"Terminal Park", _
"Terminal Park School", _
"Terminal Sales Bldg", _
"Terrace Park", _
"Terry Pettus Park", _
"THC Seattle Hospital", _
"The Church by the Side of the Road P&R", _
"Third Avenue North Playground", _
"Thomas Academy School", _
"Thomas Jefferson High School", _
"Thomas Teasdale Park", _
"Thorndyke School", _
"Thornton Creek Park at NE 130th", _
"Thornton Creek Park at Northgate", _
"Three Forks Park", _
"Thunderbird Motel", _
"Thurgood Marshall School", _
"Tibbetts Lot", _
"Tibbetts Lot P&R", _
"Tibbetts Valley Park", _
"Tibbett's Valley Park", _
"Tibbetts Valley Park P&R", _
"Tiffany Park", _
"Tiffany Park School", _
"Tiger Mountain Community High School", _
"Tillicum Middle School", _
"Timberlake Park", _
"Times Square", _
"Todd Beamer High School", _
"Todd Shipyards", _
"Tolt High School", _
"Tolt Middle School", _
"Tom O Shanter Golf Course", _
"Tonkin Park", _
"Totem Jr High School", _
"Totem Lake Center", _
"Totem Lake QFC", _
"Tower 801", _
"Tower Bldg", _
"Town & Country Square", _
"Town Hall Seattle", _
"Towne Motor Hotel", _
"Tracy Owen Station Park", _
"Trade Center", _
"Tramp Harbor Dock", _
"Travelodge - Seattle", _
"Travelodge - Space Needle", _
"Travelodge - University", _
"Truman High School", _
"Tukwila Chamber of Commerce", _
"Tukwila City Hall", _
"Tukwila Interurban Investment", _
"Tukwila Library", _
"Tukwila P&R", _
"Tukwila P&R (KC)", _
"Tukwila Park", _
"Tukwila Sounder Station", _
"Tukwila Station", _
"Tukwila Station P&R", _
"Tukwila Surface Lot at Tukwila Station", _
"Turnkey Park", _
"Twin Lakes Golf Course", _
"Twin Lakes NH", _
"Twin Lakes P&R", _
"Twin Lakes School", _
"Twin Ponds Park", _
"Tyee High School", _
"Tyee Middle School", _
"Tyee Valley Golf Course", _
"U Village", _
"U.S. Bank Bldg", _
"U.S. West", _
"Underground Tour & Museum", _
"Unemployment Ballard", _
"Unemployment Bellevue", _
"Unemployment Belltown", _
"Unemployment Burien", _
"Unemployment Lake City", _
"Unemployment N Seattle", _
"Unemployment Rainier", _
"Unemployment Renton", _
"Unigard Financial Center", _
"Union Station", _
"Union Street Red Apple", _
"United Airlines Bldg", _
"United Equities", _
"United Parcel Service", _
"University Chamber  of Commerce", _
"University Development School", _
"University District Bldg", _
"University District NH", _
"University Library", _
"University Motel", _
"University of Washington Arboretum", _
"University of Washington Bothell", _
"University of Washington HUB", _
"University of Washington Medical Center", _
"University Playground", _
"University Plaza Motel", _
"University Prep Academy High School", _
"University Street Station", _
"University TS", _
"University Tunnel Station", _
"University Village", _
"University Village QFC", _
"US Coast Guard", _
"US District Court", _
"US Naval Support Activity", _
"UW", _
"UW Bothell", _
"UW Hospital", _
"VA Hospital", _
"VA Medical Center", _
"Valhalla School", _
"Valley Center P&R", _
"Valley Christian School", _
"Valley Medical Center", _
"Valley Memorial Park", _
"Valley Ridge Park", _
"Valley View Christian Church P&R", _
"Valley View Library", _
"Valley View School", _
"Van Aalst Park", _
"Van Asselt Playground", _
"Van Asselt School", _
"Van Dorens Landing Park", _
"Vance Bldg", _
"Vasa Park", _
"Vashon Cemetery", _
"Vashon Episcopal Church Holy Spirit P&R", _
"Vashon Ferry Terminal", _
"Vashon Golf Course", _
"Vashon Island High School", _
"Vashon Library", _
"Vashon Municipal Airport", _
"Vashon School", _
"Vashon Sportsmen's Club", _
"Vashon Thriftway Store", _
"Vernier Wines", _
"Veterans Affairs Medical Center", _
"Victor Steinbrueck Park", _
"Victoria Clipper", _
"Victory Heights Playground", _
"View Ridge Pharmacy", _
"View Ridge Playground", _
"View Ridge School", _
"Viewlands School", _
"Viewpoint Park in Redmond", _
"Viewpoint Park in Seattle", _
"Viewpoint Park in Vashon", _
"Villa Academy School", _
"Vintage Park Hotel", _
"Viretta Park", _
"Virginia Mason Clinic - Federal Way", _
"Virginia Mason Hospital", _
"Virginia Mason Medical Center", _
"Volunteer Park", _
"W Seattle Golf Course", _
"W Seattle High School", _
"WA State Convention & Trade Center", _
"Waldo Dahl Playground", _
"Walgreen Drug Store", _
"Wallace Swamp Creek Park", _
"Wallingford NH", _
"Wallingford Playground", _
"Wallingford QFC", _
"Wallingford-Wilmot Library", _
"Walter M Hollerbach Park", _
"Warren Place Playground", _
"Warwick Hotel", _
"Washelli Cemetery", _
"Washington Library for the Blind & Handi", _
"Washington Memorial Park Cemetery", _
"Washington Middle School", _
"Washington National Guard Armory", _
"Washington Park Arboretum", _
"Washington School", _
"Washington State Ferries", _
"Waterfront Park", _
"Watermark Credit Union", _
"Watershed Park", _
"Watson-Groen Christian High School", _
"Waverly Beach Park", _
"Wax Orchard Airstrip", _
"Wayne Golf Course", _
"Wedgewood Elementary School", _
"Wedgewood NH", _
"Wedgwood QFC", _
"Welcome Park", _
"Welfare - Auburn", _
"Welfare - Ballard", _
"Welfare - Belltown", _
"Welfare - Burien", _
"Welfare - Federal Way", _
"Welfare - Kent", _
"Welfare - North", _
"Welfare - Rainier Valley", _
"Welfare - Renton", _
"Welfare - White Center Multiservice Ctr", _
"Wellington School", _
"Wells Fargo Center", _
"Weowna Beach County Park", _
"West Auburn Continuation High School", _
"West Canyon Park", _
"West Coast Bellevue Hotel", _
"West Coast Camlin Hotel", _
"West Magnolia Playground", _
"West Mercer School", _
"West Montlake Park", _
"West Queen Anne Playground", _
"West Seattle Christian School", _
"West Seattle Community Hospital", _
"West Seattle High School", _
"West Seattle Junction", _
"West Seattle Library", _
"West Seattle Montessori School", _
"West Seattle NH", _
"West Seattle Research Lab", _
"West Valley Winery", _
"West Woodland School", _
"Westcrest Park", _
"Westhill School", _
"Westin Hotel", _
"Westlake Center", _
"Westlake Monorail Terminal", _
"Westlake Station", _
"Westlake TS", _
"Westlake Tunnel Station", _
"Westside Park", _
"Westwood School", _
"Westwood Village", _
"Westwood Village QFC", _
"Weyerhaeuser", _
"Weyerhaeuser Technical Center", _
"White Center Heights Park", _
"White Center Heights School", _
"White Center Library", _
"White Center NH", _
"White Center Park", _
"White River Amphitheater", _
"White River Park", _
"White River Valley Historical Society", _
"Whitman Middle School", _
"Whitney Bridge Park", _
"Whittier School", _
"Whitworth Elementary School", _
"Whyel Rosalie Museum of Doll Art", _
"Wilburton P&R", _
"Wild Waves Water Park", _
"Wilder, Laura Ingalls School", _
"Wilderness Village", _
"Wilderness Village QFC", _
"Wildwood Park in Bellevue", _
"Wildwood Park in Federal Way", _
"Wildwood School", _
"William F McCormick Park", _
"William Grose Park", _
"William Penn Park", _
"Willis St Greenbelt", _
"Willows Run Golf Course", _
"Windermere Park (Private)", _
"Windsor Hills Park", _
"Wing Luke Memorial Museum", _
"Wing Luke School", _
"Winsor Vista Park", _
"Woodin School", _
"Woodinville 7th Day Adventist", _
"Woodinville 7th Day Adventist P&R", _
"Woodinville Cemetary", _
"Woodinville Chamber of Commerce", _
"Woodinville City Hall", _
"Woodinville High School", _
"Woodinville Library", _
"Woodinville P&R", _
"Woodinville Plaza", _
"Woodinville QFC", _
"Woodinville Town Center", _
"Woodland Park", _
"Woodland Park Zoo", _
"Woodmark Hotel", _
"Woodmont Park", _
"Woodmont Place", _
"Woodmont School", _
"Woodmoor School", _
"Woodridge School", _
"Woodridge Water Tower Park", _
"WSF - Bainbridge", _
"WSF - Colman Dock", _
"WSF-Fauntleroy Ferry Dock", _
"Yarrow Bay Wetlands", _
"Yarrow Point City Hall", _
"Yarrow Point Freeway Station", _
"Yeshiva High School", _
"Yesler Bldg", _
"Zion Christian Jr High School", _
"Zion Christian School", _
"Zoo")

%>