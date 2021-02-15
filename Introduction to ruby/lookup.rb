 # ARGV is an array that Ruby defines for us,which contains all the arguments we passed to it when invoking the
  # script from the command line. https://docs.ruby-lang.org/en/2.4.0/ARGF.html
  
def get_command_line_argument
     if ARGV.empty?
         puts "Usage: ruby lookup.rb <domain>" 
            exit
 end  ARGV.first      # get frst argument in commnad line
end

#`domain` contains the domain name we have to look up.
  domain = get_command_line_argument

 
   dns_raw = File.readlines("zone")            # read all the lines as array 
  
   h=Hash.new 
   def parse_dns(dns_raw)
    dns_raw.each do  |dns|
    	s=dns.strip.split(",")
    	h[RECORD TYPE]=s[0] 
    	h[SOURCE] =s[1]
    	h[DESTINATION]=s[2]
    end
   end

   def resolve(dns_records, lookup_chain, domain)
    
   end

   dns_records = parse_dns(dns_raw)
   lookup_chain = [domain]
   lookup_chain = resolve(dns_records, lookup_chain, domain)
   puts lookup_chain.join(" => ")
