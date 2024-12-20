type Categoryprops = {
  id?: string;
  title: string;
  color: string;
};
export class Category {
  public id?: string;
  public title: string;
  public color: string;

  constructor(props: Categoryprops) {
    this.id = props.id;
    this.title = props.title;
    this.color = props.color.toUpperCase();
  }
}
