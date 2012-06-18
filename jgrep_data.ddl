metadata    :name        => "JGrep",
            :description => "Returns a match on a file based on a JGrep expression",
            :author      => "P Loubser <ploubser@gmail.com>",
            :license     => "ASL 2.0",
            :version     => "0.1",
            :url         => "http://jgrep.org",
            :timeout     => 1

dataquery :description => "JGrep Result" do
    input :query,
          :prompt => "Target file and JGrep query.",
          :description => "Target file and JGrep query, comma separated.",
          :type => :string,
          :validation => /.+/,
          :maxlength => 120

    output :match,
           :description => "Match result",
           :display_as => "Match"
end
