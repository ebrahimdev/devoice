import { render, screen, fireEvent } from '@testing-library/react';
import '@testing-library/jest-dom';
import Home from '../page';

describe('Home', () => {
  it('renders the user story input form', () => {
    render(<Home />);

    // Check if the title is present
    expect(screen.getByText('AI-Driven Development')).toBeInTheDocument();

    // Check if the textarea is present
    expect(screen.getByPlaceholderText('As a [user], I want to [action] so that [benefit]')).toBeInTheDocument();

    // Check if the submit button is present
    expect(screen.getByText('Analyze Story')).toBeInTheDocument();
  });

  it('updates textarea value on input', () => {
    render(<Home />);

    const textarea = screen.getByPlaceholderText('As a [user], I want to [action] so that [benefit]');
    fireEvent.change(textarea, { target: { value: 'Test user story' } });

    expect(textarea).toHaveValue('Test user story');
  });
}); 