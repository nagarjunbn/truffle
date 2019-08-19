module.exports = {
  // Uncommenting the defaults below 
  // provides for an easier quick-start with Ganache.
  // You can also follow this format for other networks;
  // see <http://truffleframework.com/docs/advanced/configuration>
  // for more details on how to specify configuration options!
  //
  networks: {
   development: {
     host: "127.0.0.1",
     port: 8545,
     network_id: "*",
     from: "0x66DC0841D933a1957a00Ef15B51aC0b53259Da8d"
   },
   test: {
     host: "127.0.0.1",
     port: 7545,
     network_id: "*"
   }
  }

};
