import { Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';

@Injectable()
export class AuthService {
  constructor(private jwtService: JwtService) {}

  async signPayload(payload: any) {
    return this.jwtService.signAsync(payload);
  }

  async validateUser(email: string): Promise<any> {
    // stub: replace with real DB lookup
    return { id: 1, email };
  }
}
