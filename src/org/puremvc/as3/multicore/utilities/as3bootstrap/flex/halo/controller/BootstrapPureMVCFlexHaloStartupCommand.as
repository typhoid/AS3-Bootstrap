package org.puremvc.as3.multicore.utilities.as3bootstrap.flex.halo.controller
{
	import as3bootstrap.flex.halo.BootstrapFlexHalo;
	
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.utilities.as3bootstrap.common.controller.BootstrapStartupCommand;
	import org.puremvc.as3.multicore.utilities.fabrication.components.FlexHaloApplication;
	
	/**
	 * Flex 4 startup command for PureMVC multicore bootstrapped applications.
	 *
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0.124
	 * 
	 * @author krisrange 
	 */
	public class BootstrapPureMVCFlexHaloStartupCommand 
		extends BootstrapStartupCommand
	{
		//---------------------------------------------------------------------
		//
		//  Public methods
		//
		//---------------------------------------------------------------------
		
		//----------------------------------
		//  Override
		//----------------------------------
		
		/**
		 * @inheritDoc 
		 */		
		override public function execute( $notification:INotification ):void
		{
			super.execute( $notification );
		}
		
		//---------------------------------------------------------------------
		//
		//  Protected methods
		//
		//---------------------------------------------------------------------
		
		//----------------------------------
		//  Override
		//----------------------------------
		
		/**
		 * @inheritDoc 
		 */	
		override protected function getBootstrap():Class
		{
			return BootstrapFlexHalo;
		}
		
		/**
		 * @inheritDoc 
		 */	
		override protected function getFlashVarsParams():Object
		{
			var flexViewComponent : FlexHaloApplication = viewComponent as FlexHaloApplication;
			if( flexViewComponent )
			{
				return flexViewComponent.parameters;
			}
			else
			{
				return null;
			}
		}
	}
}