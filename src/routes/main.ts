import { Router } from 'express';
import { prisma } from '../libs/prisma'
import {createdUser} from '../services/user'

export const mainRouter = Router();

mainRouter.get('/ping', (req, res) => {
    res.json({ pong: true });
});


mainRouter.post('/user', async (req, res) => {
    
   const user = await createdUser({
    name:'manuela alvarenga ',email:'teste01@gmail.com'
   })
   if(user){
    res.status(201).json({
        user
     })

   }else{
    res.json({
        error:'erro ao criar usuário'
    })
    
   }

   
})