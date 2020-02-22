class Opponent < ActiveHash::Base
  self.data = [
      {id: 1, name: '巨人'}, {id: 2, name: 'ヤクルト'}, {id: 3, name: '中日'},
      {id: 4, name: '阪神'}, {id: 5, name: '広島'}, {id: 6, name: '日本ハム'}, {id: 7, name: '楽天'}, {id: 8, name: '千葉ロッテ'}, {id: 9, name: '西武'}, {id: 10, name: 'オリックス'}, {id: 11, name: 'ソフトバンク'},
  ]
end