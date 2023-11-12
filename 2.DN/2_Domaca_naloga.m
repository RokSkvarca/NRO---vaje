(* ::Package:: *)

(* ::Input:: *)
(*Get["C:\\Users\\Rok\\Documents\\Faks\\3_letnik\\Napredna_ra\[CHacek]unalni\[SHacek]ka_orodja\\2_Doma\[CHacek]a_naloga\\Izracun_stevila_pi.m"]*)


(* ::Input:: *)
(*n=1000;*)
(*r=1;*)


(* ::Input:: *)
(*Tocke=Transpose[{RandomReal[{-1,1},n],RandomReal[{-1,1},n]}];*)


(* ::Input:: *)
(*{notranje,zunanje}=Module[{Tockenot,Tockevn,x,y,radiji},*)
(*Tockenot={};*)
(*Tockevn={};*)
(**)
(*For[i=1,i<n,i++,*)
(*{x,y}=Tocke[[i]];*)
(*radiji=x^2+y^2;*)
(*If[radiji<r,AppendTo[Tockenot,{x,y}],AppendTo[Tockevn,{x,y}]]];*)
(*{Tockenot,Tockevn}];*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*krog=Graphics[{Red,Circle[{0,0},1]}];*)
(*kvadrat=Graphics[{EdgeForm[{Thick,Blue}],FaceForm[],Rectangle[{-1,-1},{1,1}]}];*)


(* ::Input:: *)
(*p1=ListPlot[{zunanje,notranje},PlotMarkers->Automatic];*)


(* ::Input:: *)
(*Show[{krog,kvadrat,p1},Axes->True,AspectRatio->Automatic]*)


(* ::Input:: *)
(*stevilopi=Izracun[notranje,n]*)


(* ::Text:: *)
(*RAZVOJ VRSTE*)


(* ::Input:: *)
(*Clear[n]*)


(* ::Input:: *)
(*Izris[ft_,{tMin_,tMax_}]:=Module[{f=ft,priblizek,p3,p4},*)
(*Manipulate[priblizek=Normal[Series[f,{t,2,n}]];*)
(*p3=Plot[Evaluate[f],{t,tMin,tMax},PlotStyle->Blue,PlotLegends->{"Originalna funkcija"}];*)
(*p4=Plot[Evaluate[priblizek],{t,tMin,tMax},PlotStyle->Red,PlotLegends->{"Pribli\[ZHacek]ek (Taylor)"}];*)
(*Show[{p3,p4},AxesLabel->{"t","f(t)"},PlotRange->All],{{n,2,"Stopnja polinoma"},0,10,1}]]*)


(* ::Input:: *)
(*Izris[Sin[t]*t^2*Exp[-t],{0,4}]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)
