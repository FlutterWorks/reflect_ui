import Link from 'next/link';
import { getDictionary } from '../../get-dictionary';
import type { Locale } from '../../i18n-config';
import { Button, Counter, LocaleSwitcher } from '@/ui/components';

export default async function IndexPage(props: {
  params: Promise<{ lang: Locale }>;
}) {
  const { lang } = await props.params;

  const dictionary = await getDictionary(lang);

  return (
    <div className="flex flex-col h-screen">
      <header className="flex justify-between items-center border-b border-gray-200 h-16">
        <h1>Logo</h1>
        <nav>
          <ul className="flex flex-row items-center justify-center gap-4">
            <li className="text-sm font-medium">
              <Link href="/">Home</Link>
            </li>
            <li className="text-sm font-medium">
              <Link href="/about">About</Link>
            </li>
            <li className="text-sm font-medium">
              <Link href="/contact">Contact</Link>
            </li>
            <li className="text-sm font-medium">
              <Link href="/blog">Blog</Link>
            </li>
          </ul>
          <Button kind="primary" variant="filled">
            Button
          </Button>
        </nav>
      </header>
      <div className="flex flex-row items-center justify-center flex-1">
        <div className="flex flex-col items-center justify-center w-[300px]  h-full border-r border-gray-200 ">
          <LocaleSwitcher />
          <p>Current locale: {lang}</p>
          <p>
            This text is rendered on the server:{' '}
            {dictionary['server-component'].welcome}
          </p>
        </div>
        <div className="flex flex-row items-center justify-center flex-1 h-full">
          <div className="flex flex-col items-center justify-center h-full flex-1">
            <Counter dictionary={dictionary.counter} />
          </div>
          <div className="flex flex-col items-center justify-center border-l border-gray-200 w-60 h-full">
            TOC
          </div>
        </div>
      </div>
    </div>
  );
}
