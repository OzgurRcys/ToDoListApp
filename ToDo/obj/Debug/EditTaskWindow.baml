   M S B A M L   `   `   `  ����  ToDo    ToDo.EditTaskWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Görevi Düzenle��5   	   $	��200��6    $	��300��6-    � WindowStartupLocation$ CenterOwner=�5   	   ���#2D2D30.��5      � $��10q�6    � RowDefinitions 5   
   �� 5	      $
��Auto �6   �� 5
      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ NameTextBox��5      $��0��6'   $��0,0,0,10q�64   $��5q�5      ���#3C3C3C
�������63   �� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��0,0,0,10q�6;   .+�5      (  "System.Windows.Controls.DatePicker  -   5          Name$ DueDatePicker��5      $	��130��60   � 5      $	��100��6   $��10,0,0,0q�6   .+�5      �� -   5        $ DueTimeTextBox��5      $��5q�62   ���#3C3C3C
�������5      �� 5      -   5         ��Name$ DueTimePlaceholder��5      $��14:00��5      
�������$��8,0,0,0q�5      $��Center=�5       J� IsHitTestVisible .  $y�Visible=�5      5      5       �� 5"   
   -   5        $��Kaydet��5"      $��2��6"   $��30��6/   $��Right=�5#      $	��100��6-   
��� � �
�������5%      5&      5'      