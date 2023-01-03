// this file has the baseline default parameters
{
  components: 
  {
    myapp: 
    {
      indexData: 'myapp baseline\n',
      fimage: 'spinxaler/frontend:v0.0.1',
      bimage: 'spinxaler/backend:v0.0.1',
      dbimage: 'postgres:13-alpine',
      fport: 8000,
      bport: 9000,
      dbport: 5432,
      //replicas: 1,
    },
  }
}
