$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".Tests.", ".")
. "$here\$sut"

Describe -Tags "Example" "Add-Numbers" {
	context "regular" {
    	It "Check City" {
        	GetCity | Should Be "San Diego (Mira Mesa)"
    	}
	}		
	
	context "Mocking" {
		It "Check City with Mock" {
			Mock GetCity {return "MyCity"}
	        GetCity | Should Be "MyCity"
    	}
	}
	
}