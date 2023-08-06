# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Code.create([{
    code: 5002,
    title: '真空圧異常',
    body: '吸着がかかったまま物をとりすぎた',
},
{
    code: 3410,
    title: 'FPC搬送吸着異常',
    body: 'FPCが曲がっている',
},
{
    code: 3413,
    title: 'FPCステージ吸着異常',
    body: 'FPCがズレている',
},
{
    code: 3416,
    title: 'チップ搬送吸着異常',
    body: 'チップが残っている',
},
{
    code: 3452,
    title: '搭載ヘッド吸着異常',
    body: 'FPCが曲がって吸着している',
}])