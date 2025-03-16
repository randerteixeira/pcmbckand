import { prisma } from "../libs/prisma"
import { Prisma } from "@prisma/client"



export const  createdUser = async(data:Prisma.UserCreateInput)=>{
    try{
     const user = await prisma.user.create({
        data
     })
     return user;
    }catch(error){
        return false 
    }

}

export const createUser = async(users:Prisma.UserCreateManyInput[])=>{
    users=[]
    try {
        return await prisma.user.createMany({
            data:users,
            skipDuplicates:true
        })
        
    } catch (error) {
        return false
        
    }

    


}
export const getAllUsers = async ()=>{
    const users = await prisma.user.findMany()
    return users

}

export const getUser = async(email:string)=>{
    const user = await prisma.user.findUnique({
        where:{ email},
        select:{
            name:true,
            email:true
        }
    })
    return user
}

