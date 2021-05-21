Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8415738C838
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 15:36:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09F8D6187E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 13:36:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5FC6F61A2A; Fri, 21 May 2021 13:36:01 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 263C061181;
	Fri, 21 May 2021 13:35:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E7C9D60A8D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 13:35:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DB5A861181; Fri, 21 May 2021 13:35:56 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by lists.linaro.org (Postfix) with ESMTPS id D1B4860A8D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 13:35:54 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id t3so23335224edc.7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 06:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=CQNC5tcnBn2sqXfCRtfQO1Epq9bHKf0uPXF2miAwK8c=;
 b=fLsWWbaiDOqeBWiqz6Z+lTChhnRdQXJhHKLIfA8sFTt4eb1cfC4Lt3RrcQ21kaW+jW
 OHIxj5PhomewXQVDOd/NF4aWy9+nfK225wjSgNf4pICpSZapsAFD8LYus0KDiKKUuQ8g
 q29dSw99YdnCWDV0xwHNcRcX6NgiJpwFfWk5fk2Ot7V6FoTtgokzv/SI1lCWzOgnr2Lc
 FU/z2kh1YvgJfgjqA275Qr3tRFOI5QZVbtUGtxUdON110xwRCN7lFaz+JPDs9sgDLpka
 7E+Uyoi5ddadvNEHHi1V3c2eC9DHyCLuYNLje5KHnohs/PqXiQcNWWZsqQZnDUp3ltdP
 CmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=CQNC5tcnBn2sqXfCRtfQO1Epq9bHKf0uPXF2miAwK8c=;
 b=qeMmnsL8kCc7/DMuATGmmbBR5/g1uUh/beWVRmw+2wIlU+N4i7sPI+dxvsNAiKPefI
 S+zlv75l6yYBfw88aUl7n0v6NgG2Hl6TeWbA75Gl43X2jp7bi7OY86GZfkaHblRtyN7N
 I3URW8CbphnaRee2299/VoNCDJmdaZHOBa6wFEDdL2nXA8WGPsPX9EhKNMVdSAilAI3B
 XIWxxZr1AzE66UDXkkmELyAkIEaY1EaChWzJLqNNx4P8IJdlmyBjgWxqF5d2yu3N3yP9
 6NWbvCWrSy9q++xGTcJHoh5/AydkFosjlyUiwAbSrHW+BcPAHqsKlv5odUYSkPeqxCSo
 wkGg==
X-Gm-Message-State: AOAM532Jh9XOLg/1ufJuCiMsZw7Zx/EdsI7rAInDA6nigHyw9OfYmhdK
 XVodp+rkaWnobGfNjnfUo+s=
