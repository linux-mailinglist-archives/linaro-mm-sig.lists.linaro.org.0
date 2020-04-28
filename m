Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B80B81BC27C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 17:15:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E4CEE617C9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:15:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D6CE161813; Tue, 28 Apr 2020 15:15:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C74806181D;
	Tue, 28 Apr 2020 15:14:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0125E617C9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 15:14:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D154C6181D; Tue, 28 Apr 2020 15:14:44 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id AE318617C9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 15:14:43 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id h4so3211897wmb.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 08:14:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=l31iHzi+Qs0wCkNpZUkmQ43l/0Uer53q54jbPNk9/tA=;
 b=uncXZwVH2YBS+6h7agHIc+4qAPdzoj7m1/WZD9Hndk35v8/H4Cp4G2B+hXvUcSohQ4
 qbL/lOf3jq2zuldjhh7+0zfWe4kK3xJJJFXvCYP8XnAamYdfNo+uwTBJxBWpcigKsm2+
 90sdrmkbBKxilTI5Ub0HO0an3NQSf+drVBlgrQ+lMA0haxD4zt/s9XlkfgV4CYu4mKdi
 kYkZRlumoAwkYscuZ1CvPiN+H9p6UEL+pXsAl6gOGP3UMZnV2HE80/0hrsV5cK1yejGj
 BqtXSL1YbRSh4JvtDHKJtNRzZJByj1M+2eoxfXVTmL+adYr+S60BtWPJ55S3FV37Yrgz
 56ww==
X-Gm-Message-State: AGi0PuY8pgC3NJB6u3CFD8bu51QPbwTw+JYnVLREDGk/91uADEjiiU0t
 SOKyz9Hmz+wZnPaJ1Qk2SoY=
X-Google-Smtp-Source: APiQypL8H3EcxyO7rOvNQpM8a9StjgW5VyI7nmqOUuAgjrQlknQi+ypDm7LmhWDvCqyCCbM8wblpgQ==
X-Received: by 2002:a1c:7715:: with SMTP id t21mr4857338wmi.182.1588086882730; 
 Tue, 28 Apr 2020 08:14:42 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id s8sm25807970wru.38.2020.04.28.08.14.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 08:14:42 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132023eucas1p2a1993145eef91506698aa8c9750a7e43@eucas1p2.samsung.com>
 <20200428132005.21424-3-m.szyprowski@samsung.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <c462d1f0-8daa-76bb-a7fd-5e0d687975d5@gmail.com>
Date: Tue, 28 Apr 2020 17:14:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200428132005.21424-3-m.szyprowski@samsung.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [RFC 02/17] drm: amdgpu: fix sg_table nents vs.
	orig_nents misuse
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

