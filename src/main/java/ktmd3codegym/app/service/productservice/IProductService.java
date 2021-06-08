package ktmd3codegym.app.service.productservice;

import java.util.List;

public interface IProductService<Product> {
    List<Product> findAll();
    Product findById(int id);
    void save(Product p);
    void delete(int id);
    void edit(int id,Product e);
}
