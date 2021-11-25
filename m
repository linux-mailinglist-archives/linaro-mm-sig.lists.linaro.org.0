Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A517C45D75C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Nov 2021 10:38:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E67F761F0D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Nov 2021 09:38:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 103F262170; Thu, 25 Nov 2021 09:38:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1ED1A60CA7;
	Thu, 25 Nov 2021 09:38:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 51B7C60B92
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 09:38:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4967160CA7; Thu, 25 Nov 2021 09:38:36 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by lists.linaro.org (Postfix) with ESMTPS id 3FC7160B92
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 09:38:34 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id k37so14832659lfv.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 01:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aQfEF2jOyB6rG0WgJqxX+s72gSlGzMx+nQDP2V3jnUo=;
 b=XP1s+2vl2wLKjYg8HW8m0tBRvF1KXYoTcuBdkaaqufBoeAAUNFbRtKZwsWlR9Qx9o7
 sQfne5msWVBOQ2sExqYlvGUSXCf/nzLL4eBoQjyPJrPkU6vh/e6Ski5TOJZXOR2ORSrI
 Bm+8i6X5FK/MPGj3rkm64ToQQgAAmHyN5TFzSlZBYu4WZP+L8sCHlNHUXxG5j1exzQDg
 TmzWk7pSIK/QvGZQw6J2q7td0fvZRwYoAPn0lK7WdP7iZemoSkWzW9UGjFqC6zGVMxLa
 llEiF9wHAVSX6MuEkqlXH6/AFGI+yHioqITD0XWU1zM8ylc0lOHJqsVFbzYAxOWc4mlA
 QxjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aQfEF2jOyB6rG0WgJqxX+s72gSlGzMx+nQDP2V3jnUo=;
 b=EtKIqoHqdu2wXZ7aL8ajBN135vxSp2I0HwA6Arbvl1tH/cQIoHg+uEhlcBa01j9/Y+
 Rwx+IYbYTIm1fhtEFEIDHO35rkxROZ1rbeRwLANevemiksRxUWUumnGAP/Z4m8pxwFU3
 SZ045wr3NfZ0ElvkxCeBlm4AnAZU4Xsd/YJWuGv2aBI4VhS97Pzz7/2cGhAm/iul2uIC
 9QbB2EMP8SeyvF6z7ZVY6pN/7bmyUHXJYCFwHQsiCB4GtOQDYl6XykVt5gFlUmFo0rZk
 GsRo3wX9ryGjxfeJSymokIkIWn0Kb3rI1ExUwwLVcO66QAlPRxIIu5lAKnYMTHhHnbYE
 iJ0Q==
X-Gm-Message-State: AOAM530E3wqVYjbqvK9zQDHwTbJZvom+oPU7QHDCOQcFi+ResN5nzQWq
 yN3gcwgDcI19AJiJ39GqIW8=
X-Google-Smtp-Source: ABdhPJzWc+bPvWIJYmGhydRiz7YOTBnPcF7QeIDgBqlVGZLg7GMaZCawciOk/gkfmc3Yo0+Xvj4ncw==
X-Received: by 2002:a05:6512:3213:: with SMTP id
 d19mr22334711lfe.519.1637833113104; 
 Thu, 25 Nov 2021 01:38:33 -0800 (PST)
Received: from [192.168.2.145] (94-29-48-99.dynamic.spd-mgts.ru. [94.29.48.99])
 by smtp.googlemail.com with ESMTPSA id n9sm203122lji.131.2021.11.25.01.38.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Nov 2021 01:38:32 -0800 (PST)
To: Akhil R <akhilrajeev@nvidia.com>
References: <1637831237-30652-1-git-send-email-akhilrajeev@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <2a005ca8-e46a-59d0-c219-dfc94a3b810f@gmail.com>
Date: Thu, 25 Nov 2021 12:38:31 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1637831237-30652-1-git-send-email-akhilrajeev@nvidia.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3] i2c: tegra: Add the ACPI support
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 jonathanh@nvidia.com, linaro-mm-sig@lists.linaro.org,
 andy.shevchenko@gmail.com, ldewangan@nvidia.com, thierry.reding@gmail.com,
 linux-i2c@vger.kernel.org, p.zabel@pengutronix.de, linux-tegra@vger.kernel.org,
 christian.koenig@amd.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

