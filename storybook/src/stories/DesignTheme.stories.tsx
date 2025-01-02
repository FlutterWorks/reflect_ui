import { Meta, StoryObj } from "@storybook/react";
import { DesignTheme } from "./DesignTheme";

const meta = {
  title: "Widgets/DesignTheme",
  component: DesignTheme,
  parameters: {
    layout: "centered",
  },
  argTypes: {
    label: { control: { type: "text" } },
  },
} satisfies Meta<typeof DesignTheme>;

export default meta
type Story = StoryObj<typeof meta>

export const Default: Story = {
  args: {},
};
