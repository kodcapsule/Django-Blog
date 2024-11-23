from django import forms
from .models import Post

class PostForm(forms.ModelForm):
    class Meta:
        model = Post
        fields = ['title', 'content']
        widgets = {
            'title': forms.TextInput(attrs={
                'placeholder': 'Enter a  title...',
                'class': 'form-control',
            }),
            'content': forms.Textarea(attrs={
                'placeholder': 'Write your blog content here...',
                'class': 'form-control',
                'rows': 6,
            }),
        }
