package dc.demospring_javapoz21_h2.dao;

import dc.demospring_javapoz21_h2.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Integer> {
    // na razie nic tutaj nie dodajemy (a można tworzyć własne zapytania ;)
}
