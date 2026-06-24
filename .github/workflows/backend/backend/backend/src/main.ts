import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import * as dotenv from 'dotenv';

async function bootstrap() {
  dotenv.config();
  const app = await NestFactory.create(AppModule);
  app.setGlobalPrefix('api');
  app.enableCors(); // dev only
  await app.listen(process.env.PORT || 3000);
  console.log(`Backend running on ${await app.getUrl()}`);
}
bootstrap();
