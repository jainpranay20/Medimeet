# MediMeet – Full Stack Doctor's Appointment App

A modern, full-stack telemedicine platform where users can register as patients or doctors, book real-time consultations, and conduct 1-on-1 video calls — all through a clean and responsive interface. Built with **Next.js**, **Clerk**, **Neon DB**, and **Prisma**.

## What’s Inside

### Authentication & Roles
- Role-based sign up/login using **Clerk**
- Seamless onboarding for:
  - Patients
  - Doctors
  - Admins
- Secure session management
- Dynamic routing and dashboard redirection

### Patient Features
- Browse doctors by specialty
- View profiles and book appointments based on real-time availability
- Manage and cancel appointments
- Purchase monthly subscription plans when out of credits

### Doctor Features
- Apply to join as a verified doctor with medical credentials
- Set weekly availability for appointments
- View consultation earnings and request withdrawals

### Admin Dashboard
- Approve/reject doctor applications
- Verify submitted credentials
- Process doctor withdrawal requests


## Tech Stack
| Layer         | Tech Used                             |
|---------------|----------------------------------------|
| Frontend      | Next.js (App Router), Tailwind CSS, ShadCN UI |
| Auth          | Clerk (role-based access)              |
| Database      | Neon Postgres (serverless)             |
| ORM           | Prisma                                 |
| UI Components | ShadCN UI                              |
| Fonts         | Inter (`@next/font/google`)            |
| Styling       | Tailwind CSS                           |
| Tooling       | ESLint, Turbopack                      |


# Run the development server
- npm lite-server             
- npm install @clerk/nextjs
- npx prisma init --db --output ../app/generated/prisma
- npx prisma generate
- npm run dev

# Folder Structure 
.
├── app/                        # Next.js App Router directory
│   ├── (auth)/                 # Auth-related routes (e.g. sign-in, sign-up)
│   ├── (main)/                 # Main app routes
│   │   ├── admin/              # Admin dashboard pages
│   │   ├── appointments/       # Appointment booking & management
│   │   ├── doctor/             # Doctor-specific routes
│   │   ├── doctors/            # Doctors listing and profiles
│   │   ├── onboarding/         # New user onboarding flow
│   │   ├── pricing/            # Pricing page
│   ├── layout.jsx              # App-wide layout component
│   ├── page.js                 # Root landing page
│
├── components/                 # Shared React components
│   ├── appointment-card.jsx    # Appointment display card
│   ├── header.jsx              # Top navigation bar
│   ├── page-header.jsx         # Page title and breadcrumb
│   ├── pricing.jsx             # Pricing section component
│   └── theme-provider.jsx      # ShadCN theme provider wrapper
│
├── ui/                         # UI primitives (ShadCN-based components)
│   ├── alert.jsx
│   ├── badge.jsx
│   ├── button.jsx
│   ├── card.jsx
│   ├── dialog.jsx
│   ├── input.jsx
│   ├── label.jsx
│   ├── select.jsx
│   ├── separator.jsx
│   ├── sonner.jsx
│   ├── tabs.jsx
│   └── textarea.jsx
│
├── hooks/                      # Custom React hooks
│
├── lib/                        # Server-side utilities and DB logic
│   ├── checkUser.js            # Middleware for auth/role verification
│   ├── data.js                 # Static/shared data
│   ├── prisma.js               # Prisma client instance
│   ├── private.key             # Prisma private key (if applicable)
│   ├── schema.js               # Zod/Yup validation schemas
│   ├── specialities.js         # Medical specialties list/config
│   └── utils.js                # Miscellaneous utility functions
│
├── prisma/                     # Prisma DB config
│   ├── migrations/             # Auto-generated migration files
│   ├── schema.prisma           # Prisma data model schema
│   └── migration_lock.toml     # Prisma migration lock file
│
├── public/                     # Static assets
│   ├── banner.png
│   ├── logo.png
│   └── logo-single.png
│
├── .clerk/                     # Clerk configuration
├── .next/                      # Next.js build output
├── .eslintrc                   # ESLint configuration
├── jsconfig.json               # JS path aliases
├── middleware.js               # Edge middleware for auth & protection
├── next.config.mjs             # Next.js project configuration
└── README.md                   # Project documentation

# Sharing few Screenshots of work

### Started with home page the landing page 
![alt text](image.png)

### Features
![alt text](image-1.png)

### Pricing
![alt text](image-2.png)

### DB Models 
![alt text](image-9.png)

### Neon DB console
![alt text](image-3.png)
![alt text](image-4.png)

## Adding onboarding component
![alt text](image-5.png)

## Doctor Dashboard
![alt text](image-6.png)
![alt text](image-7.png)
![alt text](image-8.png)
