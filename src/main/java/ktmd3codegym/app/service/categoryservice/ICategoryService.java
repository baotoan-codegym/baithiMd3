package ktmd3codegym.app.service.categoryservice;

import java.util.List;

public interface ICategoryService<Category> {
    List<Category> findAll();
Category findById(int id);
    void save(Category p);
    void delete(int id);
    void edit(int id,Category e);
}
