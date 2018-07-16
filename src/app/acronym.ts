export class Acronym {
    acronym: string = "F.M.s.";
    name: string;
    description: string;
    catagory:string;
    
    setAcronym(acro: string){
        this.acronym=acro;
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