X-Google-Smtp-Source: ABdhPJyPW3mc2rl6LjDNVIo7U/7GXPuRodp/tiEJiegxksa2IqC/S5vF1kHBS0G+Zgd1fxT0kjpidw==
X-Received: by 2002:aa7:d550:: with SMTP id u16mr9565282edr.72.1621604153975; 
 Fri, 21 May 2021 06:35:53 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:b48f:ff97:fb4c:5b1d?
 ([2a02:908:1252:fb60:b48f:ff97:fb4c:5b1d])
 by smtp.gmail.com with ESMTPSA id df8sm3942018edb.58.2021.05.21.06.35.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 May 2021 06:35:52 -0700 (PDT)
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, alexander.deucher@amd.com
References: <1621590628-75988-1-git-send-email-jiapeng.chong@linux.alibaba.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <09e40764-1d3a-0dfe-b278-5b5ce04670a9@gmail.com>
Date: Fri, 21 May 2021 15:35:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <1621590628-75988-1-git-send-email-jiapeng.chong@linux.alibaba.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdgpu: Fix inconsistent indenting
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
Cc: airlied@linux.ie, Xinhui.Pan@amd.com, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, christian.koenig@amd.com,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjEuMDUuMjEgdW0gMTE6NTAgc2NocmllYiBKaWFwZW5nIENob25nOgo+IEVsaW1pbmF0ZSB0
aGUgZm9sbG93IHNtYXRjaCB3YXJuaW5nOgo+Cj4gZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
c2RtYV92NV8wLmM6NDQ5Cj4gc2RtYV92NV8wX3JpbmdfZW1pdF9tZW1fc3luYygpIHdhcm46IGlu
Y29uc2lzdGVudCBpbmRlbnRpbmcuCj4KPiBSZXBvcnRlZC1ieTogQWJhY2kgUm9ib3QgPGFiYWNp
QGxpbnV4LmFsaWJhYmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEppYXBlbmcgQ2hvbmcgPGppYXBl
bmcuY2hvbmdAbGludXguYWxpYmFiYS5jb20+CgpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L3NkbWFfdjVfMC5jIHwgMTMgKysrKysrLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y1XzAuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L3NkbWFfdjVfMC5jCj4gaW5kZXggNzVkNzMxMC4uYzQ1ZTFiMCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y1XzAuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjVfMC5jCj4gQEAgLTQ0MCwyMCArNDQwLDE5IEBAIHN0
YXRpYyB2b2lkIHNkbWFfdjVfMF9yaW5nX2VtaXRfaWIoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5n
LAo+ICAgICovCj4gICBzdGF0aWMgdm9pZCBzZG1hX3Y1XzBfcmluZ19lbWl0X21lbV9zeW5jKHN0
cnVjdCBhbWRncHVfcmluZyAqcmluZykKPiAgIHsKPiAtICAgIHVpbnQzMl90IGdjcl9jbnRsID0K
PiAtCQkgICAgU0RNQV9HQ1JfR0wyX0lOViB8IFNETUFfR0NSX0dMMl9XQiB8IFNETUFfR0NSX0dM
TV9JTlYgfAo+IC0JCQlTRE1BX0dDUl9HTDFfSU5WIHwgU0RNQV9HQ1JfR0xWX0lOViB8IFNETUFf
R0NSX0dMS19JTlYgfAo+IC0JCQlTRE1BX0dDUl9HTElfSU5WKDEpOwo+ICsJdWludDMyX3QgZ2Ny
X2NudGwgPSBTRE1BX0dDUl9HTDJfSU5WIHwgU0RNQV9HQ1JfR0wyX1dCIHwgU0RNQV9HQ1JfR0xN
X0lOViB8Cj4gKwkJCSAgICBTRE1BX0dDUl9HTDFfSU5WIHwgU0RNQV9HQ1JfR0xWX0lOViB8IFNE
TUFfR0NSX0dMS19JTlYgfAo+ICsJCQkgICAgU0RNQV9HQ1JfR0xJX0lOVigxKTsKPiAgIAo+ICAg
CS8qIGZsdXNoIGVudGlyZSBjYWNoZSBMMC9MMS9MMiwgdGhpcyBjYW4gYmUgb3B0aW1pemVkIGJ5
IHBlcmZvcm1hbmNlIHJlcXVpcmVtZW50ICovCj4gICAJYW1kZ3B1X3Jpbmdfd3JpdGUocmluZywg
U0RNQV9QS1RfSEVBREVSX09QKFNETUFfT1BfR0NSX1JFUSkpOwo+ICAgCWFtZGdwdV9yaW5nX3dy
aXRlKHJpbmcsIFNETUFfUEtUX0dDUl9SRVFfUEFZTE9BRDFfQkFTRV9WQV8zMV83KDApKTsKPiAg
IAlhbWRncHVfcmluZ193cml0ZShyaW5nLCBTRE1BX1BLVF9HQ1JfUkVRX1BBWUxPQUQyX0dDUl9D
T05UUk9MXzE1XzAoZ2NyX2NudGwpIHwKPiAtCQkJU0RNQV9QS1RfR0NSX1JFUV9QQVlMT0FEMl9C
QVNFX1ZBXzQ3XzMyKDApKTsKPiArCQkJICBTRE1BX1BLVF9HQ1JfUkVRX1BBWUxPQUQyX0JBU0Vf
VkFfNDdfMzIoMCkpOwo+ICAgCWFtZGdwdV9yaW5nX3dyaXRlKHJpbmcsIFNETUFfUEtUX0dDUl9S
RVFfUEFZTE9BRDNfTElNSVRfVkFfMzFfNygwKSB8Cj4gLQkJCVNETUFfUEtUX0dDUl9SRVFfUEFZ
TE9BRDNfR0NSX0NPTlRST0xfMThfMTYoZ2NyX2NudGwgPj4gMTYpKTsKPiArCQkJICBTRE1BX1BL
VF9HQ1JfUkVRX1BBWUxPQUQzX0dDUl9DT05UUk9MXzE4XzE2KGdjcl9jbnRsID4+IDE2KSk7Cj4g
ICAJYW1kZ3B1X3Jpbmdfd3JpdGUocmluZywgU0RNQV9QS1RfR0NSX1JFUV9QQVlMT0FENF9MSU1J
VF9WQV80N18zMigwKSB8Cj4gLQkJCVNETUFfUEtUX0dDUl9SRVFfUEFZTE9BRDRfVk1JRCgwKSk7
Cj4gKwkJCSAgU0RNQV9QS1RfR0NSX1JFUV9QQVlMT0FENF9WTUlEKDApKTsKPiAgIH0KPiAgIAo+
ICAgLyoqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
