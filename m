Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9819C84867
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 11:07:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 62BF1617EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Aug 2019 09:07:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 57D6E617F1; Wed,  7 Aug 2019 09:07:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 290D0617E2;
	Wed,  7 Aug 2019 09:07:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9B27C617DA
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 09:07:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8CBFE617F1; Wed,  7 Aug 2019 09:07:04 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 2D954617DA
 for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Aug 2019 09:07:00 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id x1so40654568wrr.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Aug 2019 02:07:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=UIpcr8YYxIc20s7apfyxPwkze7TOZUQg29wLz+EYcU0=;
 b=FLlVEICP8ditKk6cs8iMhbHxRGbIREqgvrE4IUW+qH9WdXgLhQtPFW7XeyHqc5ISNz
 47LBuXT8ad0tIwmUys/s3BokZROAPZePSViFr0KiQUa9AWQwTwO1ENcos2mmtofy/6YH
 Wzm164Pasm88HqIyhaTmy7vvtgzc8gR1GZXIUETFQ82Oqj2k0tjYNqgnOUJjXoiPmAoT
 EZzeI5Xq1ahvB8cGhVNsrwiYHKs5FrRN28G8vEHhaYopwo+ToqfIJ8iVdRbwu3oO0d6J
 Xzk/ZgR2BK/aPDTYSHoeWo1FpP13sh1IpamF6AvpoK0bbe+S9lm3l/JVpoZSOCi+20n2
 cAiA==
X-Gm-Message-State: APjAAAW5DgvhUWoH/oVGn+7Ow3SQyC1uTig0UZQgDYeDsLpSPtNj6+VE
 wiv6hFG6bCaJmMSnCoh2DjjtJzQZ
X-Google-Smtp-Source: APXvYqx0UxjWRBaqUTlUmhz/4LD1XqmHtRzw7GljgeUhmO+VAL3ZWJ/q6OCUNKgtcLZ+rTRwkSGd/Q==
X-Received: by 2002:adf:dc51:: with SMTP id m17mr9786863wrj.256.1565168819207; 
 Wed, 07 Aug 2019 02:06:59 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id k13sm4808563wro.97.2019.08.07.02.06.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 02:06:58 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20190806150134.104222-1-christian.koenig@amd.com>
 <20190806150134.104222-7-christian.koenig@amd.com>
 <156511947882.6198.3242911017545657039@skylake-alporthouse-com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <7dfbf200-2cee-ac38-0063-fded38d7809e@gmail.com>
