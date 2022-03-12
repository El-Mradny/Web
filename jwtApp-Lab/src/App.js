import React, {useState, useEffect} from 'react'
import 'bootswatch/dist/cyborg/bootstrap.min.css'
import Navbar from 'react-bootstrap/Navbar';
import Nav from 'react-bootstrap/Nav';
import NavDropdown from 'react-bootstrap/NavDropdown'
import {
    BrowserRouter as Router,
    Switch,
    Route,
    Link
} from "react-router-dom"
import Authenticate from './starter/public/Authenticate'
import Home from './starter/public/Home'
import Profile from './starter/user/Profile'
import Logout from './starter/user/Logout'
import UserContext from './UserContext'
import db from './db';

import PublicProductDetail from './starter/public/PatientDetail'
import AdminProductDetail from './starter/user/admin/Product/ProductDetail'
import SearchProductsByName from './starter/public/Search/SearchProductsByName'
import Products from './starter/user/admin/Product/Products'
import Patients from './starter/user/Patients/Patients';
import Physicians from "./starter/public/physicians/Physicians";
import Normals from './starter/public/normals/Normals';
import Tubes from "./starter/public/tubes/Tubes";
import Diagnostics from "./starter/public/diagnostics/Diagnostics";
import Discounts from './starter/public/discounts/Discounts';
import Carts from "./starter/public/carts/Carts";
import CartItems from "./starter/public/cartitems/CartItems";
import DiagnosticDetail from "./starter/public/diagnostics/DiagnosticDetail";
import CartDetail from "./starter/public/carts/CartDetail";
import DiscountDetail from "./starter/public/discounts/DiscountDetail";
import PhysicianDetail from "./starter/public/physicians/PhysicianDetail";
import PatientDetail from "./starter/user/Patients/PatientDetail";
import TubeDetail from "./starter/public/tubes/TubeDetail";
import RegisterPatient from "./starter/user/RegisterPatient";


