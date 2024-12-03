import { PrismaClient } from "@prisma/client";
import express from "express";

const app = express();
app.use(express.json());

const client = new PrismaClient();

app.get("/", (req, res) => {
    res.json({
        message: "CI/CD is working!"
    })
})

app.get('/users', async (req, res) => {
    res.json(await client.user.findMany());
})

app.post("/", async (req, res) => {
    await client.user.create({
        data: {
            email: req.body.email,
            password: req.body.pass
        }
    })

    res.json({
        message: "Done signing up!"
    })
})

app.listen(3000, () => console.log("Listening on port 3000"));