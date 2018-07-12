//THIS IS WHERE OUR JAVA API WILL BE WITH DATABASE INFORMATION
import { Acronym } from './acronym';

export const acronyms: Acronym[] = [
  { acronym:'FMS', name: 'Field Managment System', description: 'FMS', catagory: 'Product' },
  { acronym:'OMS', name: 'Order Management System', description: 'OMS', catagory: 'Product' },
  { acronym:'TTS', name: 'Total Tech Support', description: 'TTS', catagory: 'IT'},
  { acronym:'GPS', name: 'Geek Squad Protection', description: 'GPS', catagory: 'Product' },
  { acronym:'ETK', name: 'Employee Tool Kit', description: 'ETK', catagory: 'Product' },
  { acronym:'ESP', name: 'Enterprise Service Platform', description: 'ESP', catagory: 'IT' },
  { acronym:'POS', name: 'Point of Sale', description: 'POS', catagory: 'Product'},
  { acronym:'EXB', name: 'Exclusive Brand', description: 'EXB', catagory: 'Finance' }
];
