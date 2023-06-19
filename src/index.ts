import express, { Application, Request, Response } from 'express';
import * as dotenv from 'dotenv';

dotenv.config();
if (!process.env.PORT) {
  process.exit(1);
}
const app: Application = express();

const port: number = parseInt(process.env.PORT as string, 10);

app.get('/', (req: Request, res: Response) => {
  res.send('Hello world!');
});

app.listen(port, () => {
});
