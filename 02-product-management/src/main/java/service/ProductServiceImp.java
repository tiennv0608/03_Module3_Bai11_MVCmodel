package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImp implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Milk", 7000, "Dutch Lady", "Vinamilk"));
        products.put(2, new Product(2, "Snack", 5000, "Crab me", "Oishi"));
        products.put(3, new Product(3, "Drink", 15000, "Cocacola", "Cocacola"));
        products.put(4, new Product(4, "Karo", 32000, "Egg cake", "Richy"));
        products.put(5, new Product(5, "Sausage", 24000, "Pig sausage", "Ponnie"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> list = new ArrayList<>();
        for (int i = 0; i < findAll().size(); i++) {
            if (findAll().get(i).getName().equals(name)) {
                list.add(findAll().get(i));
            }
        }
        return list;
    }
}
