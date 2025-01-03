import type { Metadata } from 'next';
import { notFound } from 'next/navigation';
import { allDocPosts } from 'contentlayer/generated';

interface PageProps {
  params: {
    slug: string[];
  };
}

async function getPageFromParams(params: PageProps['params']) {
  const slug = params?.slug?.join('/');
  console.log(slug);
  const page = allDocPosts.find((page) => page.slug === `/en/docs/${slug}`);

  if (!page) {
    null;
  }

  return page;
}

export async function generateMetadata({
  params,
}: PageProps): Promise<Metadata> {
  const page = await getPageFromParams(params);

  if (!page) {
    return {};
  }

  return {
    title: page.title,
    // description: page.description,
  };
}

export async function generateStaticParams(): Promise<PageProps['params'][]> {
  return allDocPosts.map((page) => ({
    slug: page.slug.split('/'),
  }));
}

export default async function PagePage({ params }: PageProps) {
  const page = await getPageFromParams(params);

  if (!page) {
    notFound();
  }

  return (
    <article className="py-6 prose dark:prose-invert">
      <h1>{page.title}</h1>
      <hr />
      <div
        className="text-sm [&>*]:mb-3 [&>*:last-child]:mb-0"
        // biome-ignore lint/security/noDangerouslySetInnerHtml: <explanation>
        dangerouslySetInnerHTML={{ __html: page.body.html }}
      />
    </article>
  );
}
