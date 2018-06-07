# phishtank-ublock-list
parse and auto update phishtank domains for use with ublock origin

The idea of this is to have this auto update every hour, it doesn't look like phishtank is very clinical about updating on the hour so it may not update if there is no change.

Both lists are only from the last 24 hours updating at mid night and appending until the next day. Will consider requests for longer times.

justDomains.txt is going to be the TLD and subdomain
fullUri.txt is going to be the full URI, you can decide which one you want to use.

TODO for the future(Looking for suggestions):
grab unique domains and full URIs only. ---> DONE
exclude it from justDomains if its in the top 5000 domains.

