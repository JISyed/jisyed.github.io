require "rubygems"
require "bundler/setup"
require "stringex"
require "fileutils"

## -- Config -- ##

public_dir      = "public"    # compiled site directory
posts_dir       = "_posts"    # directory for blog files
projects_dir    = "projects"  # directory for projects
new_post_ext    = "md"  # default new post file extension when using the new_post task
new_page_ext    = "md"  # default new page file extension when using the new_page task
new_project_ext = "md"  # default new project file extension when using the new_project task


#############################
# Create a new Post or Page #
#############################

# usage rake new_post
desc "Create a new post in #{posts_dir}"
task :new_post, :title do |t, args|
  if args.title
    title = args.title
  else
    title = get_stdin("Enter a title for your post: ")
  end
  filename = "#{posts_dir}/#{Time.now.strftime('%Y')}/#{Time.now.strftime('%Y-%m-%d')}-#{title.to_url}.#{new_post_ext}"
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end
  domain_meta = get_stdin("Enter the post's domain (Art, Audio, Code, Game-Dev, Writing, or Linguistics): ")
  project_meta = get_stdin("Enter the project associated with this post: ")
  tags = get_stdin("Enter tags to classify your post (comma separated): ")
  puts "Creating new post: #{filename}"
  dirname = File.dirname(filename)
  unless File.directory?(dirname)
    FileUtils.mkdir_p(dirname)
  end
  open(filename, 'w') do |post|
    post.puts "---"
    post.puts "layout: post"
    post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
    post.puts "date: #{Time.now.strftime('%Y-%m-%d %H:%M:%S %z')}"
    post.puts "modified: #{Time.now.strftime('%Y-%m-%d %H:%M:%S %z')}"
    post.puts "domain: #{domain_meta}"
    post.puts "project: #{project_meta}"
    post.puts "tags: [#{tags}]"
    post.puts "description: "
    post.puts "#image:"
    post.puts "  #feature: /post-images/blog-header-img.jpg"
    post.puts "  #credit: Drew Hays"
    post.puts "  #creditlink: https://unsplash.com/drew_hays"
    post.puts "comments: false"
    post.puts "share: true"
    post.puts "---"
  end
end

# usage rake new_page
desc "Create a new page"
task :new_page, :title do |t, args|
  if args.title
    title = args.title
  else
    title = get_stdin("Enter a title for your page: ")
  end
  filename = "#{title.to_url}.#{new_page_ext}"
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite? ", ['y', 'n']) == 'n'
  end
  domain_meta = get_stdin("Enter the post's domain (Art, Audio, Code, Game-Dev, Writing, or Linguistics): ")
  project_meta = get_stdin("Enter the project associated with this post: ")
  tags = get_stdin("Enter tags to classify your page (comma separated): ")
  puts "Creating new page: #{filename}"
  open(filename, 'w') do |page|
    page.puts "---"
    page.puts "layout: page"
    page.puts "permalink: /#{title.to_url}/"
    page.puts "title: \"#{title}\""
    page.puts "date: #{Time.now.strftime('%Y-%m-%d %H:%M')}"
    page.puts "modified: #{Time.now.strftime('%Y-%m-%d %H:%M')}"
    page.puts "domain: #{domain_meta}"
    page.puts "project: #{project_meta}"
    page.puts "tags: [#{tags}]"
    post.puts "description: "
    page.puts "#image:"
    page.puts "  #feature: /post-images/blog-header-img.jpg"
    page.puts "  #credit: Drew Hays"
    page.puts "  #creditlink: https://unsplash.com/drew_hays"
    page.puts "share: false"
    page.puts "comments: false"
    page.puts "---"
  end
end


# usage rake new_project
desc "Create a new project"
task :new_project, :title do |t, args|
  if args.title
    title = args.title
  else
    title = get_stdin("Enter a title for your project: ")
  end
  domain_meta = get_stdin("Enter the project's domain (Art, Audio, Code, Game-Dev, Writing, or Linguistics): ")
  filename = "#{projects_dir}/#{title.to_url}/index.#{new_project_ext}"
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite? ", ['y', 'n']) == 'n'
  end
  starting_date = get_stdin("Enter the starting date of the project (if any) [YYYY-MM-DD]: ")
  ending_date = get_stdin("Enter the ending date of the project (if any) [YYYY-MM-DD]: ")
  type_meta = get_stdin("Enter the type of project (if any) (can be anything relevant): ")
  dirname = File.dirname(filename)
  unless File.directory?(dirname)
    FileUtils.mkdir_p(dirname)
  end
  puts "Creating new project: #{filename}"
  open(filename, 'w') do |project|
    project.puts "---"
    project.puts "layout: project"
    project.puts "title: \"#{title}\""
    project.puts "description: "
    project.puts "#image:"
    project.puts "  #feature: /project-images/project-name/image.png"
    project.puts "  #credit: Drew Hays"
    project.puts "  #creditlink: https://unsplash.com/drew_hays"
    project.puts "do-show-start-date: true"
    project.puts "do-show-end-date: true"
    project.puts "start-date: #{starting_date}"
    project.puts "end-date: #{ending_date}"
    project.puts "modified: "
    project.puts "domain: #{domain_meta}"
    project.puts "project-type: #{type_meta}"
    project.puts "share: true"
    project.puts "comments: false"
    project.puts "---"
  end
end


def get_stdin(message)
  print message
  STDIN.gets.chomp
end

def ask(message, valid_options)
  if valid_options
    answer = get_stdin("#{message} #{valid_options.to_s.gsub(/"/, '').gsub(/, /,'/')} ") while !valid_options.include?(answer)
  else
    answer = get_stdin(message)
  end
  answer
end