MjUuMTEuMjAyMSAxMjowNywgQWtoaWwgUiDQv9C40YjQtdGCOgo+IEFkZCBzdXBwb3J0IGZvciB0
aGUgQUNQSSBiYXNlZCBkZXZpY2UgcmVnaXN0cmF0aW9uIHNvIHRoYXQgdGhlIGRyaXZlcgo+IGNh
biBiZSBhbHNvIGVuYWJsZWQgdGhyb3VnaCBBQ1BJIHRhYmxlLgo+IAo+IFRoaXMgZG9lcyBub3Qg
aW5jbHVkZSB0aGUgQUNQSSBzdXBwb3J0IGZvciBUZWdyYSBWSSBhbmQgRFZDIEkyQy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBBa2hpbCBSIDxha2hpbHJhamVldkBudmlkaWEuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL2kyYy9idXNzZXMvaTJjLXRlZ3JhLmMgfCA1MiArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKyks
IDEyIGRlbGV0aW9ucygtKQo+IAo+IHYzIGNoYW5nZXMKPiAgICogcmVtb3ZlZCBhY3BpX2hhc19t
ZXRob2QgY2hlY2suCj4gICAqIG1vdmVkIGRldl9lcnJfcHJvYmUgdG8gaW5pdF9yZXNldCBmdW5j
dGlvbiB0byBtYWtlIGl0IGNvbnNpc3RlbnQgd2l0aAo+IAlpbml0X2Nsb2Nrcy4KPiAgICogVXBk
YXRlcyBpbiBjb21taXQgbWVzc2FnZSBhcyBzdWdnZXN0ZWQuCj4gCj4gdjIgLSBodHRwczovL2xr
bWwub3JnL2xrbWwvMjAyMS8xMS8yMy84Mgo+IHYxIC0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIw
MjEvMTEvMTkvMzkzCgpBa2hpbCwgdGhlIHBhdGNoIGxvb2tzIGFsbW9zdCBnb29kLCB0aGFuayB5
b3UuIFBsZWFzZSBzZWUgb25lIG1pbm9yCnF1ZXN0aW9uIGJlbG93LgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9pMmMvYnVzc2VzL2kyYy10ZWdyYS5jIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy10
ZWdyYS5jCj4gaW5kZXggYzg4MzA0NC4uYjg4OWViMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2ky
Yy9idXNzZXMvaTJjLXRlZ3JhLmMKPiArKysgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXRlZ3Jh
LmMKPiBAQCAtNiw2ICs2LDcgQEAKPiAgICogQXV0aG9yOiBDb2xpbiBDcm9zcyA8Y2Nyb3NzQGFu
ZHJvaWQuY29tPgo+ICAgKi8KPiAgCj4gKyNpbmNsdWRlIDxsaW51eC9hY3BpLmg+Cj4gICNpbmNs
dWRlIDxsaW51eC9iaXRmaWVsZC5oPgo+ICAjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gICNpbmNs
dWRlIDxsaW51eC9kZWxheS5oPgo+IEBAIC02MDgsNiArNjA5LDcgQEAgc3RhdGljIGludCB0ZWdy
YV9pMmNfd2FpdF9mb3JfY29uZmlnX2xvYWQoc3RydWN0IHRlZ3JhX2kyY19kZXYgKmkyY19kZXYp
Cj4gIHN0YXRpYyBpbnQgdGVncmFfaTJjX2luaXQoc3RydWN0IHRlZ3JhX2kyY19kZXYgKmkyY19k
ZXYpCj4gIHsKPiAgCXUzMiB2YWwsIGNsa19kaXZpc29yLCBjbGtfbXVsdGlwbGllciwgdHN1X3Ro
ZCwgdGxvdywgdGhpZ2gsIG5vbl9oc19tb2RlOwo+ICsJYWNwaV9oYW5kbGUgaGFuZGxlID0gQUNQ
SV9IQU5ETEUoaTJjX2Rldi0+ZGV2KTsKCi4uLgo+ICtzdGF0aWMgaW50IHRlZ3JhX2kyY19pbml0
X3Jlc2V0KHN0cnVjdCB0ZWdyYV9pMmNfZGV2ICppMmNfZGV2KQo+ICt7Cj4gKwlpZiAoaGFzX2Fj
cGlfY29tcGFuaW9uKGkyY19kZXYtPmRldikpCj4gKwkJcmV0dXJuIDA7CgpDYW4gd2UgdXNlIEFD
UElfSEFORExFKCkgZXZlcnl3aGVyZSBpbnN0ZWFkIG9mIGhhc19hY3BpX2NvbXBhbmlvbigpPyBG
b3IKY29uc2lzdGVuY3kuIEkgZ3Vlc3MgdGhhdCdzIHdoYXQgQW5keSB3YXMgYXNraW5nIGFib3V0
IGluIHYxPwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
