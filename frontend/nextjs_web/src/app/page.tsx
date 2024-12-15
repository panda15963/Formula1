import MainNavBar from "@/components/navbars/MainNavbar";

export default function Home() {
  return (
    <>
      <MainNavBar />
      <div className="container mx-auto">
        <h1 className="text-4xl font-bold text-center mt-12">Welcome to your new app</h1>
        <p className="text-center mt-4">Get started by editing <code>src/app/page.tsx</code></p>
      </div>
    </>
  );
}
