import { cva, cx } from 'class-variance-authority';
import * as React from 'react';

const buttonStyles = cva([
  'bg-primary-500',
  'text-white',
  'rounded-md',
  'px-4',
  'py-2',
]);

interface ButtonProps extends React.ButtonHTMLAttributes<HTMLButtonElement> {
  children: React.ReactNode;
}

export const Button = React.forwardRef<HTMLButtonElement, ButtonProps>(
  ({ children, className, ...props }, ref) => {
    return (
      <button ref={ref} className={cx(buttonStyles(), className)} {...props}>
        {children}
      </button>
    );
  },
);

Button.displayName = 'Button';
