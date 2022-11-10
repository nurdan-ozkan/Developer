({
    handleClick : function(component, event, helper) {
        var attributeValue = component.get("v.text");
        console.log("Current text: " +attributeValue);

        let target = event.getSource();
        component.set("v.text", target.get("v.label"));

    }
})
