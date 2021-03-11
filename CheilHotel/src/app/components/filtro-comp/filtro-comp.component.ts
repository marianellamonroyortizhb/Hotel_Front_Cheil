import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'filtro-comp',
  templateUrl: './filtro-comp.component.html',
  styleUrls: ['./filtro-comp.component.css']
})
export class FiltroCompComponent implements OnInit {

  constructor() { }
  filtroHotel = '';
  filtrar = [
    {
      "id": 1,
      "hotel": "Hotel 1",
      "estrellas": "3",

    },
    {
      "id": 2,
      "hotel": "Hotel 2",
      "estrellas": "2"
    },
    {
      "id": 3,
      "hotel": "Hotel 3",
      "estrellas": "4"
    },
    {
      "id": 4,
      "hotel": "Hotel 4",
      "estrellas": "3"
    },
    {
      "id": 5,
      "hotel": "Hotel 5",
      "estrellas": "5"
    }
  ];
  ngOnInit(): void {
  }

}
