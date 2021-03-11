import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'pipe'
})
export class PipePipe implements PipeTransform {

  transform(value: any, arg: any): any {
    const resultado = [];
    for (const filtrar of value) {
      if (filtrar.hotel.toLowerCase().indexOf(arg.toLowerCase()) > -1 ){
        resultado.push(filtrar);
      };
    };
    return resultado;
  };


}
