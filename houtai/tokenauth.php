<?php
//Copyright (c) 2016 iFeiwu.com
 class TokenAuth implements iAuthenticate { function __isAuthenticated() { $token = $_GET["\164\x6f\x6b\145\156"]; return $token && $token == TokenAuth::key() ? TRUE : FALSE; } function key() { return require "\164\x6f\153\145\x6e\56\x70\150\160"; } }