QW0gMjguMDQuMjAgdW0gMTU6MTkgc2NocmllYiBNYXJlayBTenlwcm93c2tpOgo+IFRoZSBEb2N1
bWVudGF0aW9uL0RNQS1BUEktSE9XVE8udHh0IHN0YXRlcyB0aGF0IGRtYV9tYXBfc2cgcmV0dXJu
cyB0aGUKPiBudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRkcmVzcyBz
cGFjZS4gSG93ZXZlciB0aGUKPiBzdWJzZXF1ZW50IGNhbGxzIHRvIGRtYV9zeW5jX3NnX2Zvcl97
ZGV2aWNlLGNwdX0gYW5kIGRtYV91bm1hcF9zZyBtdXN0IGJlCj4gY2FsbGVkIHdpdGggdGhlIG9y
aWdpbmFsIG51bWJlciBvZiBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUKPiBzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCj4gaW4gaW5jbHVkZS9saW51eC9zY2F0dGVybGlzdC5oLiBBZGFwdCB0aGUg
Y29kZSB0byBvYmV5IHRob3NlIHJ1bGVzLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJv
d3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgoKUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIHwgNyArKysrLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgICAgIHwgOCArKysrLS0tLQo+ICAgMiBmaWxl
cyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMKPiBpbmRleCA0M2Q4ZWQ3Li40ZGY4
MTNlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFf
YnVmLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5j
Cj4gQEAgLTMwNyw4ICszMDcsOSBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICphbWRncHVfZG1h
X2J1Zl9tYXAoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAo+ICAgCQlpZiAoSVNf
RVJSKHNndCkpCj4gICAJCQlyZXR1cm4gc2d0Owo+ICAgCj4gLQkJaWYgKCFkbWFfbWFwX3NnX2F0
dHJzKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGlyLAo+IC0JCQkJICAgICAg
RE1BX0FUVFJfU0tJUF9DUFVfU1lOQykpCj4gKwkJc2d0LT5uZW50cyA9IGRtYV9tYXBfc2dfYXR0
cnMoYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVudHMsCj4gKwkJCQkJICAgICAg
ZGlyLCBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKPiArCQlpZiAoIXNndC0+bmVudHMpCj4gICAJ
CQlnb3RvIGVycm9yX2ZyZWU7Cj4gICAJCWJyZWFrOwo+ICAgCj4gQEAgLTM0OSw3ICszNTAsNyBA
QCBzdGF0aWMgdm9pZCBhbWRncHVfZG1hX2J1Zl91bm1hcChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2gsCj4gICAJc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYgPSBhbWRncHVfdHRt
X2FkZXYoYm8tPnRiby5iZGV2KTsKPiAgIAo+ICAgCWlmIChzZ3QtPnNnbC0+cGFnZV9saW5rKSB7
Cj4gLQkJZG1hX3VubWFwX3NnKGF0dGFjaC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgZGly
KTsKPiArCQlkbWFfdW5tYXBfc2coYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVu
dHMsIGRpcik7Cj4gICAJCXNnX2ZyZWVfdGFibGUoc2d0KTsKPiAgIAkJa2ZyZWUoc2d0KTsKPiAg
IAl9IGVsc2Ugewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMKPiBpbmRl
eCBkNTU0M2MyLi41ZjMxNTg1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV90dG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV90dG0uYwo+IEBAIC0xMDQzLDcgKzEwNDMsNiBAQCBzdGF0aWMgaW50IGFtZGdwdV90dG1fdHRf
cGluX3VzZXJwdHIoc3RydWN0IHR0bV90dCAqdHRtKQo+ICAgewo+ICAgCXN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9hZGV2KHR0bS0+YmRldik7Cj4gICAJc3RydWN0IGFt
ZGdwdV90dG1fdHQgKmd0dCA9ICh2b2lkICopdHRtOwo+IC0JdW5zaWduZWQgbmVudHM7Cj4gICAJ
aW50IHI7Cj4gICAKPiAgIAlpbnQgd3JpdGUgPSAhKGd0dC0+dXNlcmZsYWdzICYgQU1ER1BVX0dF
TV9VU0VSUFRSX1JFQURPTkxZKTsKPiBAQCAtMTA1OSw4ICsxMDU4LDkgQEAgc3RhdGljIGludCBh
bWRncHVfdHRtX3R0X3Bpbl91c2VycHRyKHN0cnVjdCB0dG1fdHQgKnR0bSkKPiAgIAo+ICAgCS8q
IE1hcCBTRyB0byBkZXZpY2UgKi8KPiAgIAlyID0gLUVOT01FTTsKPiAtCW5lbnRzID0gZG1hX21h
cF9zZyhhZGV2LT5kZXYsIHR0bS0+c2ctPnNnbCwgdHRtLT5zZy0+bmVudHMsIGRpcmVjdGlvbik7
Cj4gLQlpZiAobmVudHMgPT0gMCkKPiArCXR0bS0+c2ctPm5lbnRzID0gZG1hX21hcF9zZyhhZGV2
LT5kZXYsIHR0bS0+c2ctPnNnbCwKPiArCQkJCSAgICB0dG0tPnNnLT5vcmlnX25lbnRzLCBkaXJl
Y3Rpb24pOwo+ICsJaWYgKHR0bS0+c2ctPm5lbnRzID09IDApCj4gICAJCWdvdG8gcmVsZWFzZV9z
ZzsKPiAgIAo+ICAgCS8qIGNvbnZlcnQgU0cgdG8gbGluZWFyIGFycmF5IG9mIHBhZ2VzIGFuZCBk
bWEgYWRkcmVzc2VzICovCj4gQEAgLTEwOTEsNyArMTA5MSw3IEBAIHN0YXRpYyB2b2lkIGFtZGdw
dV90dG1fdHRfdW5waW5fdXNlcnB0cihzdHJ1Y3QgdHRtX3R0ICp0dG0pCj4gICAJCXJldHVybjsK
PiAgIAo+ICAgCS8qIHVubWFwIHRoZSBwYWdlcyBtYXBwZWQgdG8gdGhlIGRldmljZSAqLwo+IC0J
ZG1hX3VubWFwX3NnKGFkZXYtPmRldiwgdHRtLT5zZy0+c2dsLCB0dG0tPnNnLT5uZW50cywgZGly
ZWN0aW9uKTsKPiArCWRtYV91bm1hcF9zZyhhZGV2LT5kZXYsIHR0bS0+c2ctPnNnbCwgdHRtLT5z
Zy0+b3JpZ19uZW50cywgZGlyZWN0aW9uKTsKPiAgIAo+ICAgCXNnX2ZyZWVfdGFibGUodHRtLT5z
Zyk7Cj4gICAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
