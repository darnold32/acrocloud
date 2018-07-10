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
values ('FMS', 'Field Management System', 'test', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('TDS', 'Test Data Management', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('TTS','Total Tech Support', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ECC', 'Enterprise Customer Care', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('OCIS', 'Open Customer Information Systems', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('dotcom', 'bestbuy.com', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('MTO', 'Marketing Technology and Operations', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('POS', 'Point of Sale', 'Recieves Tender from the customer', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ETK', 'Employee Tool Kit ETK', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CB', 'Core Blue', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('EDW', 'Enterprise Data Warehouse', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ODS', 'Operational Data Store', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('GSP', 'Geek Squad Protection', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('SFMC', 'Sales Force Management System', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ( 'UWO', 'Universal Work Order', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('IPT', 'Integrations Program Testing', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ITRB', 'Information Technology Review Board', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('APT', 'Application Program Testing', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CE', 'Category Expansion', 'Security and data privacy', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('EIP', 'Enterprise Information Protection', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ECC', 'Enterprise Customer Care', 'Best Buy customer service, usually over phone', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('AID', 'Alias ID eg, A6000352', 'BestBuy employee Identification number', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('APT', 'Application Program/product Testing', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('COE', 'Center of Excellence', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CER', 'Capital Expenditure Request', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CW', 'Contingent Worker', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('DR', 'Disaster Recovery', 'IT', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('DTMS', 'Deal Tree Managment System', 'An inventory system, a fulfillment system for secondary markets', 'IT' );


insert into acrocloud.acronym (acronym, name, description, catagory)
values ('EA', 'Enterprise Architechture', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('EBS', 'Oracle E Business Suite', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ECC', 'Best Buy Customer Care', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('EDW', 'Enterprise Data Warehouse', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('EIP', 'Enterprise Information ', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('FTE', 'Full Time Equivalent', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('GSC', 'Geek Squad City', 'largest geek squad service center located in Louisville', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('IAM', 'Identity Access Managment', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('IPT', 'Integration Product Testing', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ITRB', 'Information Technology Review Board', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('MAG', 'Magnolia', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('MSA', 'Master Service Agreement', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('NOVA', 'Geek Squad System', 'In store Geek Squad system used by Agents', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('NPS', 'Net Promoter Score', 'It is a management tool that can be used to gauge the loyalty of a firms customer relationship', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('OCIS', 'Open C', 'Source of Geek Squad Services contracts/GSP plans', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ODW', 'Oracle Data Warehouse', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('OEM', 'Original Equipment Manager', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('OMS', 'Order Management System', 'The OMS/FMS solution is a multi channel, integrated solution where OMS is the order', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('OWA', 'Outlook Web Access', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('PAC', 'Pacific Sales', 'Sells kitchen, bath and home appliances (usually in the Best Buy Store)', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('PCM', 'Project Capability Manager', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('POS', 'Point of Sale', 'Used to process transcations and tender payment in stores', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('PSP', 'Performace Service Plan', 'Old Plan Type', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('PWA', 'Project Web App', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RA', 'Return Authorization', 'Determines if a product requires a return authorize request.', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RAID', 'Risk, Action, Issue and Decision Log', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RASC', 'Reporting Analtyic Score Card', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RASCI', 'Responsible Approver Suppoerting Consulted Informed', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RFC', 'Request for Change', 'Change Management', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RMS', 'Retek Management System', 'Best Buy system of record for inventory', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RTI', 'Retail Technology Infrastructure', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('SPU', 'Store Pick Up', 'Customer has prepaid and picks item up at Best Buy Store', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ISPU', 'In Store Pick Up', 'Customer prepays and picks item up in the Best Buy store', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('SAB', 'Solution Architechture Board', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('SCA', 'Supply Chain Alliance', '3rd party Vendor that created many systems such as Bombay and SmartParts', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('SME', 'Subject Matter Experts', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('STAR', 'Service Order Management System', 'Used by Agents in stores to look at Service Orders (REPALCED BY NOVA)', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('TPA', 'Third Party Administrator', 'see AIG Warranty', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('UAT', 'User Acceptance Test', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ADFS', 'Active Directory Federation Services', 'IBM and Microsoft', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('BDID', 'Bulk Data Integration- Database', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('BDI', 'Bulk Data Integration', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('BEDIF', 'Bulk Data Integration- File', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CAP', 'Carrier Activation Platform', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CPE', 'Complex Pricing Engine', 'null', 'IT' );


insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CPP', 'Complex Pricing Publisher', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CSI', 'Customer Service Index', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('DMS', 'Digital Message Switchport', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ESP', 'Enterprise Service Platform', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ET', 'Exact Target', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('GSX', 'Global Service Exchange', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('IAC', 'Interal Application Communication', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ISS', 'In-Store Scheduling', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('ITSAB', 'Information Technology Solution Architechture Board', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('MVP', 'Minimum Viable Product', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('OSA', 'Online Support Application', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('PDW', 'parallel Data Warehouse', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('SDP', 'Service Delivery Platform', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('TER', 'Triage Entitlement Routing', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('TSH', 'Tag Super Highway', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('WCF', 'Windows Commmunication Foundation', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('WMS', 'Warehouse Management System', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('WPF', 'Windows Presentation Foundation', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('AIG', 'American International Group', 'Underwriting company for Best Buy', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('COM', 'Compelxt Offer', 'Umrella of OMT and CPE', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('FYR', 'For you records', 'null', 'Misc' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('BTI', 'Operations and Events Reporting', 'Paired with OCIS', 'Misc' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RESA', 'Umbrella for Digital Content', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('CDC', 'Connectivity and Digital Content', 'null', 'IT' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('AWB', 'Agent Work Bench', 'null', 'Misc' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('GL', 'General Ledger', 'null', 'Finance' );

insert into acrocloud.acronym (acronym, name, description, catagory)
values ('RISE', 'Determines if there can be a return on a service', 'null', 'IT' );



Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ACN', 'Accenture','Contract Employee Provider','Mics'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ACCN', 'Accenture', 'Contract Employees Provider','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ADM', 'Application Development and Maintenance', 'null','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ADR', 'Advanced Diagnostic and Repair', 'null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'AHRM', 'Area Human Resources Manager','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'AIDU', 'Accenture Incident Diagnostic Utility','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'AJU', 'Agent Jonny Utah - Black Ops agent that connect remotely to customers computers.','null','IT');
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
        'AO', 'Asia Office','null','Misc'
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
    'AP', 'Accounts Payable','null','Finance'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'AR', '1. Ad Reactions 2. At - Risk','null','Finance');
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'AR', 'Accounts Receivable','null','Finance'
    )
;
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
    'ASP', 'Average Selling Price','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ATU', 'Auto Top Up','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'B2B', 'Business to Business','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BAPS', 'Biases - Assumptions - Prejudices - Stereotypes','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BBFB', 'Best Buy for Business','OUTDATED NOW BBYD','Misc'
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
    'BBY', 'Best Buys stock symbol','null','Finance'
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
    'BFS', 'Built For Speed','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BHAG', 'Big Hairy Audacious Goal','null','Misc'
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
    'BOL', '1. Back Office Lead 2. Bill of Lading','null','Misc');
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'BPM', 'Business Performance Management','null','HR'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BTC', 'Business Technology Consultant','null','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BTP', 'Black Tie Protection','null','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'BYOD', 'Bring your own device','null','Misc'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CA', '1. Customer Assistant 2. Customer Availability 3. Canada','null','Misc');
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'CALM', 'Customer Assistance Listening Model' ,'null','Misc'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CAP', 'Carrier Activation Platform','null','IT'
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
      'CAS', 'Customer Appointment Scheduling','null','Product'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CB', 'Current Budget','Locked Budget','Finance'
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
    'CCC', 'Customer Centric Cycle','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CCEE', 'Customer Centric Experience Evaluation','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CCM', 'Customer Contact Manager','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CDT', 'Customer Domain Team','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CEB', 'Capital Evaluation Board','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CEE', 'Customer Experience Evaluation','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CEM', 'Customer Experience Manager','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CER', 'Capital Expenditure Request','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CF', 'Customer Fulfillment','null','Misc'
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
    'COE', 'Center of Excellence','null','Misc'
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
    'CPE', 'Controllable Promotional Expense.','null','Finance'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CPM', 'Clearance Price Management','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CREST', 'Customer Relationship Employee Support Tools','null','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CR', 'Consumer Relations','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CRM', '1.Symphony 2.Customer Relationship Management','Symphony Connects all customer interactions to provice a more personal connection with the customer','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CSE', 'Customer Service Evaluation','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CSI', 'Customer Satisfaction Index','null','HR'
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
    'CSR', 'Customer Service Representative','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CTI', 'Computer / Telephony Integration','null','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'CTM', 'Collaborative Transportation Management','null','HR'
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
    'DAW', 'District Appliance Warehouse','null','Misc'
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
    'DC', 'Distribution Center','null','Misc'
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
    'DCSM', 'District Connectivity Sales Manager','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DDC', 'Delivery Distribution Center','null','Misc'
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
    'DFA', 'Demand Forecast Analyst','null','Finance'
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
    'DFSM', 'District Field Support Manager','null','HR'
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
    'DI', '1.  Digital Imaging 2. Direct Import','null','IT'
    );
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'DIH', 'Drive It Hard','null','Misc'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DM', 'District Manager','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DMA', 'Designated Market Area','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DP', 'Demand Planning','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DPA', 'Demand Planning Analyst','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DSUB', 'Digital Subscription','null','IT'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'DT', '1. Dealtree 2. Digital Technologies','null','Misc');
 
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
    'DWO', 'Damage Write-off','null','Finance'
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
    'E2E', 'End-to-End','null','Finance'
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
    'ECB', 'External Communication Broker','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ECC', 'Enterprise Contact Center','null','Finance'
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
    'EDI', '1.Electronic Data Interchange 2. Employee Driven Intelligence ','null','IT'
  )
;

Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'EIP', 'Enterprise Information Protection ','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'EJ', 'Electronic Journal','null','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'EOL', 'End of Life','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'EPRO', 'Best Buy Directs Electronic Procurement','null','IT');
 
Insert into
    acrocloud.acronym (acronym, name, description, catagory) 
VALUES
    (
    'ESC', ' Electronic Subscription Capture','null','IT'
    )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ESPP', 'Employee Stock Purchase Plan','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'ETK', 'Employee Toolkit','null','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'EXB', 'Exclusive Brands','null','Misc'
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
    'FC', 'Forecast','null','Finance'
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
    'FIRST', ' Friendly, Immediate Recognition, Say "Hi" and "Thank You."',  'A Pledge to our customers.','HR'
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
    'FMS', 'Field Management System','null','Product'
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
    'FT', 'Full-Time', 'Ex. a FT Employee','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FWOS', 'Forward Weeks of Supply','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'FY', 'Fiscal Year','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GBI', 'Global Business Intelligence','null','Misc'
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
    'GBS', 'Global Business Services','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GLN', 'Global Location Number','null','Misc'
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
    'GMD', 'Gross Margin Dollars','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GMP', ' Gross Margin Percent','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GNFR', 'Goods Not for Retail','null','Finance'
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
    'GO', 'Grand Opening','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GOIT', 'GM Third Interview, Over budget Meeting, Inventory Integrity, Talk Shrink','null','Misc'
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
    'GS', 'Geek Squad','null','Product'
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
    'GSPP', 'Geek Squad Protection Plus','null','Product'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'GSR', 'Growth Store Reporting','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'HACCS', 'Hardware, Accessories, Content, Connections, Services','null','Product'
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
    'HEET', 'Home Entertainment Experience Transformation','null','Misc'
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
    'KPM', 'Key Performance Metric','Measures an organization\'s behavior, activities, and performance. It should support a range of stakeholder needs from customers, shareholders to employees.','HR'
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
    'ODW', 'Oracle Data Warehouse','Is Oracle\'s new, fully managed database tuned and optimized for data warehouse workloads with the market-leading performance of Oracle Database 18c','IT'
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
    'OGM', 'Operational Gross Margin','Metric used to measure a company\'s profitability.','Finance'
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
    'PDG', 'Performance & Development Guide','Opportunity for employees and managers to plan for an individual\'s development with an eye toward the department\'s future needs\'(On Learning Network)','HR'
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
    'PSP', 'Performance Service Plan','null','Product'
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
    'RA', '1. Regular Advertised 2. Revenue Assurance','null','Finance'
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
    'SDF', 'Supplier Direct Fulfillment','Extends a retailer\'s fulfillment capability by adding the supplier\'s capacity and specialized knowledge for handling and shipping products without the cost of building a facility or hiring an employee.','Finance'
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
    'SKU', 'Stock Keeping Unit','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SLA', 'Service Level Agreement','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SO', 'Sales Operator','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SOP', ' Standard Operating Platform','null','Misc'
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
    'SPE', 'Smart Phone Experts','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SR', 'Shop Reactions','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SSM', 'Store Services Manager','null','HR'
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
    'STC', 'Sell-through credit','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'STH', 'Sales Transaction Hub or Ship To Home','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'STI', 'Short Term Incentive','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'STS', 'Special Technical Services','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'SWAS', 'Store Within a Store','null','Misc'
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
    'TAS', 'Tender Authorization System','null','IT'
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
    'TCS', 'TATA Consultants','null','Misc'
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
    'TEC', 'Tax Exempt Card','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TFM', 'Territory Finance Manager','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TFSD', 'Territory Field Support Director','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TGM', 'Territory General Manager','null','HR'
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
    'TLA', 'Three Letter Acronym','null','Misc'
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
    'TTS', 'Total Tech Support ','null','Product'
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
    'TPOV', 'Teachable Point Of View','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'TRUST', 'Thank you, Respect, Understanding, Solving together, Thank you again','null','HR'
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
    'UPT', 'Units Per Transaction','null','Misc'
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
    'VIP', 'Valuable Information Protection','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'VMA', 'Vendor Master Agreement','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'VMI', 'Vendor Managed Inventory','null','Finance'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'VOCE', 'Voice of the Customer through the Employee','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'VPE', 'Value Proposition Element','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'VTC', 'Virtuous Teaching Cycle','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'WB', 'Working Plan for Budget','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'Wipro', 'Wipro Consultants','null','Misc'
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
    'WOLF', 'Women of Leadership Forum','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'WOS', 'Weeks of Supply','null','Misc'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'WP', 'Working Plan for version','null','IT'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'WRF', 'Work Request Form (for stores)','null','HR'
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
    'WWC', 'Working With a Coach','null','HR'
  )
;
Insert into
  acrocloud.acronym (acronym, name, description, catagory) 
VALUES
  (
    'YOY', 'Year Over Year','null','Finance'
  )
;


//drop table acrocloud.acronym;

