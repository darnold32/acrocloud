CREATE KEYSPACE if not exists acrocloud WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'};
CREATE TABLE if not exists acrocloud.acronym (
	acronym text,
	name text,
	description text,
	catagory text,
	PRIMARY KEY (acronym, name)
)WITH bloom_filter_fp_chance = 0.01
AND crc_check_chance = 1.0
AND dclocal_read_repair_chance = 0.1
AND default_time_to_live = 0
AND gc_grace_seconds = 864000
AND max_index_interval = 2048
AND memtable_flush_period_in_ms = 0
AND min_index_interval = 128
AND read_repair_chance = 0.0
AND speculative_retry = '99.0PERCENTILE'
AND caching = {
      'keys' : 'ALL',
      'rows_per_partition' : 'NONE'
}
AND compression = {
      'chunk_length_in_kb' : 64,
      'class' : 'LZ4Compressor',
      'enabled' : true
}
AND compaction = {
      'bucket_high' : 1.5,
      'bucket_low' : 0.5,
      'class' : 'SizeTieredCompactionStrategy',
      'enabled' : true,
      'max_threshold' : 32,
      'min_sstable_size' : 50,
      'min_threshold' : 4,
      'tombstone_compaction_interval' : 86400,
      'tombstone_threshold' : 0.2,
      'unchecked_tombstone_compaction' : false
};
//drop table acrocloud.acronym;

select * from acrocloud.acronym;
 
