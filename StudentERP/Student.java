package com.coforge.payment;

public class Student {
    private String name;
    private int sid;
    private static CollageAddress address;

    static class CollageAddress {
        private String city;
        private String state;
        private String pincode;

        public CollageAddress() {
            super();
        }

        public CollageAddress(String city, String state, String pincode) {
            super();
            this.city = city;
            this.state = state;
            this.pincode = pincode;
        }

        @Override
        public String toString() {
            return "CollageAddress [city=" + city + ", state=" + state + ", pincode=" + pincode + "]";
        }
    }

    public Student() {
        super();
    }

    public Student(String name, int sid) {
        super();
        this.name = name;
        this.sid = sid;
    }

    public static CollageAddress getAddress() {
        return address;
    }

    public static void setAddress(CollageAddress address) {
        Student.address = address;
    }

    @Override
    public String toString() {
        return "Student [name=" + name + ", sid=" + sid + ", address=" + address + "]";
    }

    public static void main(String[] args) {
        CollageAddress addr = new Student.CollageAddress("HYDERABAD", "TELANGANA", "200009");
        setAddress(addr);
        Student s1 = new Student("ADARSH", 123);
        System.out.println(s1);
    }
}
