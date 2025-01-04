import { cva, cx } from 'class-variance-authority';
import * as React from 'react';

const buttonStyles = cva(['font-semibold'], {
  variants: {
    kind: {
      primary: '',
      secondary: '',
      success: '',
      danger: '',
      warning: '',
      info: '',
    },
    variant: {
      filled: '',
      tinted: '',
      outlined: '',
      subtle: '',
      plain: '',
    },
    size: {
      small: 'px-2 py-1.5 text-xs',
      medium: 'px-2 py-1.5 text-sm',
      large: 'px-2 py-1.5 text-base',
    },
    radius: {
      none: 'rounded-none',
      small: 'rounded-sm',
      medium: 'rounded-md',
      large: 'rounded-lg',
      full: 'rounded-full',
    },
  },
  compoundVariants: [
    {
      kind: 'primary',
      variant: 'filled',
      className: ['bg-primary-600', 'hover:bg-primary-700', 'text-white'],
    },
    {
      kind: 'primary',
      variant: 'tinted',
      className: ['bg-primary-100', 'hover:bg-primary-200', 'text-primary-600'],
    },
    {
      kind: 'primary',
      variant: 'outlined',
      className: [
        'border',
        'border-primary-600',
        'hover:bg-primary-50',
        'text-primary-600',
      ],
    },
    {
      kind: 'primary',
      variant: 'subtle',
      className: ['hover:bg-primary-100', 'text-primary-600'],
    },
    {
      kind: 'primary',
      variant: 'plain',
      className: ['text-primary-600'],
    },
  ],
});

export type ButtonVariant =
  | 'filled'
  | 'tinted'
  | 'outlined'
  | 'subtle'
  | 'plain';

export type ButtonKind =
  | 'primary'
  | 'secondary'
  | 'success'
  | 'danger'
  | 'warning'
  | 'info';

export type ButtonSize = 'small' | 'medium' | 'large';

export type ButtonRadius = 'none' | 'small' | 'medium' | 'large' | 'full';

interface ButtonProps extends React.ButtonHTMLAttributes<HTMLButtonElement> {
  children: React.ReactNode;
  variant?: ButtonVariant;
  kind?: ButtonKind;
  size?: ButtonSize;
  radius?: ButtonRadius;
}

export const Button = React.forwardRef<HTMLButtonElement, ButtonProps>(
  (props, ref) => {
    const {
      children,
      className,
      variant = 'filled',
      kind = 'primary',
      size = 'medium',
      radius = 'small',
      ...otherProps
    } = props;
    return (
      <button
        ref={ref}
        className={cx(buttonStyles({ variant, kind, size, radius }), className)}
        {...otherProps}
      >
        {children}
      </button>
    );
  },
);

Button.displayName = 'Button';
