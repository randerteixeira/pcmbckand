import { prisma } from "../libs/prisma"


type createdUserProps={
    name:string,
    email:string
}
export const  createdUser = async({name, email}:createdUserProps)=>{
    try{
     const user = await prisma.user.create({
        data:{
            name,
            email
        }
     })
     return user;
    }catch(error){
        return false
    }

}