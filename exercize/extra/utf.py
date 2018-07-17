# - *- coding: utf- 8 - *-
# encoding: utf-8

pand='u"\u0938\u0941\u0927\u093e\u0930\u0923\u093e \u0924\u0930 \u0915\u093e\u0939\u093f\u091a \u0928\u093e\u0939\u0940 \u092a\u0930\u0902\u0924\u0941 \u0938\u0942\u091a\u0928\u093e \u092e\u0927\u094d\u092f\u0947 \u092e\u0940 \u0915\u0947\u0932\u0947\u0932\u0947 \u092a\u094d\u0930\u0936\u093f\u0915\u094d\u0937\u0923 \u0939\u0947 \u0906\u0924\u093e \u0924\u093e\u0932\u0941\u0915\u094d\u092f\u093e\u0924\u0940\u0932 \u092e\u093e\u091d\u094d\u092f\u093e \u0936\u093f\u0915\u094d\u0937\u0915\u093e\u0902\u0928\u0940 \u092a\u0942\u0930\u094d\u0923 \u0915\u0930\u093e\u0935\u092f\u093e\u0938 \u0939\u0935\u0947. \u0939\u094d\u092f\u093e \u092a\u094d\u0930\u0936\u093f\u0915\u094d\u0937\u0928\u093e\u0938 \u0915\u094b\u0936\u094b\u0930\u0935\u092f\u0940\u0928 \u0935\u093f\u0927\u094d\u092f\u093e\u0930\u094d\u0925\u0940 \u092c\u093e\u092c\u0924 \u091a\u0940 \u092e\u093e\u0939\u093f\u0924\u0940 \u091b\u093e\u0928 \u0935\u093e\u091f\u0932\u0940."'
separators = [u"।", u",", u"."]

print eval(str(pand.encode('ascii','ignore')))
print '****'*20

print pand.encode('utf','ignore')

print '**--'*20
print pand.decode('utf','ignore')

print '*-*-'*20
print pand.decode('utf-16','replace')

print eval(str(pand))
print type(pand)



text = pand.decode("utf-8")
words = text.split()

counter = 1

output = ""
for word in words:
    #if the last char is a separator, and is joined to the word:
    if word[-1] in separators and len(word) > 1:
        #word up to the second to last char:
        output += word[:-1] + u"(%d) " % counter
        counter += 1
        #last char
        output += word[-1] +  u"(%d) " % counter
    else:
        output += word + u"(%d) " % counter
    counter += 1

print output
# print output

