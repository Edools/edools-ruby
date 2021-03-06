# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: edools-api 0.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "edools-api"
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Vinicius Kastrup"]
  s.date = "2015-07-16"
  s.description = "\n    With this gem you'll be able to access and manipulate all the data of your School or Organization\n    hosted at Edools.\n  "
  s.email = "viniciusmkm@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".editorconfig",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "edools-api.gemspec",
    "lib/edools.rb",
    "lib/edools/base.rb",
    "lib/edools/config.rb",
    "lib/edools/core.rb",
    "lib/edools/core/address.rb",
    "lib/edools/core/api_key.rb",
    "lib/edools/core/base.rb",
    "lib/edools/core/category.rb",
    "lib/edools/core/collaborator.rb",
    "lib/edools/core/course.rb",
    "lib/edools/core/course_content.rb",
    "lib/edools/core/course_module.rb",
    "lib/edools/core/enrollment.rb",
    "lib/edools/core/lesson.rb",
    "lib/edools/core/media.rb",
    "lib/edools/core/organization.rb",
    "lib/edools/core/path.rb",
    "lib/edools/core/registration.rb",
    "lib/edools/core/school.rb",
    "lib/edools/core/school_product.rb",
    "lib/edools/core/session.rb",
    "lib/edools/core/student.rb",
    "lib/edools/ecommerce.rb",
    "lib/edools/ecommerce/base.rb",
    "lib/edools/ecommerce/coupon.rb",
    "lib/edools/ecommerce/product.rb",
    "lib/edools/initialization.rb",
    "lib/edools/paginated_collection.rb",
    "spec/edools/core/address_spec.rb",
    "spec/edools/core/api_key_spec.rb",
    "spec/edools/core/base_spec.rb",
    "spec/edools/core/category_spec.rb",
    "spec/edools/core/collaborator_spec.rb",
    "spec/edools/core/course_content_spec.rb",
    "spec/edools/core/course_module_spec.rb",
    "spec/edools/core/course_spec.rb",
    "spec/edools/core/enrollment_spec.rb",
    "spec/edools/core/lesson_spec.rb",
    "spec/edools/core/media_spec.rb",
    "spec/edools/core/organization_spec.rb",
    "spec/edools/core/path_spec.rb",
    "spec/edools/core/registration_spec.rb",
    "spec/edools/core/school_product_spec.rb",
    "spec/edools/core/school_spec.rb",
    "spec/edools/core/session_spec.rb",
    "spec/edools/core/student_spec.rb",
    "spec/edools/ecommerce/base_spec.rb",
    "spec/edools/ecommerce/coupon_spec.rb",
    "spec/edools/ecommerce/product_spec.rb",
    "spec/fixtures/vcr_cassettes/Edools_Core_Address/create_the_address.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Address/destroy_the_address.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Address/finds_the_address.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Address/update_the_address.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_ApiKey/finds_the_api_key.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Category/create_the_category.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Category/destroy_the_category.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Category/finds_all_category.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Category/finds_the_category.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Category/update_the_category.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Collaborator/create_the_collaborator.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Collaborator/destroy_the_collaborator.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Collaborator/finds_all_collaborator.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Collaborator/finds_the_collaborator.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Collaborator/update_the_collaborator.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Course/create_the_course.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Course/destroy_the_course.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Course/finds_all_course.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Course/finds_the_course.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Course/update_the_course.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_CourseContent/create_the_course_content.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_CourseContent/destroy_the_course_content.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_CourseContent/finds_all_course_content.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_CourseContent/finds_the_course_content.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_CourseContent/update_the_course_content.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_CourseModule/create_the_course_module.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_CourseModule/destroy_the_course_module.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_CourseModule/finds_all_course_module.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_CourseModule/finds_the_course_module.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_CourseModule/update_the_course_module.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Enrollment/create_the_enrollment.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Enrollment/finds_all_enrollment.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Enrollment/finds_the_enrollment.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Enrollment/update_the_enrollment.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Lesson/create_the_lesson.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Lesson/destroy_the_lesson.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Lesson/finds_all_lesson.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Lesson/finds_the_lesson.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Lesson/update_the_lesson.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Media/create_the_media.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Media/destroy_the_media.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Media/filters_by_title.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Media/finds_all_media.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Media/finds_the_media.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Media/update_the_media.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Path/create_the_path.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Path/destroy_the_path.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Path/finds_all_path.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Path/finds_the_path.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Path/update_the_path.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_School/create_the_school.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_School/finds_all_school.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_School/finds_the_school.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_School/update_the_school.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_SchoolProduct/create_the_school_product.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_SchoolProduct/destroy_the_school_product.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_SchoolProduct/finds_all_school_product.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_SchoolProduct/finds_the_school_product.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_SchoolProduct/update_the_school_product.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Session/create_the_session.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Student/create_the_student.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Student/destroy_the_student.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Student/finds_all_student.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Student/finds_the_student.yml",
    "spec/fixtures/vcr_cassettes/Edools_Core_Student/update_the_student.yml",
    "spec/fixtures/vcr_cassettes/Edools_Ecommerce_Coupon/create_the_coupon.yml",
    "spec/fixtures/vcr_cassettes/Edools_Ecommerce_Coupon/destroy_the_coupon.yml",
    "spec/fixtures/vcr_cassettes/Edools_Ecommerce_Coupon/finds_all_coupons.yml",
    "spec/fixtures/vcr_cassettes/Edools_Ecommerce_Coupon/finds_the_coupon.yml",
    "spec/fixtures/vcr_cassettes/Edools_Ecommerce_Coupon/update_the_coupon.yml",
    "spec/fixtures/vcr_cassettes/Edools_Ecommerce_Product/create_the_product.yml",
    "spec/fixtures/vcr_cassettes/Edools_Ecommerce_Product/destroy_the_product.yml",
    "spec/fixtures/vcr_cassettes/Edools_Ecommerce_Product/finds_all_product.yml",
    "spec/fixtures/vcr_cassettes/Edools_Ecommerce_Product/finds_the_product.yml",
    "spec/fixtures/vcr_cassettes/Edools_Ecommerce_Product/update_the_product.yml",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/Edools/edools-api"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "This gem is a Ruby wrapper for all Edools API's"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activeresource>, [">= 4.0.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0.0"])
      s.add_development_dependency(%q<vcr>, ["~> 2.9.2"])
      s.add_development_dependency(%q<webmock>, ["~> 1.18.0"])
      s.add_development_dependency(%q<pry>, ["~> 0.10.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.7"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<activeresource>, [">= 4.0.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0.0"])
      s.add_dependency(%q<vcr>, ["~> 2.9.2"])
      s.add_dependency(%q<webmock>, ["~> 1.18.0"])
      s.add_dependency(%q<pry>, ["~> 0.10.0"])
      s.add_dependency(%q<yard>, ["~> 0.7"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<activeresource>, [">= 4.0.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0.0"])
    s.add_dependency(%q<vcr>, ["~> 2.9.2"])
    s.add_dependency(%q<webmock>, ["~> 1.18.0"])
    s.add_dependency(%q<pry>, ["~> 0.10.0"])
    s.add_dependency(%q<yard>, ["~> 0.7"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end

