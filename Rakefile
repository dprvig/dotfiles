require 'rake'

desc "Hooks the dotfiles into system-standard positions."
task :install do
  syms = Dir.glob('*/**{.symlink}')

  syms.each do |sym|

    file   = sym.split('/').last.split('.symlink').last
    target = "#{ENV["HOME"]}/.#{file}"

    # Backup old version
    if File.exists?(target) || File.symlink?(target)
      FileUtils.rm_rf(target)
      `mv "$HOME/.#{file}" "$HOME/.dotfiles/backup/.#{file}.backup"`
    end
    
    `ln -s "$PWD/#{sym}" "#{target}"`
  end
end

task :uninstall do

  Dir.glob('**/*.symlink').each do |sym|

    file   = sym.split('/').last.split('.symlink').last
    target = "#{ENV["HOME"]}/.#{file}"

    # Remove all symlinks created during installation
    if File.symlink?(target)
      FileUtils.rm(target)
    end
    
    # Replace any backups made during installation
    if File.exists?("#{ENV["HOME"]}/.#{file}.backup")
      `mv "$HOME/.#{file}.backup" "$HOME/.#{file}"` 
    end

  end
end

task :default => 'install'
