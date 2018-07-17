export class Acronym {
    acronym: string = "F.M.s.";
    name: string;
    description: string;
    catagory:string;
    
    setAcronym(acronym: string){
        this.acronym=acronym;
    }
    getAcronym(){
        return this.acronym;
    }
    setName(name: string){
        this.name=name;
    }
    getName(){
        return this.name;
    }
    setDescription(description: string){
        this.description=description;
    }
    getDescription(){
        return this.description;
    }
    setCatagory(catagory: string){
        this.catagory=catagory;
    }
    getCatagory(){
        return this.catagory;
    }


}
