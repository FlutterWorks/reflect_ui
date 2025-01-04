import type { Meta, StoryObj } from "@storybook/react";
import { fn } from "@storybook/test";
import { Button } from "@/ui/components/Button";

const meta = {
  title: "Components/Button",
  component: Button,
  parameters: {
    layout: "centered",
  },
  tags: ["autodocs"],
  argTypes: {
    variant: {
      control: "inline-radio",
      options: ["filled", "tinted", "outlined", "subtle", "plain"],
    },
    kind: {
      control: "inline-radio",
      options: ["primary", "secondary", "success", "danger", "warning", "info"],
    },
    size: { control: "inline-radio", options: ["small", "medium", "large"] },
    radius: {
      control: "inline-radio",
      options: ["none", "small", "medium", "large", "full"],
    },
  },
  args: { onClick: fn() },
} satisfies Meta<typeof Button>;

export default meta;
type Story = StoryObj<typeof meta>;

export const Default: Story = {
  args: {
    variant: "filled",
    kind: "primary",
    size: "medium",
    radius: "small",
    children: "Button text",
  },
};

export const WithKind: Story = {
  args: {
    kind: "secondary",
    children: "Text Button",
  },
};

export const WithVariant: Story = {
  args: {
    variant: "tinted",
    children: "Text Button",
  },
};

export const WithSize: Story = {
  args: {
    children: "Text Button",
  },
  render: (args) => (
    <div className="flex flex-row gap-2 items-center">
      <Button {...args} size="small" />
      <Button {...args} size="medium" />
      <Button {...args} size="large" />
    </div>
  ),
};

export const WithRadius: Story = {
  args: {
    radius: "small",
    children: "Text Button",
  },
};
