export interface ItemType {
  id?: number;
  title?: string | Resource;
  img?: string | Resource;
}

export interface GoodsType {
  id?: number;
  img?: string | Resource;
  title?: string | Resource;
  desc?: string | Resource;
  comment?: number;
  rate?: number;
  price?: number;
}