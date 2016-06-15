interface displayname="FrameworkAssertionEngine" {

    /**
    * Sets the current framework event
    *
    * @event The framework event object.
    *
    * @return Integrated.Engines.FrameworkAssertionEngine
    */
    public FrameworkAssertionEngine function setEvent(required event);

    /**
    * Verifies the route of the current page.
    * This method cannot be used after visiting a page using an event.
    *
    * @route The expected route.
    *
    * @return Integrated.Engines.FrameworkAssertionEngine
    */
    public FrameworkAssertionEngine function seePageIs(required string route);

    /**
    * Verifies the framework view of the current page.
    *
    * @view The expected view.
    *
    * @return Integrated.Engines.FrameworkAssertionEngine
    */
    public FrameworkAssertionEngine function seeViewIs(required string view);

    /**
    * Verifies the framework handler of the current page.
    *
    * @handler The expected handler.
    *
    * @return Integrated.Engines.FrameworkAssertionEngine
    */
    public FrameworkAssertionEngine function seeHandlerIs(required string handler);

    /**
    * Verifies the framework action of the current page.
    *
    * @action The expected action.
    *
    * @return Integrated.Engines.FrameworkAssertionEngine
    */
    public FrameworkAssertionEngine function seeActionIs(required string action);

    /**
    * Verifies the framework event of the current page.
    *
    * @event The expected event.
    *
    * @return Integrated.Engines.FrameworkAssertionEngine
    */
    public FrameworkAssertionEngine function seeEventIs(required string event);

    /**
    * Verifies that the given key and optional value exists in the framework request collection.
    *
    * @key The key to find in the collection.
    * @value The value to find in the collection with the given key.
    * @private If true, use the private collection instead of the default collection. Default: false.
    * @negate If true, verify that the key and value is not found in the collection. Default: false.
    *
    * @return Integrated.Engines.FrameworkAssertionEngine
    */
    public FrameworkAssertionEngine function seeInCollection(required string key, string value, boolean private, boolean negate);

    /**
    * Verifies that the given key and optional value does not exist in the framework request collection.
    *
    * @key The key that should not be found in the collection.
    * @value The value that should not be founc in the collection with the given key.
    * @private If true, use the private collection instead of the default collection. Default: false.
    *
    * @return Integrated.Engines.FrameworkAssertionEngine
    */
    public FrameworkAssertionEngine function dontSeeInCollection(required string key, string value, boolean private);
}