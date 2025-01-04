import type { Meta, StoryObj } from '@storybook/react';
import { Counter } from '@/ui/components/Counter';

const meta = {
  title: 'Components/Counter',
  component: Counter,
  parameters: {
    layout: 'centered',
  },
  tags: ['autodocs'],
  argTypes: {},
  args: {},
} satisfies Meta<typeof Counter>;

export default meta;
type Story = StoryObj<typeof meta>;

export const Default: Story = {
  args: {
    dictionary: {
      increment: 'Increment',
      decrement: 'Decrement',
    },
  },
};
