# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{radiant-images-extension}
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dirk Kelly", "Mario Visic"]
  s.date = %q{2010-12-31}
  s.description = %q{Image Radiant Extension management tool, meant only to be useful to pages and extensions that need to require images.}
  s.email = %q{info@squaretalent.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "app/controllers/admin/images_controller.rb",
    "app/models/attachment.rb",
    "app/models/image.rb",
    "app/views/admin/images/_bottom.haml",
    "app/views/admin/images/_fields.haml",
    "app/views/admin/images/_fields_bottom.haml",
    "app/views/admin/images/_fields_top.haml",
    "app/views/admin/images/_image.haml",
    "app/views/admin/images/edit.haml",
    "app/views/admin/images/index.haml",
    "app/views/admin/images/new.haml",
    "app/views/admin/images/remove.haml",
    "config/locales/en.yml",
    "config/routes.rb",
    "cucumber.yml",
    "db/migrate/20100601042237_create_images.rb",
    "db/migrate/20100602044124_add_position_to_images.rb",
    "db/migrate/20100929150930_change_images_to_created_by_id.rb",
    "db/migrate/20101208095450_create_attachments.rb",
    "features/support/env.rb",
    "features/support/paths.rb",
    "images_extension.rb",
    "lib/images/interface/admin/images.rb",
    "lib/images/models/page.rb",
    "lib/images/tags/core.rb",
    "lib/images/tags/helpers.rb",
    "lib/radiant-images-extension.rb",
    "lib/tasks/images_extension_tasks.rake",
    "public/images/admin/extensions/images/sort.png",
    "public/images/extensions/images/missing_icon.png",
    "public/images/extensions/images/missing_normal.png",
    "public/images/extensions/images/missing_preview.png",
    "public/stylesheets/sass/admin/extensions/images/edit.sass",
    "public/stylesheets/sass/admin/extensions/images/index.sass",
    "radiant-images-extension.gemspec",
    "spec/controllers/admin/images_controller_spec.rb",
    "spec/datasets/attachments.rb",
    "spec/datasets/images.rb",
    "spec/datasets/squaretalent.png",
    "spec/lib/images/tags/core_spec.rb",
    "spec/lib/images_extension_spec.rb",
    "spec/models/attachment_spec.rb",
    "spec/models/image_spec.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/squaretalent/radiant-images-extension}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Images Extension for Radiant CMS}
  s.test_files = [
    "spec/controllers/admin/images_controller_spec.rb",
    "spec/datasets/attachments.rb",
    "spec/datasets/images.rb",
    "spec/lib/images/tags/core_spec.rb",
    "spec/lib/images_extension_spec.rb",
    "spec/models/attachment_spec.rb",
    "spec/models/image_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<radiant>, [">= 0.9.1"])
      s.add_runtime_dependency(%q<paperclip>, ["~> 2.3.5"])
      s.add_runtime_dependency(%q<aws-s3>, [">= 0.6.2"])
      s.add_runtime_dependency(%q<acts_as_list>, [">= 0.1.2"])
      s.add_development_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_development_dependency(%q<rr>, [">= 1.0.0"])
    else
      s.add_dependency(%q<radiant>, [">= 0.9.1"])
      s.add_dependency(%q<paperclip>, ["~> 2.3.5"])
      s.add_dependency(%q<aws-s3>, [">= 0.6.2"])
      s.add_dependency(%q<acts_as_list>, [">= 0.1.2"])
      s.add_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_dependency(%q<rr>, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<radiant>, [">= 0.9.1"])
    s.add_dependency(%q<paperclip>, ["~> 2.3.5"])
    s.add_dependency(%q<aws-s3>, [">= 0.6.2"])
    s.add_dependency(%q<acts_as_list>, [">= 0.1.2"])
    s.add_dependency(%q<rspec>, [">= 1.3.0"])
    s.add_dependency(%q<rr>, [">= 1.0.0"])
  end
end

