# encoding: UTF-8
require 'parslet'
# parse_with_debug
require 'parslet/convenience'

module TodoDone
  class Parser < Parslet::Parser
    root :todosdones

    rule(:todosdones) { tododone.repeat }

    rule(:tododone) {
      space? >> sign.as(:status) >> space? >> content >> newline
    }

    rule(:content) { ((newline.absent? >> any).repeat).as(:line) }

    rule(:sign) { str('+') | str('-') }
    rule(:space) { match('\s').repeat(1) }
    rule(:space?) { space.maybe }
    rule(:newline) { str("\n") >> str("\r").maybe }
  end
end

todosdones = %q{
+ todo
- done
}
parser = TodoDone::Parser.new
p parser.parse_with_debug(todosdones) # => [{:line=>"todo"@3, :status=>"+"@1}, {:line=>"done"@10, :status=>"-"@8}]
