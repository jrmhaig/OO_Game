Building a game in Ruby while reading 'Design Patterns: Elements of Reusable Object-Oriented Software'.

## Requirements

* Ruby 3.1

## Abstract classes

The purpose of an abstract class is to define the common interface for its subclasses, enforcing the
[Liskov substitution principle](https://en.wikipedia.org/wiki/Liskov_substitution_principle). This cannot be enforced in Ruby in this way as, for example, there is
no way to prevent a subclass from changing the argument list of a particular method. To serve the same purpose I am using shared examples in the unit tests. For
instance, the tests for the framework factories each include;

```ruby
  it_behaves_like 'a framework factory'
```

and the `a framework factory` shared examples tests that all the correct methods are present and that they take the correct arguments.

## Creational Patterns

### Abstract Factory

The Abstract Factory pattern is used to allow either [`gosu`](https://rubygems.org/gems/gosu) or [`ruby2d`](https://rubygems.org/gems/ruby2d) to be used as the
graphical framework. The concrete factories for each graphics library needs to provide the same methods for creating elements such as the main window and
sprites.

Each of the elements created by the factory must match a common interface so, for example, the Gosu window and Ruby2D window elements must match the interface
defined by the abstract window element (defined in the `a window` shared examples in the unit tests).

#### Framework factory interface

Set up a game window with width 800 pixels, height 1000 pixels and title 'Game title';

```ruby
window = factory.window(width: 800, height: 1000, title: 'Game title')
```

This will return a `Frameworks::GosuElements::Window` or `Frameworks::Ruby2DElements::Window` instance, depending on the factory used.

#### Window element interface

Display the window;

```ruby
window.show
```