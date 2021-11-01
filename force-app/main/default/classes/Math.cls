public class Math{
    public class InvalidOperationException extends Exception{
    }

    @InvocableMethod
    public static List<Response> doOperation(List<Request> reqs){
        List<Response> responses = new List<Response>();
        for (Request req : reqs){
            Response resp = new Response();
            switch on (req.operation){
                when '+' {
                    resp.result = req.param1 + req.param2;
                }
                when '-' {
                    resp.result = req.param1 - req.param2;
                }
                when 'x' {
                    resp.result = req.param1 * req.param2;
                }
                when '/' {
                    resp.result = req.param1 / req.param2;
                }
                when else {
                    throw new InvalidOperationException('Invalid operation selected');
                }
            }
            responses.add(resp);
        }

        return responses;
    }

    public class Request{
        @InvocableVariable(label = 'Operation'description = 'Type one of these +, -, x, /'required = true)
        public String operation;
        @InvocableVariable(label = 'First param'required = true)
        public Decimal param1;
        @InvocableVariable(label = 'Second param'required = true)
        public Decimal param2;
    }

    public class Response{
        @InvocableVariable(label = 'Result 'description = 'Result of the operation')
        public Decimal result;

    }
}