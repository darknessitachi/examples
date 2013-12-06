import groovy.xml.MarkupBuilder

def out =   new StringWriter()
    
     def xml =   new MarkupBuilder(out)
     
     xml.person {
        
        name 'Tom'
        age '33'
        addr 'shenzhen'
     }
     
 println out.toString()