   M S B A M L   `   `   `  ����?  ;ToDo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ToDoToDo  5   	   1clr-namespace:ToDo.ConvertersToDo.Converters  5   	       ToDo.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   $localclr-namespace:ToDo     5   	   .convclr-namespace:ToDo.Converters     5   	     � Title$  To-Do Uygulaması��5   	   $	��500��6"   $	��400��6/      WindowBackgroundBrush#���   5   	    � 	Resources 5	      /   )ToDo.Converters.NullToVisibilityConverter  NullToVisibilityConverter �� Color  ControlBackgroundBrush  ControlForegroundBrush  CardBackgroundBrush��%�   &	       &	       &	 4     &	 U     &	 t       5
   
   6)   �� 5   
   $ #2D2D30��68   �� 5   
   $ #3C3C3C��69   �� 5   
   $ White��69   �� 5   
   $ #444444��66   5      .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   � .+�5      �� -   5         ��Name$ TaskTextBox��5      $��30��6+   $��5q�67   #���  5      #���  5      5      �� 5!      -   5         ��Name$ PlaceholderTextBlock��5!      $��Görev girin��5"      
�������$��8,0,0,0q�5$      $��Center=�5%       J� IsHitTestVisible .  $y�Visible=�5'      5(      �� 5*   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��	0,10,0,10q�6;   .+�5+      (  "System.Windows.Controls.DatePicker  -   5          Name$ DueDatePicker��5+      $	��150��60   $��0,0,10,0q�6<   � 5,      $	��130��6   .+�5-      �� -   5        $ DueTimeTextBox��5-      $��5q�62   #���  5.      #���  5/      50      �� 51      -   5        $ DueTimePlaceholder��51      $��Saat girin 14:00��52      
�������$��8,0,0,0q�54      $��Center=�55       .  $y�Visible=�57      58      59      �� 5;   
   -   5        $��2��5;      $
��Ekle��6   $��30��6-   
��� � �
�������5<   $   �� 5>   
   -   5        	 ��Name$	 TaskListBox��5>      $��3��6'   $��0,10,0,0q�64   #���  5?   
   #���  5@   
   ��5A      �� 5B      .R�5C      �� $��5q�6   
 �� Padding$
 5q�6(   #���  64   ._�5D      ]� .+�5E      �� $��0,0,10,0q�5F      $��Center=�6-    d� 	IsChecked 5E   '   �� *IsCompleted+ �� Mode$ TwoWay=�5F   -   �� 5H      $ Vertical=�6)   $
��Left=�6@   .+�5I   "   �� $
��Bold"�6B   ��6,   �� *Name+��5J   &   �� 5K   *    �� 
TargetType" ��60   .�5L   .   ��  �� Property � �� �� Value$
 None{�6P    �� Triggers 5M   .   �� 5N   2    �� Binding 6>   �� *IsCompleted+ �� Value True6^   .a�5O   6   ��  � ��$ Strikethrough{�6X   5P   3   5R   +   5T   #   �� 5U   "   $��12(�5W       ��5U   ,   �� *DueDateTime+ �� StringFormat$! Tarih: {0:dd.MM.yyyy HH:mm}��y�5V       �� *DueDateTime+ �� 	Converter# [ 5W       5X      �� 5Z      -   5        $	��Sil��5Z   %   $��50��6\   $��Right=�5[      $��10,0,0,0q�65   
���  ��
�������
 � Tag 5Z   L   �� 5\   .   �� 5]      -	   5        $��Düzenle��5]   %   $��60��5^      $��0,0,5,0q�6%    5]   N   �� 5^   %   5`      5a      5b      5e      5g      5h      