Date: Wed, 7 Aug 2019 11:06:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156511947882.6198.3242911017545657039@skylake-alporthouse-com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 7/8] dma-buf: add
	reservation_object_fences helper
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDYuMDguMTkgdW0gMjE6MjQgc2NocmllYiBDaHJpcyBXaWxzb246Cj4gUXVvdGluZyBDaHJp
c3RpYW4gS8O2bmlnICgyMDE5LTA4LTA2IDE2OjAxOjMzKQo+PiBBZGQgYSBuZXcgaGVscGVyIHRv
IGdldCBhIGNvbnNpc3RlbnQgc2V0IG9mIHBvaW50ZXJzIGZyb20gdGhlIHJlc2VydmF0aW9uCj4+
IG9iamVjdC4gV2hpbGUgYXQgaXQgZ3JvdXAgYWxsIGFjY2VzcyBoZWxwZXJzIHRvZ2V0aGVyIGlu
IHRoZSBoZWFkZXIgZmlsZS4KPiBBaCwgbmVlZHMgdG8gYmUgZWFybGllciA6KQoKQWgsIGNyYXAu
IFRoYXQgZ290IGluY29ycmVjdGx5IHJlb3JkZXJlZCB3aGlsZSBtb3ZpbmcgdGhlIGZpeGVzIHRv
IHRoZSAKYmVnaW5uaW5nIG9mIHRoZSBzZXQuCgo+ICAgCj4+ICsvKioKPj4gKyAqIHJlc2VydmF0
aW9uX29iamVjdF9mZW5jZXMgLSByZWFkIGNvbnNpc3RlbnQgZmVuY2UgcG9pbnRlcnMKPj4gKyAq
IEBvYmo6IHJlc2VydmF0aW9uIG9iamVjdCB3aGVyZSB3ZSBnZXQgdGhlIGZlbmNlcyBmcm9tCj4+
ICsgKiBAZXhjbDogcG9pbnRlciBmb3IgdGhlIGV4Y2x1c2l2ZSBmZW5jZQo+PiArICogQGxpc3Q6
IHBvaW50ZXIgZm9yIHRoZSBzaGFyZWQgZmVuY2UgbGlzdAo+PiArICoKPj4gKyAqIE1ha2Ugc3Vy
ZSB3ZSBoYXZlIGEgY29uc2lzdGVuIGV4Y2x1c2l2ZSBmZW5jZSBhbmQgc2hhcmVkIGZlbmNlIGxp
c3QuCj4+ICsgKiBNdXN0IGJlIGNhbGxlZCB3aXRoIHJjdSByZWFkIHNpZGUgbG9jayBoZWxkLgo+
PiArICovCj4+ICtzdGF0aWMgaW5saW5lIHZvaWQKPj4gK3Jlc2VydmF0aW9uX29iamVjdF9mZW5j
ZXMoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqLAo+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKipleGNsLAo+PiArICAgICAgICAgICAgICAgICAgICAg
ICAgIHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3RfbGlzdCAqKmxpc3QpCj4+ICt7Cj4+ICsgICAg
ICAgdW5zaWduZWQgaW50IHNlcTsKPj4gKwo+PiArICAgICAgIGRvIHsKPj4gKyAgICAgICAgICAg
ICAgIHNlcSA9IHJlYWRfc2VxY291bnRfYmVnaW4oJm9iai0+c2VxKTsKPj4gKyAgICAgICAgICAg
ICAgICpleGNsID0gcmN1X2RlcmVmZXJlbmNlKG9iai0+ZmVuY2VfZXhjbCk7Cj4+ICsgICAgICAg
ICAgICAgICAqbGlzdCA9IHJjdV9kZXJlZmVyZW5jZShvYmotPmZlbmNlKTsKPj4gKyAgICAgICB9
IHdoaWxlIChyZWFkX3NlcWNvdW50X3JldHJ5KCZvYmotPnNlcSwgc2VxKSk7Cj4+ICt9Cj4gSSB3
b3VsZCBwZXJzb25hbGx5IHByZWZlciByZXR1cm4gZXhjbCByYXRoZXIgdGhhbiBoYXZlIGl0IGFz
IGEgc2Vjb25kCj4gb3V0cGFyYW0sIGJ1dCBJJ2QgbGVhdmUgdGhhdCB0byBnY2MgdG8gZGVjaWRl
Lgo+Cj4gSGF2aW5nIHN0YXJlZCBhdCB0aGlzLCBJIGFncmVlIHRoaXMgZG9lcyB0aGUgcmlnaHQg
dGhpbmcuIFRoZSBpbXBvcnRhbnQKPiBwb2ludCBmcm9tIGFsbCBjYWxsZXJzJyBwZXJzcGVjdGl2
ZSBpcyB0aGF0IHRoZSBjb21iaW5hdGlvbiBvZiBwb2ludGVycwo+IGlzIGNvbnNpc3RlbnQgZm9y
IHRoaXMgcmN1X3JlYWRfbG9jay4gQW5kIHJjdV9kZXJlZmVyZW5jZSBlbmZvcmNlcyB0aGUKPiBj
YWxsZXJzIGRvIGhvbGQgcmN1X3JlYWRfbG9jay4KPgo+IEkgZGlkbid0IGNoZWNrIGFsbCB0aGUg
Y29udmVyc2lvbnMsIGp1c3Qgc3RhcmVkIGF0IHRoZSBoZWFydCBvZiB0aGUKPiBwcm9ibGVtLgo+
Cj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoK
VGhhbmtzLgoKR29pbmcgdG8gZml4IHRoYXQgdXAsCkNocmlzdGlhbi4KCj4gLUNocmlzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
