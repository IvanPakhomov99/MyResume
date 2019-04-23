package net.devstudy.resume.repository.storage;

import org.springframework.data.repository.CrudRepository;

import net.devstudy.resume.entity.ProfileRestore;


public interface ProfileRestoreRepository extends CrudRepository<ProfileRestore, Long> {
	ProfileRestore findByToken(String token);
}
