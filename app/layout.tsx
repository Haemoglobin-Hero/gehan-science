import './globals.css';
import Link from 'next/link';

export const metadata={title:'SCIENCE // Tuition Lab',description:'Modern science tuition classes for Grades 6–11 and Rapid Revision 2026.'};

export default function RootLayout({children}:{children:React.ReactNode}){
 return <><header className="nav"><div className="container navin"><Link className="brand" href="/">SCIENCE<span>//</span>LAB</Link><nav className="links"><Link href="/">Home</Link><Link href="/classes">Classes</Link><Link href="/about">About</Link><Link href="/contact">Contact</Link></nav><details className="mobileNav"><summary>Menu</summary><div className="mobileNavMenu"><Link href="/">Home</Link><Link href="/classes">Classes</Link><Link href="/about">About</Link><Link href="/contact">Contact</Link></div></details><Link className="navbtn" href="/login">Student Login</Link></div></header>{children}<a className="wa" href="https://wa.me/94776345162?text=Hi%2C%20I%27m%20interested%20in%20joining%20the%20Science%20tuition%20classes." target="_blank" rel="noreferrer">WhatsApp ↗</a><footer className="footer"><div className="container footerin"><span>© 2026 SCIENCE//LAB</span><span>Learn. Revise. Master.</span></div></footer></>
}
