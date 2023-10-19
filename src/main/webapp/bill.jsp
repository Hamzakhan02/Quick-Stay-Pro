<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Generate Bill</title>
</head>
<body>
    <div class="container">
        <h1>QSP Bill</h1>
        <form action="generateBill" method="post">
            <div class="form-group">
                <label for="guestName">Guest Name</label>
                <input type="text" class="form-control" id="guestName" name="guestName" required>
            </div>
            <div class="form-group">
                <label for="checkInDate">Check-In Date</label>
                <input type="date" class="form-control" id="checkInDate" name="checkInDate" required>
            </div>
            <div class="form-group">
                <label for="checkOutDate">Check-Out Date</label>
                <input type="date" class="form-control" id="checkOutDate" name="checkOutDate" required>
            </div>
            <div class="form-group">
                <label for="roomRate">Room Rate</label>
                <input type="text" class="form-control" id="roomRate" name="roomRate" required>
            </div>
            <button type="submit" class="btn btn-primary">Generate Bill</button>
        </form>
    </div>
</body>
</html>
