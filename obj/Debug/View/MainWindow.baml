   M S B A M L   `   `   `  ����G  CWpfApp1_MVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:WpfApp1_MVVM.ViewWpfApp1_MVVM.View  5   	   "    WpfApp1_MVVM.View.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:WpfApp1_MVVM.View     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   b ^GalaSoft.MvvmLight.Platform, Version=5.4.1.0, Culture=neutral, PublicKeyToken=5f873c45e98af8a1+mvvm http://www.galasoft.ch/mvvmlight  5   	   -   5        $	��450��5   	   $	��800��6     � Title  5
   	   �� *WindowTitle+ � DataContext 5   	   �� *Main+   Locator �� Source# [  .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      /  )GalaSoft.MvvmLight.Command.EventToCommand     PassEventArgsToCommand .    Command 6"   �� *
FormLoad+6@   5        5   
   . 5         .  6"   �� *isMarriedCheck+6E   5       J� InputBindings 5      �� 5   
    �� 	Modifiers$	 Altf�6   
	 �� Key$	 A��6%   
 �� Command
 6-   �� *
KeyPressed+.��5      � .+�5   
   �� -   5         ��Name$ lblName��5      $
��Name��6!   $
��Left=�60   $��	79,29,0,0q�6K   $	��Top=�6^   $��37��6v   $	��132��6�   �� 5    
   -   5        $ lblName_Copy��5       $��Name: ��6&   $
��Left=�67   $��	23,29,0,0q�6R   $	��Top=�6e   $��37��6}   $��51��6�   �� 5!   
   -   5         ��Name$ txtColor��5!      $
��Left=�6$   $��23��6?   $��	79,66,0,0q�6K    �� TextWrapping$
 Wrap=�6^   $��TextBox��6r   $	��Top=�6�   $	��120��6�   �� 5"   
   -   5         ��Name$ 
chkMarried��5"      $��
is Married��5#      $
��Left=�6(   $��
79,113,0,0q�6C   $	��Top=�6W   �� 5$   
   -   5        $ lblAge��5$      $	��Age��6    $
��Left=�6.   $��
257,29,0,0q�6I   $	��Top=�6]   $��37��6u   $	��132��6�   �� 5%   
   $��	btnButton��6   $
��Left=�6D   $��
79,146,0,0q�6_   $	��Top=�6s   $��96��6�    J� RenderTransformOrigin$ -2.333,0.26&�6�   $��24��6�   ��6%   �� *
btnCommand+6�   5'      5(      