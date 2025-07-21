# ✅ Event Planner App – Test Case Document

This document outlines the functional test cases for validating core features of the **Event Planner App** based on the assignment requirements.

---

## 🔐 Authentication

### Test Case 1: User Signup
| ID | TC-AUTH-001 |
|----|--------------|
| **Summary** | Validate user signup flow |
| **Pre-Requisite** | User is not logged in |
| **Steps** |
1. Open the Sign-Up screen  
2. Enter valid: First Name, Last Name, Email, Password, Phone Number, Address  
3. Tap "Sign Up"  
| **Test Data** | First Name: John, Email: john@test.com, Password: Test123 |
| **Expected Result** | User is signed up and redirected to first-time profile setup |

### Test Case 2: User Login
| ID | TC-AUTH-002 |
|----|--------------|
| **Summary** | Validate user login with valid credentials |
| **Pre-Requisite** | Valid account exists |
| **Steps** |
1. Open Login screen  
2. Enter registered email and password  
3. Tap "Login"  
| **Expected Result** | User is redirected to home page |

### Test Case 3: Invalid Login
| ID | TC-AUTH-003 |
| **Summary** | Handle login with invalid credentials |
| **Steps** |
1. Enter invalid email or password  
2. Tap "Login"  
| **Expected Result** | Show error message: "Invalid credentials" |

---

## 👤 Profile Setup & Edit

### Test Case 4: First-Time Login Flow
| ID | TC-PROFILE-001 |
| **Summary** | Validate redirection to profile setup on first login |
| **Pre-Requisite** | New user just signed up |
| **Steps** |
1. Login after signup  
2. Upload profile image  
3. Enter remaining details and save  
| **Expected Result** | Profile is saved and user is redirected to home screen |

### Test Case 5: Edit Profile
| ID | TC-PROFILE-002 |
| **Summary** | Validate profile update from Profile tab |
| **Steps** |
1. Go to Profile tab  
2. Edit name, address, or phone  
3. Tap "Save"  
| **Expected Result** | Updated profile is saved in Firebase |

---

## 🏠 Home Page

### Test Case 6: Display Image Slider
| ID | TC-HOME-001 |
| **Summary** | Verify top image slider loads 10 images |
| **Steps** |
1. Login to app  
2. Observe the top image section  
| **Expected Result** | 10 images are displayed in a carousel using `photos` API |

### Test Case 7: Display Event Organizers
| ID | TC-HOME-002 |
| **Summary** | Validate event organizers list loads from API |
| **Steps** |
1. Scroll to organizer section  
| **Expected Result** | Users are listed from `users` API |

### Test Case 8: Post Navigation and Count
| ID | TC-HOME-003 |
| **Summary** | Validate post count and navigation to posts list |
| **Steps** |
1. Tap on post count  
2. Verify navigation to posts list  
| **Expected Result** | Posts are listed from `posts` API, each expandable to show comments from `comments` API |

---

## 🔁 Drawer Navigation

### Test Case 9: Logout and App Info
| ID | TC-NAV-001 |
| **Summary** | Validate logout and version display in drawer |
| **Steps** |
1. Open drawer  
2. Tap Logout  
| **Expected Result** | User is logged out and redirected to login screen |
| **Also Check** | Version info is shown at bottom of drawer |

---

## 🔔 Push Notifications

### Test Case 10: Scheduled Notifications
| ID | TC-NOTIF-001 |
| **Summary** | Verify FCM push notifications are scheduled |
| **Steps** |
1. Setup Firebase Messaging  
2. Wait for notification at 8am, 12pm, 5pm  
| **Expected Result** | User receives notifications on schedule |

---

## 📋 Validation Rules

### Test Case 11: Form Field Validations
| ID | TC-VALID-001 |
| **Summary** | Validate all form fields (signup/edit profile) |
| **Steps** |
1. Enter invalid values in each field  
2. Try to submit  
| **Expected Result** | Red border + error messages appear on invalid fields |

---

## ✅ Unit Tests

### Test Case 12: Unit Testing
| ID | TC-UNIT-001 |
| **Summary** | Validate form logic and API triggers |
| **Pre-Requisite** | Use flutter_test or equivalent |
| **Steps** |
1. Mock form submission  
2. Assert validation failures/success  
3. Mock API call and assert trigger  
| **Expected Result** | Unit tests pass successfully |

---

## 🧪 Error Handling

### Test Case 13: API Failure Fallback
| ID | TC-ERR-001 |
| **Summary** | Handle API failure gracefully |
| **Steps** |
1. Simulate API failure  
| **Expected Result** | Show appropriate message or fallback UI |

---

## 📦 Other Notes

- Test with both Android and iOS simulators
- Test offline mode behavior if supported
- Test app responsiveness on various screen sizes

---

**End of Test Case File**
