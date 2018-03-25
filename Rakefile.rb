require "rubygems"
require "bundler/setup"
require "stringex"
require "fileutils"

## -- Config -- ##

public_dir      = "public"    # compiled site directory
posts_dir       = "_posts"    # directory for blog files
projects_dir    = "_projects"  # directory for projects
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
    post.puts "  #feature: /blog-header-img.png"
    post.puts "  #credit: Random Phorographer Guy"
    post.puts "  #creditlink: https://unsplash.com/username"
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
  filename = "#{title.to_url}/index.#{new_page_ext}"
  if File.exist?(filename)
    abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite? ", ['y', 'n']) == 'n'
  end
  domain_meta = get_stdin("Enter the page's domain, if any (Art, Audio, Code, Game-Dev, Writing, or Linguistics): ")
  project_meta = get_stdin("Enter the project associated with this page, if any: ")
  tags = get_stdin("Enter tags to classify your page (comma separated): ")
  dirname = File.dirname(filename)
  unless File.directory?(dirname)
    FileUtils.mkdir_p(dirname)
  end
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
    page.puts "description: "
    page.puts "#image:"
    page.puts "  #feature: /blog-header-img.png"
    page.puts "  #credit: Random Photographer Guy"
    page.puts "  #creditlink: https://unsplash.com/username"
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
  filename = "#{projects_dir}/#{title.to_url}.#{new_project_ext}"
  if File.exist?(filename)
    abort("New project not created!") if ask("#{filename} already exists. Do you want to overwrite? ", ['y', 'n']) == 'n'
  end
  starting_date = get_stdin("Enter the starting date of the project (optional, but recommended) [YYYY-MM-DD]: ")
  ending_date = get_stdin("Enter the ending date of the project (if any) [YYYY-MM-DD]: ")
  type_meta = get_stdin("Enter the type of project (if any) (can be anything relevant): ")
  short_desc = get_stdin("Enter a short description of the project (optional, but recommended): ")
  
  puts "Creating new project: #{filename}"
  open(filename, 'w') do |project|
    project.puts "---"
    project.puts "title: \"#{title}\""
    project.puts "description: \"#{short_desc}\""
    project.puts "#image:"
    project.puts "  #feature: /project-images/project-name/image.png"
    project.puts "  #credit: Random Photographer Guy"
    project.puts "  #creditlink: https://unsplash.com/username"
    project.puts "do-show-start-date: true"
    project.puts "do-show-end-date: true"
    project.puts "start-date: #{starting_date}"
    project.puts "end-date: #{ending_date}"
    project.puts "modified: "
    project.puts "domain: #{domain_meta}"
    project.puts "project-type: #{type_meta}"
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
