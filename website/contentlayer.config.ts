import { defineDocumentType, makeSource } from 'contentlayer/source-files';

export const BlogPost = defineDocumentType(() => ({
  name: 'BlogPost',
  filePathPattern: '**/blog/**/*.md',
  fields: {
    title: { type: 'string', required: true },
    date: { type: 'date', required: true },
  },
  computedFields: {
    lang: {
      type: 'string',
      resolve: (doc) => doc._raw.flattenedPath.split('/')[0],
    },
    slug: {
      type: 'string',
      resolve: (doc) => `/${doc._raw.flattenedPath}`,
    },
    url: {
      type: 'string',
      resolve: (post) => `/${post._raw.flattenedPath}`,
    },
  },
}));

export const DocPost = defineDocumentType(() => ({
  name: 'DocPost',
  filePathPattern: '**/docs/**/*.md',
  fields: {
    title: { type: 'string', required: true },
    date: { type: 'date', required: true },
  },
  computedFields: {
    lang: {
      type: 'string',
      resolve: (doc) => doc._raw.flattenedPath.split('/')[0],
    },
    slug: {
      type: 'string',
      resolve: (doc) => `/${doc._raw.flattenedPath}`,
    },
    url: {
      type: 'string',
      resolve: (post) => `/${post._raw.flattenedPath}`,
    },
  },
}));

export default makeSource({
  contentDirPath: 'content',
  documentTypes: [BlogPost, DocPost],
});
