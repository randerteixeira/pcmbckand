import { Router } from 'express';
import { prisma } from '../libs/prisma'
import { createdUser, createUser,getAllUsers,getUser } from '../services/user'


export const mainRouter = Router();




mainRouter.get('/ping', (req, res) => {
    res.json({ pong: true });
});


mainRouter.get('/users', async (req, res) => {
    const users = await getAllUsers();
    res.json(users);
});

