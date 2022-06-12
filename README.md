# Delta_Robot-

Welcooooom :)



This is my final project in ENP  that was (Contribution in Modeling and Control of Delta Robot), I have given a more accurate model that describes the delta robot (ISIR88), and multiple control methods (linear and non-linear), so generally, what I have done is the following points:
I designed the delta robot as It is in the laboratory, using SolidWork, then I used that design to test the models and the controllers using SimMechanics (it is a part of SimuLink). (there are videos in the attachment).

https://github.com/ROS2018/Delta_Robot-/blob/main/Matlab/DeltaImage2.PNG?raw=true

 ISIR 88, is more complicated with respect to other delta robots,specifically, it has  3 half-wheels attached to each mechanical reducer, which are not considered in the general dynamic model, in fact, they have a considered effects on the dynamic model, so I considered them. In any way, I used the newtonien approach to calculate the dynamic model considering any parts moving in the mechanical structure.
I used multiple control methods (there is a video in the attachment) :
1) Linear methods: after linearising the system which is composed of nine state variables, I have used the following methods:
      i) The programmed gain control law.    
      ii) FeedBack with integral action, in cascade   
      iii) Loop-shaping, in cascade.


2) Non-linear methods:
      i) Sliding Mode
      ii) Back-stepping
      iii) Decoupling and linearization with feedback.
     vi)  Observing the internal state variables (currents) , And estimating the mass carried by the end-effector, that allowed  to design a programmed gain controller. Estimating and observing increased greatly the robustness of the controller.

Video1: Delta Robot ISIR88 Design, by SolidWorks   

Video2: Delta Robot (ISIR88) Controlers, using Simulink
