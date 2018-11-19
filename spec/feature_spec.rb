describe "examplify" do

  # TODO: Tempdir

  it "outputs files from a folder" do
    expect(examplify "./spec/dummy").to eq <<-OUTPUT.deindent
      # ./spec/dummy/one.rb
      puts "One"

      # ./spec/dummy/two.rb
      puts "Two"
    OUTPUT
  end

  it "joins paths correctly" do
    expect(examplify "./spec/dummy").to eq examplify "./spec/dummy/"
  end

  it "ouputs manually listed files" do
    expect(examplify "./spec/dummy/two.rb ./spec/dummy/one.rb").to eq <<-OUTPUT.deindent
      # ./spec/dummy/two.rb
      puts "Two"

      # ./spec/dummy/one.rb
      puts "One"
    OUTPUT
  end

  it "excludes files by globbing" do
    expect(examplify "./spec/dummy --exclude=*o.rb").to eq <<-OUTPUT.deindent
      # ./spec/dummy/one.rb
      puts "One"
    OUTPUT
  end

  it "filters files by globbing" do
    expect(examplify "./spec/dummy --only=two*").to eq <<-OUTPUT.deindent
      # ./spec/dummy/two.rb
      puts "Two"
    OUTPUT
  end

  it "can do a dry-run" do
    expect(examplify "./spec/dummy -n").to eq <<-OUTPUT.deindent
      ./spec/dummy/one.rb
      ./spec/dummy/two.rb
    OUTPUT
  end

  # it "file-prefix, line-prefix"
  # it "git ls-files"
end
