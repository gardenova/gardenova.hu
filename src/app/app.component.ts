import { Component } from '@angular/core';
import { Title } from '@angular/platform-browser';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  public constructor(private titleService: Title) {
    titleService.setTitle(this.title);
  }

  title = 'Gardenova - Mindenünk a gyümölcs';
  apples: Apple[] = [
    new Apple("Red Chief Delicious (Jeromine)", "redchief.jpg"),
    new Apple("Golden Reinders", "golden.jpg"),
    new Apple("Devil Gala", "devil.jpg"),
    new Apple("Buckeye Gala", "buckeye.jpg"),
    new Apple("Red Jonaprince (Jonagold)", "jona.jpg"),
    new Apple("Idared", "idared.jpg"),
    new Apple("Florina", "florina.jpg")
  ]
}

class Apple {
  constructor(public name: string = '', public image_path: string = '') { }
}