insert into acrocloud.acronym (acronym, name, description, catagory)
values ('TDS', 'Test Data Management', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('DOTCOM', 'bestbuy.com', 'Best Buy Consumer Website', 'Product' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('MTO', 'Marketing Technology and Operations', 'Tech used for marketing', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('POS', 'Point of Sale', 'Recieves Tender from the customer', 'Product' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ETK', 'Employee Tool Kit', 'Main page for most employees, houses all Best Buy web applications and important websites', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('EDW', 'Enterprise Data Warehouse', ' a system used for reporting and data analysis, and is considered a core component of business intelligence', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ODS', 'Operational Data Store', 'a database designed to integrate data from multiple sources for additional operations on the data', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('SFMC', 'Sales Force Management System', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ( 'UWO', 'Universal Work Order', 'Type of Work Order', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('IPT', 'Integrations Program Testing', 'testing software', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('APT', 'Application Program Testing', 'software testing', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CE', 'Category Expansion', 'Security and data privacy', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('EIP', 'Enterprise Information Protection', 'Protection of corperate data', 'IT' );


insert into acrocloud.acronym (acronym, name, description, catagory)
values ('AID', 'Alias ID eg, A6000352', 'BestBuy employee Identification number', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('COE', 'Center of Excellence', 'Used to recognize other empoyees for doing a good job', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CER', 'Capital Expenditure Request', 'the money a company spends to buy, maintain, or improve its fixed assets', 'Finance' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CW', 'Contingent Worker', 'freelancers, independent contractors, consultants, or other outsourced and non-permanent workers', 'HR' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('DR', 'Disaster Recovery', 'How we recover from a disaster', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('DTMS', 'Deal Tree Managment System', 'An inventory system, a fulfillment system for secondary markets', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('EA', 'Enterprise Architechture', 'a well-defined practice for conducting enterprise analysis, design, planning, and implementation, using a comprehensive approach at all times, for the successful development and execution of strategy', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('EBS', 'Oracle E Business Suite', ' consists of a collection of enterprise resource planning (ERP), customer relationship management (CRM), and supply-chain management (SCM) computer applications either developed or acquired by Oracle', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('EI', 'Enterprise Information ', ' specializes in finding solutions for optimal use of information within organizations, for instance to support decision-making processes', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('FTE', 'Full Time Equivalent', 'An employee who is working the equivalent of a full time employee', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('GSC', 'Geek Squad City', 'largest geek squad service center located in Louisville', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('IAM', 'Identity Access Managment', ' the security and business discipline that enables the right individuals to access the right resources at the right times and for the right reasons', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ITRB', 'Information Technology Review Board', 'Board of people used for reviewing operations in IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('MAG', 'Magnolia', 'Store inside of a store. Magnoliga sells high end home theather solutions', 'Product' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('MSA', 'Master Service Agreement', 'contract reached between parties, in which the parties agree to most of the terms that will govern future transactions', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('NOVA', 'Geek Squad System', 'In store Geek Squad system used by Agents', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('NPS', 'Net Promoter Score', 'It is a management tool that can be used to gauge the loyalty of a firms customer relationship', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('OCIS', 'Open C', 'Source of Geek Squad Services contracts/GSP plans', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ODW', 'Oracle Data Warehouse', 'Oracles new, fully managed database tuned and optimized for data warehouse workloads with the market-leading performance of Oracle Database ', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('OEM', 'Original Equipment Manager', 'describes a web of relationships among IT hardware vendors, component makers', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('OMS', 'Order Management System', 'The OMS/FMS solution is a multi channel, integrated solution where OMS is the order', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('OWA', 'Outlook Web Access', 'Outlook access Web app ', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('PAC', 'Pacific Sales', 'Sells kitchen, bath and home appliances (usually in the Best Buy Store)', 'Product' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('POS', 'Point of Sale', 'Used to process transcations and tender payment in stores', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('PSP', 'Performace Service Plan', 'Old Plan Type', 'Product' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('PWA', 'Project Web App', 'robust Web application that you can use to do everything from analyzing portfolios and managing proposals, to entering time in a timesheet and updating task status', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RAID', 'Risk, Action, Issue and Decision Log', 'Log of decisions', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RASCI', 'Responsible Approver Suppoerting Consulted Informed', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RFC', 'Request for Change', 'Change Management', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RMS', 'Retek Management System', 'Best Buy system of record for inventory', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RTI', 'Retail Technology Infrastructure', 'Retail IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('SPU', 'Store Pick Up', 'Customer has prepaid and picks item up at Best Buy Store', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ISPU', 'In Store Pick Up', 'Customer prepays and picks item up in the Best Buy store', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('SAB', 'Solution Architechture Board', 'Board for approving solutions for Architechture', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('SCA', 'Supply Chain Alliance', '3rd party Vendor that created many systems such as Bombay and SmartParts', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('SME', 'Subject Matter Experts', 'An expert in a certain field', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('STAR', 'Service Order Management System', 'Used by Agents in stores to look at Service Orders (REPALCED BY NOVA)', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('TPA', 'Third Party Administrator', 'see AIG Warranty', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('UAT', 'User Acceptance Test', 'Testing software with the end user', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ADFS', 'Active Directory Federation Services', 'IBM and Microsoft', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('BDID', 'Bulk Data Integration- Database', 'Moving large amounts of data from mulitple sources into one database', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('BDI', 'Bulk Data Integration', 'the combination of technical and business processes used to combine data from disparate sources into meaningful and valuable information', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('BDIF', 'Bulk Data Integration- File', 'the combination of technical and business processes used to combine data from disparate sources into meaningful and valuable information', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CAP', 'Carrier Activation Platform', 'Platform for activiating plans from mobile carriers', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CPE', '1. Complex Pricing Engine 2. Controllable Promotional Expense', '2.promotion expense is a cost that a business incurs to make its products or services better known to consumers', 'IT' );


insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CPP', 'Complex Pricing Publisher', 'null', 'IT' );


insert into acrocloud.acronym (acronym, name, description, catagory)
values ('DMS', 'Digital Message Switchport', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ESP', 'Enterprise Service Platform', ' container which allows multiple services to be plugged in which provide various types of functionality to client applications', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ET', 'Exact Target', 'Digital marketing automation and analytics software and services', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('GSX', 'Global Service Exchange', 'Gives us access to Apples service plan database, and gives the the ability to sell apple plans', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('IAC', 'Interal Application Communication', 'apps developed to ease internal communication', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ISS', 'In-Store Scheduling', 'Way of scheduling in the store', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ITSAB', 'Information Technology Solution Architechture Board', 'Board of people who makes decisions for Solution Architechture', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('MVP', 'Minimum Viable Product', 'development technique in which a new product or website is developed with sufficient features to satisfy early adopters', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('OSA', 'Online Support Application', 'Online application used for remote access, used by agents for remote TTS support', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('PDW', 'Parallel Data Warehouse', 'a scalable data warehouse appliance that delivers performance and scalability through massively parallel processing', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('SDP', 'Service Delivery Platform', 'a set of components that provides a service delivery architecture for a type of service delivered to a consumer', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('TER', 'Triage Entitlement Routing', 'Checks entitlements of customer when triaging computer(or item that needs support)', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('TSH', 'Tag Super Highway', 'Brings tools from one place to te next', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('WCF', 'Windows Commmunication Foundation', 'runtime and a set of APIs in the .NET Framework for building connected, service-oriented applications', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('WMS', 'Warehouse Management System', ' software application, designed to support and optimize warehouse or distribution center management', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('WPF', 'Windows Presentation Foundation', 'graphical subsystem by Microsoft for rendering user interfaces in Windows-based applications', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('AIG', 'American International Group', 'Underwriting company for Best Buy', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('COM', 'Compelxt Offer', 'Umrella of OMT and CPE', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('FYR', 'For your records', 'null', 'Misc' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('BTI', 'Operations and Events Reporting', 'Paired with OCIS', 'Misc' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RESA', 'Umbrella for Digital Content', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CDC', 'Connectivity and Digital Content', 'Connecting Digital data', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('AWB', 'Agent Work Bench', 'Work Bench for Geek Squad Agents', 'Misc' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('GL', 'General Ledger', 'a complete record of all the financial transactions of your company throughout its life', 'Finance' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RISE', 'Determines if there can be a return on a service', 'null', 'IT' );



Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ACN', 'Accenture','Contract Employee Provider','Misc'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ACCN', 'Accenture Contracts', 'Contract Employees Provider','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ADM', 'Application Development and Maintenance', 'the process of managing the design, coding, testing and ongoing improvements and debugging of software','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ADR', 'Advanced Diagnostic and Repair', 'More difficult triage and repair for a device','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'AHRM', 'Area Human Resources Manager','Maintains and enhances the organization''s human resources by planning, implementing, and evaluating employee relations and human resources policies, programs, and practices','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'AIDU', 'Accenture Incident Diagnostic Utility','Accentures utility for diagnosting incidents','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'AJU', 'Agent Jonny Utah','Black Ops agent that connect remotely to customers computers','IT');
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'AO', 'Asia Office','Best Buy Asia Office','Misc'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'AOP', 'Adaptive Operating Platform','null','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'AP', 'Accounts Payable','is an accounting entry that represents a company''s obligation to pay off a short-term debt to its creditors or suppliers','Finance'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'AR', '1. Accounts Receivable 2. Ad Reactions 3. At - Risk','1. money owed to a company by its debtors ','Finance');
 

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ARA', 'Advanced Repair Agent','subeset of CIA in Connected Stores, a role whithin Geek Squad','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ASM', 'All Store Meeting','Used to tell Blue Shirts and Agents new information','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ASP', 'Average Selling Price',' the average price at which a particular product or commodity is sold across channels or markets','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ATU', 'Auto Top Up','Once an account goes below a certain amount it is auto filled up','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'B2B', 'Business to Business','Selling as a business to another business','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BAPS', 'Biases - Assumptions - Prejudices - Stereotypes','A way of regonizing prejudices','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BBFB', 'Best Buy for Business','OUTDATED NOW BBYD','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BBTG', 'Best Buy Technology Group','null','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BBY', 'Best Buys stock symbol','What our tag is on the stock market','Finance'
  );
 
Insert into
      acrocloud.acronym (acronym, name, description, catagory) 
VALUES
      (
        'BBYD', 'Best Buy Direct','Business to Business Sales Channel','Finance'
      )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BBYM', 'Best Buy Mobile','Where we sell mobile phones, accessories, etc.','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BEAST', 'BBY Easy Activations and Sales Tool','Used by moblie Blue Shirts to activate new phones','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BER', 'Beyond Economical Repair','Cheaper for us to replace than repair','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BFS', 'Built For Speed','Building something that is efficient','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BHAG', 'Big Hairy Audacious Goal','a strategic business statement similar to a vision statement which is created to focus an organization on a single medium-long term organization-wide goal which is audacious, likely to be externally questionable, but not internally regarded as impossible','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BOBJ', 'Business Objects','Pronounced Bob-J','Finance'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BOL', '1. Back Office Lead 2. Bill of Lading','1. Manager who runs operations in the back office of a store 2. a detailed list of a shipment of goods in the form of a receipt given by the carrier to the person consigning the goods','Misc');
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'BPM', 'Business Performance Management','management of an organization''s performance to achieve one or more pre-selected goals','HR'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BTC', 'Business Technology Consultant','Someone advising organizations on how best to use information technology (IT) in achieving their business objectives','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BTP', 'Black Tie Protection','Type of Geek Squad plan','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BYOD', 'Bring your own device','If something has this BYOD','Misc'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CA', '1. Customer Assistant 2. Customer Availability 3. Canada','1. Someone who assists the customers','Misc');
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'CALM', 'Customer Assistance Listening Model' ,'A way of listening to a customer when they are speaking','Misc'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CAP', 'Carrier Activation Platform','Platform for activating new mobile plans','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CARE', 'Contact, Ask, Recommend, Encourage','Best Buy Selling Stratey Components','Product'
    );
 
  Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
  VALUES
    (
      'CAS', 'Customer Appointment Scheduling','Platform for scheduling appointments for customers(IHA,Geek Squad,Home Theaher Installiation)','Product'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CB', '1. Core Blue 2.Current Budget','1.Internal Web-App used by blue shirts 2. Locked Budget','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CBG', 'Connected Business Group','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CCC', 'Customer Centric Cycle','An approach to doing business that focuses on providing a positive customer experience both at the point of sale and after the sale in order to drive profit and gain competitive advantage','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CCEE', 'Customer Centric Experience Evaluation','Evaluation of how well we are servicing a customer','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CCM', 'Customer Contact Manager','a software program that enables users to easily store and find contact information, such as names, addresses and telephone numbers','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CDT', 'Customer Domain Team','Team that comprises all data and contract operations associated with customers','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CEB', 'Capital Evaluation Board','Board that reviews out plans to look at our long term investments, and how the company''s capital is being used','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CEE', 'Customer Experience Evaluation','Customer evaluates how their experience was (Usually through a servey about the store)','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CEM', 'Customer Experience Manager','Someone who looks at how the customers are experiencing our stores','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CER', 'Capital Expenditure Request','Request to obtain capital for fixed assets','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CF', 'Customer Fulfillment','ability of a company to deliver their goods or services into the hands of consumers','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CIA', 'Counter Intelligence Agent','A role within Geek Squad','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CMO', 'Chi Mei Optoelectronics','Major supplier of television panels, i.e. CMO panels','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CP', 'Current Plan for Version','Last locked version; like a Qtrly Estimate','Finance'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CPC', '1. Capacity, Planning and Communications 2. Carrier Plan Catalog','null','Misc'
    );
 
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CPM', 'Clearance Price Management','Manages if an item will go on clearance or not','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CREST', 'Customer Relationship Employee Support Tools','Tools an employee can use to build customer relationships','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CR', 'Consumer Relations','process in which an organization creates and maintains a positive relationship with their consumers','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CRM', '1.Symphony 2.Customer Relationship Management','1. Symphony Connects all customer interactions to provice a more personal connection with the customer','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CSE', 'Customer Service Evaluation','Customer Evaluation(Usually a servey) on how their customer service experience was','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CSI', 'Customer Satisfaction Index','A measure of how products and services supplied by a company meet or surpass customer expectation','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CSM', 'Customer Solutions Manager','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CSR', 'Customer Service Representative','Employee who represents Bset Buy in customer service situation(Usually with a customer)','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CTI', 'Computer / Telephony Integration','A term that can be used to describe any technology that enables computers to interact with telephones','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CTM', 'Collaborative Transportation Management','A relatively new collaboration model that addresses inefficiencies in the transportation process in supply chains','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DA ', 'Double Agent, a role within Geek Squad','Someone who works two (or more) agent roles','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DAW', 'District Appliance Warehouse','Warehouse that houses our appliances (Usually for PAC sales)','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DBT', 'Daily Business Tracker','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DC', 'Distribution Center','Center for distributing items to their destination (Usually recieving items from a warehouse)','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DCI', 'Deputy of Counter Intelligence','Geek Squad Supervisor','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DCSM', 'District Connectivity Sales Manager','Position that manages connectivity sales for their respective district','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DDC', 'Delivery Distribution Center','Distribution center for managing how things are delivered to the customer (Usually scheduled delivery)','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DEVO', 'Defective Equipment Void of Operation','This has a story behind it... ask a BBY lifer for details','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DFA', 'Demand Forecast Analyst','An economics specialist who examines inventory levels, speed of production, and demand for product to ascertain a company''s optimal production levels and potential future sales','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DFI', 'Deduct From Invoice','vendor allowances for damaged goods,junk outs, and return penalties','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DFM', 'Deputy Field Marshal','Role within Geek Squad','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DFSM', 'District Field Support Manager','Manager position','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DHRM', ' District Human Resources Manager','Human Resource Manager for the Best Buy store district','HR'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DI', '1.  Digital Imaging 2. Direct Import','1. The DI department in stores has to deal with Cameras, lenses etc.','IT'
    );
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'DIH', 'Drive It Hard','Push for this to happen','Misc'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DM', 'District Manager','Manager position of the district','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DMA', 'Designated Market Area','A region where the population can receive the same (or similar) television and radio station offerings, and may also include other types of media including newspapers and Internet content','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DP', 'Demand Planning','Planning for how much demand a product will have','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DPA', 'Demand Planning Analyst','Someone who determines how much demand a product will have','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DSUB', 'Digital Subscription','A subscription for an online service','IT'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DT', '1. Dealtree 2. Digital Technologies','1.Best Buy Secondary Market 2. electronic tools, systems, devices and resources that generate, store or process data','IT');
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
      (
        'DTAM', 'Digital Technologies Area Manager','Community Stores','Misc'
      )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DWO', 'Damage Write-off','Writing off damage to an item','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DX', 'Dynex','Best Buy Brand','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'E2E', 'End-to-End','A methodology used to test whether the flow of an application is performing as designed from start to finish','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'EBN', 'Employee Business Networks','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ECB', 'External Communication Broker','A  core communications controller purpose-built to simplify complex, multivendor Unified Communications (UC) networks and extend services to mobile users','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ECC', 'Enterprise Contact Center','Usually Best Buy Support over the phone','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ECN', 'Engineering Change Notification','Change in Engineers','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ECR', 'Engineering Change Request','Request for changing engineers','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'EDI', '1.Electronic Data Interchange 2. Employee Driven Intelligence ','1. The concept of businesses electronically communicating information to that which was traditionally communicated on paper','IT'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'EJ', 'Electronic Journal','A periodical publication which is published in electronic format, usually on the Internet','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'EOL', 'End of Life','End of life for a product,system etc.','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'EPRO', 'Best Buy Directs Electronic Procurement','BBYD business to business purchase and sale of supplies, work, and services through the Internet as well as other information and networking systems, such as electronic data interchange','IT');
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'ESC', ' Electronic Subscription Capture','Our way of capturing customer electronic subscriptions','IT'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ESPP', 'Employee Stock Purchase Plan','Way of employees purchasing Best Buy stock','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'EXB', 'Exclusive Brands','Brands exclusive to Best Buy (Insignia, Dynex, Rocketfish etc.)','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FACE', 'Facilitates Accuracy, Consistency & Efficiency','Automated Geek Squad program (Fixes and Cleans Everything)','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FC', 'Forecast','Usually used in forecasting demand for items','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FIA', 'Floor Intelligence Agent','Subset of CIA, a role within Geek Squad','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FIFO', 'First In First Out','Geek Squad Acronym, first unit in get repaired first','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FIRST', ' Friendly, Immediate Recognition, Say "Hi" and "Thank You."','A Pledge to our customers.','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FLUCK', 'Face that ladder, Look forward when you lift, Use the right tool, Careful up there, Keep it clean','Warehouse Term to keep people safe','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FMS', 'Field Management System','Tool for Geek Squad out of store work (Eg. Home Installiation)','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FSMM', 'Field Services Market Manager', 'a role within Geek Squad','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FT', 'Full-Time', 'Eg. a FT Employee','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FWOS', 'Forward Weeks of Supply','Calculates by counting the number of weeks of planned sales from the next week forward that the current inventory represents','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FY', 'Fiscal Year','A year as reckoned for taxing or accounting purposes','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GBI', 'Global Business Intelligence','A set of methodologies, processes, architectures, and technologies that transform raw data into meaningful and useful information used to enable more effective strategic, tactical, and operational insights and decision-making.','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GBOT', 'GM Third Meeting, Barometer, Over budget Meetings, Talk It Up!','Company Shrink Plan','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GBS', 'Global Business Services','Provides services beyond transactional functions and has a wider remit and expertise to deliver higher value functions, such as consulting and business analytics','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GLN', 'Global Location Number','Used to identify physical locations or legal entities','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GM', 'General Manager','Manages everything within the 4 Best Buy store walls','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GMD', 'Gross Margin Dollars','A company''s total sales revenue minus its cost of goods sold (COGS), divided by total sales revenue, expressed as a percentage','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GMP', ' Gross Margin Percent','A company''s total sales revenue minus its cost of goods sold (COGS), divided by total sales revenue, expressed as a percentage','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GNFR', 'Goods Not for Retail','Goods we have that are not in the retail stores','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GNG', 'Gadgets & Gizmos','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GO', 'Grand Opening','The Grand Opening of something','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GOIT', 'GM Third Interview, Over budget Meeting, Inventory Integrity, Talk Shrink','General Manager Meetings','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GPROS', 'Gross Profit Return on Space','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GS', 'Geek Squad','Best Buy Brand','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GSOS', 'Geek Squad Office Support','Remote Support','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GSBTP', 'Geek Squad Black Tie Protection','like a GSP','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GSP', 'Geek Squad Protection ','A plan the customer purchases alongside their itme that covers issues the item may go though in its lifetime ','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GSPP', 'Geek Squad Protection Plus','Type of GPS','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GSR', 'Growth Store Reporting','Report on how much a store is growing (Rev,Inventory etc.)','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'HACCS', 'Hardware, Accessories, Content, Connections, Services','Things we sell in the stores','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'HBG', 'Home Business Group','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'HE', 'Home Essentials','Community Stores','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'HEAM', 'Home Essentials Area Manager','Community Stores','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'HEET', 'Home Entertainment Experience Transformation','Selling a whole Home Entertainment experience to the customer','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'HLM', 'Holiday Leadership Meeting','Meetings for leaders to discuss holiday season essentials.','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'HR', 'Human Resources','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'HT', 'Home Theater','Where we sell TVs and accessories in the stores','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'HTIB', 'Home Theater in a Box' ,'null','Misc'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'IA', '1. Inventory Analyst 2. Internal Affairs', 'A position within Geek Squad','Misc'
  );
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'ID', 'Industrial Design','Professional service of creating and developing concepts and specifications that optimize the function, value and appearance of products and systems','Misc'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'IDSAP', 'Insight Driven SOP Action Plan','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'IG', 'Instant Gift','Bundled deals eg. customers buys a prodcut and then recieves a reward such as a gift card.','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'IRM', 'Information Retention Management','Aspect of records and information management and the records life cycle that identifies the duration of time for which the information should be maintained or "retained," irrespective of format (paper, electronic, or other).','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'IT', 'Information Technology','Software,Services,etc.','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ITSM', 'Information Technology for Service Management','null','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'IVR', 'Interactive Voice Response','A technology that allows a computer to interact with humans through the use of voice.','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'JOS', 'Job Opening System','System for open Job positions.','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'KEP', 'Keep Existing Plan','null','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'KPI', 'Key Performance Indicators','A quantifiable measure used to evaluate the success of an organization, employee, etc., in meeting objectives for performance.','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'KPM', 'Key Performance Metric','Measures an organization''s behavior, activities, and performance. It should support a range of stakeholder needs from customers, shareholders to employees.','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'LC', 'Last years Comparable History','null','Finance'
  );
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'LPMS', 'Loss Prevention Management System','Solution designed to help loss prevention departments increase productivity, have better management of data, and greater visibility to all incidents. ','Finance'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'LTL', 'Less than Truckload','The transport of freight that does not require the entire space of a truck.','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'LUSH', 'Learn from challenge and change, unleash the power of our people, Show respect humility and integrity,Having fun while being the best.','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'LW', 'Last Week','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'LY', 'Last Year','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MRI', 'Malware Removal Instrument','Geek Squad repair DVD','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MAP', 'Minimum Advertised Price','The lowest price a retailer can advertise the product for sale.','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MAV', ' Magnolia Audio Video','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MCCP', 'Multi Channel Contact Platform','Empowers customers the flexibility to choose the method of contact that makes the most sense for them at any given time.','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MDF', 'Merchant Development Funds','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MDR', 'MetaData Repository','A database created to store metadata. Metadata is information about the structures that contain the actual data.','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ME', 'Margin Enhancement','the previous retail scorecard system, replaced by Matrix','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MHT', 'Magnolia Home Theater','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MOD', 'Manager On Duty','Current manager working', 'HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MOQ', 'Minimum order quantity','Need to order the minimum quantity to recieve product','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MRC', 'Monthly recurring charge','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MRP', 'Materials Resource Planning','A production planning, scheduling, and inventory control system used to manage manufacturing processes.','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MSTS', 'Multi Service Technology Solution','null','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'MWF', 'Merch Withdrawal Product','used for donations, location use, etc','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'NET', 'New Employee Training','null','HR'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'NOP', ' 1.  Net Operating Profit 2. Not On Planogram','null','Finance'
  );
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'NOPAT', 'Net Operating Profit After Tax','A measure of profit that excludes the costs and tax benefits of debt financing.','Finance'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'NPV', 'Net Present Value','Is the difference between the present value of cash inflows and the present value of cash outflows over a period of time.','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'NS', 'Insignia','a Best Buy owned brand','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'NSO', 'New Store Opening','null','Misc'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OS', 'Occasional/Seasonal','Employee who only works occasionally (Holidays,Summer Break etc.)','HR'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OA', '1. Price OV Ad Item 2. On Anywhere', 'External VPN Access System', 'Misc'
  );
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'ODW', 'Oracle Data Warehouse','Is Oracle''s new, fully managed database tuned and optimized for data warehouse workloads with the market-leading performance of Oracle Database 18c','IT'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OG', 'Operating Group', 'Corporate business teams, made up of the Mobility Operating Group, Home Solutions Operating Group, and Entertainment Operating Group.','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OGM', 'Operational Gross Margin','Metric used to measure a company''s profitability.','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OGST', 'Objectives, Goals, Strategies, Tactics','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OM', 'Order Management','Is the administration of business processes related to orders for goods or services.','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OMS', 'Order Management System','System used for order entry and processing.','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OOO', 'Out Of Office','Used when someone will not be in office','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OPP', 'Opening Price Point','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ORCA', 'Order Report of Customer Activity','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ORP', 'Oracle Retail Planning','Empowers retailer planning teams to combine disparate data sources, including performance, market, and vendor, and leverage retail science to drive intelligent and localized assortments without the increased overhead of full-time data scientists','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OSCN', 'Order Status Change Notification','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OSS', 'Online Support Services','Remote support.','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OTER', 'Ownership, Talk Safety, Education, Recognition', 'Company Safety Plan','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OTR', 'Over The Range microwave' ,'Type of Microwave, term usually used in PAC sales','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OTRQ', 'on-time, right quantity','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'OTV', 'Out To Vendor', 'For Geek Squad service items','Misc'

  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'P&L', 'Profit & Loss','Is a financial statement that summarizes the revenues, costs and expenses incurred during a specified period.','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PC', 'Product Return Center','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PCB', 'Printed Circuit Board','It is a board that supports and electrically connects electronic components or electrical components using conductive tracks, pads and other features etched from one or more sheet.','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PCHO', 'Personal Computers / Home Office','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PCI', 'Payment Card Industry','Is an information security standard for organizations that handle branded credit cards from the major card schemes.','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PCM', 'Product Capability Management','Act as a functional subject matter expert for both business leaders and application development teams','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PCR', 'Performance Counseling Record', 'Verbal, written, or final warning by supervisor or manager','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PDG', 'Performance & Development Guide','Opportunity for employees and managers to plan for an individual''s development with an eye toward the department''s future needs''(On Learning Network)','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PDP', 'Product Development Process','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PE', 'Portable Electronics','null','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PI', 'Physical Inventory','I a process where a business physically counts its entire inventory.','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PIM', 'Product Information Management','Managing the information required to market and sell products through distribution channels.','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PLM', 'Product Lifecycle Management','Is the process of managing the entire lifecycle of a product from inception, through engineering design and manufacture, to service and disposal of manufactured products.','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PM', 'Price Match','Matching the price of a competitor','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PMO', 'Project Management Officer','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PMR', 'Performance Management Report','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PND', 'Personal Navigation Devices','A portable electronic product which combines a positioning capability (such as GPS) and navigation functions.','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'POG', 'Planogram','Used to plan out the layout of a Best Buy store','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'POOP', 'Protect Our Only Planet','Environmental conservation mission','Misc'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'POV', 'Point of View','A particular attitude or way of considering a matter.','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PPM', 'Project Plan Management','A formal, approved document that defines how the project is executed, monitored, and controlled.','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PPS', 'Product Process Supervisor','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PRP', 'Product Replacement Plan','null','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PS', 'Process Supervisor', 'Community Stores','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PSA', 'Personal Shopping Assistant','Smart web - automatically detects and remembers details from web pages for individual products.','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PSR', 'Partner Store Fronts','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PT', 'Part-Time','Employee who only works part time','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'PZFATTS', 'Performance Management, Zoning, Floor Leadership, Action Center, Training, TRUST & Staffing.','7 key levers of SOP','HR'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RA', '1. Regular Advertised 2. Revenue Assurance 3.Return Authorization','3.Determines if a product requires a return authorize request','Finance'
  );
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'RASC', 'Reporting and Analytic Support Center','null','HR'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RDS', 'Report Distribution System','Provides an intermediate area to view reports online.','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RICEF', 'Reports, Integrations, Conversions, Enhancements, Forms','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RMM', 'Remote Monitoring & Management','Software designed to help managed IT service providers remotely and proactively monitor client endpoints, networks and computers. This is also now known as remote IT management.','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RF', 'Rocketfish','Best Buy owned brand (Makes HDMI cables and other Home Theater accessories)','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RFT', 'Retail Functionality Trainer','Educates salespeople using various methods, like coaching, seminars and interactive activities.','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ROIC', 'Return on Invested Capital','The percentage return that a company makes over its invested capital.','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ROS', 'Retail Order System','null','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RPT', 'Revenue Per Transaction','Total revenue divided by average units','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RSS', 'Retek Store Systems','null','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RST', 'Retail Support Team','null','MISC'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RTB', 'Run the Business','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RTC', 'Retail Traffic Center','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RTS', 'Return To Stock','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RTV', 'Return To Vendor','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RU', 'Regular Unadvertised','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RZ', 'Reward Zone','Customer Reward system (also known as Best Buy Rewards)','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'RZMC', 'Reward Zone MasterCard','Customers Reward Zone card','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SA', 'Special Agent', 'A role within Geek Squad','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FA', 'Future Agent', 'Multi-skilled Geek Squad agent.','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SAS', 'Stand Alone Store','eg. Best Buy mobile store','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SCAC', 'Standard Carrier Alpha Code','A unique two-to-four-letter code used to identify transportation companies.','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SDF', 'Supplier Direct Fulfillment','Extends a retailer''s fulfillment capability by adding the supplier''s capacity and specialized knowledge for handling and shipping products without the cost of building a facility or hiring an employee.','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SFS', 'Ship From Store','When a customer orders an item online and the item is shipped directly from the store rather than a warehouse','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SGO', 'Strategic Growth Office','Is responsible for working cross functionally with the Category Management & Merchandising teams, Services, E-commerce and others to develop and implement new businesses that deliver the customer experience and the financial goals across all channels. ','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SKU', 'Stock Keeping Unit','Unqiue number to an item/service that helps us keep stock of that item ','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SLA', 'Service Level Agreement','A commitment between a service provider and a client','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SO', 'Sales Operator','Someone/Something that helps a sales organization run effectively','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SOP', 'Standard Operating Platform','developed to support and manage every aspect of the company''s business','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SOAP', 'Special Order Appliance Purchase','null','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SOTL', 'Sales Order Transaction List','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SPARKLE', 'Straight Product Align Keep Laserlined Everyday','Used in stores to help employees remember how product should look on the shelf','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SPE', 'Smart Phone Experts','Someone who is an expert in mobile phones','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SR', 'Shop Reactions','Reaction to our shops','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SSM', 'Store Services Manager','Manager position','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SSP', 'Self-service Portal','Used to request software','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'STC', 'Sell-through credit','retailer reserves the right to return unsold units to the supplier for a refund or credit','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'STH', '1.Sales Transaction Hub  2.Ship To Home','2.If we ship the item to the home','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'STI', 'Short Term Incentive','Intended to compensate executives for achieving the company''s short-term business strategy based on achievement of goals','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'STS', 'Special Technical Services','Services that need special technical skills','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SWAS', 'Store Within a Store','A smaller store within our store (Eg. Magnolia store in a Best Buy store)','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SWAT', 'Stock Whats Available Today','null','Misc'
  );
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'TAS', 'Tender Authorization System','System for validating tender','IT'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TC', 'Team center','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TCS', 'TATA Consultants','IT consultant','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TCRA', 'Team center Reporting and Analytics','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TEC', 'Tax Exempt Card','A card showed at POS to prove the organization tax exempt','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TFM', 'Territory Finance Manager','Manages the finance of a territory','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TFSD', 'Territory Field Support Director','Director position of field support','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TGM', 'Territory General Manager','General Manager of a Best Buy territory','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TL', 'Truck Load','normally refers to a full trailer','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TLA', 'Three Letter Acronym','An acronym with only 3 letters in it (Eg. TLA)','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TLC', 'Time and Labor Center','Used to request time off and to clock in/out for hourly employees','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TTS', 'Total Tech Support ','Subscription based service that gives the customer support for ALL of their devcices','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TORE', 'Talking Shrink, Recognition, Ownership & Education.','Company shrink plan','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TPOV', 'Teachable Point Of View','Being in a point of view that you teach','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TRUST', 'Thank you, Respect, Understanding, Solving together, Thank you again','Something to remeber when speaking with a customer','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TW', 'This Week','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'UB', 'Universal Basket','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'UPC', 'Universal Product Code','Barcode on an Item in the store','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'UPT', 'Units Per Transaction','A sales metric often used in the retail sales sector to measure the average number of items that customers are purchasing in any given transaction','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'UWO', 'Universal Work Order','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'VIM', 'Vendor Information Management','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'VIP', 'Valuable Information Protection','Important information in Best Buy that we keep secure','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'VMA', 'Vendor Master Agreement','a contract reached between parties (Best Buy and Vendors in this case), in which the parties agree to most of the terms that will govern future transactions or future agreements','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'VMI', 'Vendor Managed Inventory','Best Buy inventory managed by a vendor','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'VOCE', 'Voice of the Customer through the Employee','When the employee advocates for the customer','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'VPE', 'Value Proposition Element','Element of you values to show a client','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'VTC', 'Virtuous Teaching Cycle','learning, doing, and then teaching','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'WB', 'Working Plan for Budget','A detailed accounting of how an individual or group proposes going about accomplishing a specific task (In this case for the budget)','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'WIPRO', 'Wipro Consultants','IT services corperation contractors','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory)
VALUES
  (
    'WM', 'Web Methods','null','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'WOLF', 'Women of Leadership Forum','Form for Women of Leadership','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'WOS', 'Weeks of Supply','An inventory measure calculated by dividing current inventory by average sales','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'WP', 'Working Plan for version','A detailed accounting of how an individual or group proposes going about accomplishing a specific task','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'WRF', 'Work Request Form','A task or a job for a customer, that can be scheduled or assigned to someone (for stores)','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'WTW', 'Win the Weekend','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'WWC', 'Working With a Coach','When someone works with their coach on recieving feedback on their work','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'YOY', 'Year Over Year','A method of evaluating two or more measured events to compare the results at one time period with those of a comparable time period on an annualized basis','Finance'
  )
;


//drop table acrocloud.acronym;

