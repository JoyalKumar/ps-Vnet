New-AzResourceGroup -ResourceGroupName JoyalKumar -Location EastUS
$JoyalVnet = New-AzVirtualNetwork -ResourceGroupName Joyalkumar -Location EastUS -Name JoyalVnet -AddressPrefix 10.0.0.0/8
$JoyalSn1 = Add-AzVirtualNetworkSubnetConfig -Name JoyalSn1 -AddressPrefix 10.0.0.0/9 -VirtualNetwork $joyalVnet
$JoyalSn1 | Set-AzVirtualNetwork    
$JoyalSn2 = Add-AzVirtualNetworkSubnetConfig -Name JoyalSn2 -AddressPrefix 10.128.0.0/9 -VirtualNetwork $JoyalVnet
$JoyalSn2 | Set-AzVirtualNetwork 