export default function App() {

    const [jwtUser, setJwtUser] = useState(db.getJwtUser())
    const [user, setUser] = useState(null)

    useEffect(() => (async () => {
        db.setJwtUser(jwtUser)
        let user = null
        if (jwtUser) {
            user = await db.Users.findOne(jwtUser.username)
            if (!user) {
                await db.Users.create(users => {
                }, {id: jwtUser.username, name: "", role: "Customer", picture: '/images/UsersPictureDefault.png'})
                user = await db.Users.findOne(jwtUser.username)
            }
        }
        setUser(user)
    })(), [jwtUser])

    const isPublic = () => user === null
    const isLoggedIn = () => user !== null
    const isAdmin = () => user?.role === "Admin"
    const isCustomer = () => user?.role === "Customer"
    const isSupport = () => user?.role === "Support"

    console.log(user, isPublic(), isLoggedIn(), isCustomer(), isAdmin(), isSupport())

    return (
        <UserContext.Provider value={{user}}>
            <Router>
                <div className="container">
                    <Navbar bg="variant" variant="dark" expand="sm" sticky="top">
                        <Navbar.Brand as={Link} to="/">Home</Navbar.Brand>
                        <Navbar.Toggle aria-controls="basic-navbar-nav"/>
                        <Navbar.Collapse id="basic-navbar-nav">
                            <Nav className="mr-auto">
                                {
                                    isPublic() &&
                                    <>
                                        <NavDropdown title="Search" id="basic-nav-dropdown">
                                            <NavDropdown.Item as={Link} to="/searchproductsbyname">Search Products by
                                                Name</NavDropdown.Item>
                                        </NavDropdown>
                                        <NavDropdown id={'all'} title={'All'}>
                                            <NavDropdown.Item as={Link} to="/patients">Patients</NavDropdown.Item>
                                            <NavDropdown.Item as={Link} to="/physicians">Physicians</NavDropdown.Item>
                                            <NavDropdown.Item as={Link} to="/normals">Normals</NavDropdown.Item>
                                            <NavDropdown.Item as={Link} to="/tubes">Tubes</NavDropdown.Item>
                                            <NavDropdown.Item as={Link} to="/diagnostics">Diagnostics</NavDropdown.Item>
                                            <NavDropdown.Item as={Link} to="/discounts">Discounts</NavDropdown.Item>
                                            <NavDropdown.Item as={Link} to="/carts">Cart</NavDropdown.Item>
                                            <NavDropdown.Item as={Link} to="/cartitems">Cart Item</NavDropdown.Item>
                                        </NavDropdown>
                                            <Nav.Link as={Link} to="/registerPatient">Register Patient</Nav.Link>

                                    </>
                                }
                                {
                                    isCustomer() &&
                                    <>
                                        <Nav.Link as={Link} to="/profile">Profile</Nav.Link>
                                        <Nav.Link as={Link} to="/patients">Profile</Nav.Link>
                                    </>
                                }
                                {
                                    isSupport() &&
                                    <>
                                        <Nav.Link as={Link} to="/">Support Stuff</Nav.Link>

                                    </>
                                }
                                {
                                    isAdmin() &&
                                    <NavDropdown title="Data" id="basic-nav-dropdown">
                                        <NavDropdown.Item as={Link} to="/products">Products</NavDropdown.Item>
                                    </NavDropdown>
                                }
                            </Nav>
                        </Navbar.Collapse>
                        <Nav className="mr-auto navbar-right">
                            {
                                isPublic()
                                &&
                                <>
                                    <Nav.Link as={Link} to="/register">Register</Nav.Link>
                                    <Nav.Link as={Link} to="/login">Login</Nav.Link>
                                </>
                            }
                            {
                                isLoggedIn()
                                &&
                                <Nav.Link as={Link} to="/logout">Logout</Nav.Link>
                            }
                        </Nav>
                    </Navbar>

                    {
                        isPublic()
                        &&
                        <Switch>
                            <Route path="/registerPatient">
                                <RegisterPatient />
                            </Route>
                            <Route path="/carts">
                                <Carts />
                            </Route>
                            <Route path="/cartitems">
                                <CartItems />
                            </Route>
                            <Route path="/discounts">
                                <Discounts />
                            </Route>
                            <Route path="/diagnostics">
                                <Diagnostics />
                            </Route>
                            <Route path="/tubes">
                                <Tubes />
                            </Route>
                            <Route path="/normals">
                                <Normals />
                            </Route>
                            <Route path="/physicians">
                                <Physicians />
                            </Route>
                            <Route path="/patients">
                                <Patients />
                            </Route>
                            <Route path="/register">
                                <Authenticate type="Register" set={setJwtUser}/>
                            </Route>
                            <Route path="/login">
                                <Authenticate type="Login" set={setJwtUser}/>
                            </Route>
                            <Route path="/patientdetail/:id">
                                <PatientDetail/>
                            </Route>
                            <Route path="/tubedetail/:id">
                                <TubeDetail/>
                            </Route>
                            <Route path="/diagnosticdetail/:id">
                                <DiagnosticDetail/>
                            </Route>
                            <Route path="/discountdetail/:id">
                                <DiscountDetail/>
                            </Route>
                            <Route path="/physiciandetail/:id">
                                <PhysicianDetail/>
                            </Route>
                            <Route path="/cartdetail/:id">
                                <CartDetail/>
                            </Route>
                            <Route path="/searchproductsbyname">
                                <SearchProductsByName/>
                            </Route>
                            <Route path="/">
                                <Home/>
                            </Route>
                        </Switch>
                    }
                    {
                        isLoggedIn()
                        &&
                        <Switch>
                            <Route path="/logout">
                                <Logout set={setJwtUser}/>
                            </Route>
                        </Switch>
                    }
                    {
                        isCustomer()
                        &&
                        <Switch>
                            <Route path="/patients">
                                <Patients />
                            </Route>
                            <Route path="/patientdetail/:id">
                                <PublicProductDetail/>
                            </Route>
                            <Route path="/profile">
                                <Profile set={setUser}/>
                            </Route>
                        </Switch>
                    }
                    {
                        isAdmin()
                        &&
                        <Switch>
                            <Route path="/productdetail/:id">
                                <AdminProductDetail/>
                            </Route>
                            <Route path="/products">
                                <Products/>
                            </Route>
                        </Switch>
                    }
                </div>
            </Router>
        </UserContext.Provider>
    )
}