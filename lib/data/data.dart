
import 'model/categories_models.dart';

String apiKey="563492ad6f917000010000010704917e21f348b4b587eb22b52ac620";

List<CategoriesModel> getCategories(){
  List<CategoriesModel> categories = new List();
  CategoriesModel categoriesModel = new CategoriesModel();

  categoriesModel.categoriesName="Doğa";
  categoriesModel.imgUrl="https://images.pexels.com/photos/3293148/pexels-photo-3293148.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categories.add(categoriesModel);
  categoriesModel=new CategoriesModel();

  //
  categoriesModel.categoriesName="Araba";
  categoriesModel.imgUrl="https://images.pexels.com/photos/3802510/pexels-photo-3802510.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categories.add(categoriesModel);
  categoriesModel=new CategoriesModel();


  //
  categoriesModel.categoriesName="Çiçekler";
  categoriesModel.imgUrl="https://images.pexels.com/photos/60909/rose-yellow-flower-petals-60909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categories.add(categoriesModel);
  categoriesModel=new CategoriesModel();

  //
  
  categoriesModel.categoriesName="Şehirler";
  categoriesModel.imgUrl="https://images.pexels.com/photos/2100018/pexels-photo-2100018.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categories.add(categoriesModel);
  categoriesModel=new CategoriesModel();

  //
  categoriesModel.categoriesName="Motivasyon";
  categoriesModel.imgUrl="https://images.pexels.com/photos/2740956/pexels-photo-2740956.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categories.add(categoriesModel);
  categoriesModel=new CategoriesModel();
  //
  categoriesModel.categoriesName="Motor";
  categoriesModel.imgUrl="https://images.pexels.com/photos/2317475/pexels-photo-2317475.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  categories.add(categoriesModel);
  categoriesModel=new CategoriesModel();

  return categories;
}