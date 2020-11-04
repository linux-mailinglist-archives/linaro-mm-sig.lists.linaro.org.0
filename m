Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF002A5F0F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Nov 2020 09:03:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5371A6606B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Nov 2020 08:03:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 44B6766635; Wed,  4 Nov 2020 08:03:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E7376621A;
	Wed,  4 Nov 2020 08:03:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BBAEE66014
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Nov 2020 08:03:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A71AF6621A; Wed,  4 Nov 2020 08:03:21 +0000 (UTC)
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by lists.linaro.org (Postfix) with ESMTPS id 4DD6166014
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Nov 2020 08:03:20 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id o21so21403632ejb.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Nov 2020 00:03:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=lSHGlcZONhf6qBQExAcS/zcrqWFtE8KDWWdwXpyQQ+o=;
 b=ZgT2caWfySs1qbVHObXUEUvz277cAJdHzMUC1ti88xxjFQVWSNXewjkmWI2vZiiSwu
 egs4XzBKSB//uTlxp0wH7uZxKVZ2ytg3VSgq8aDmXcEeYsNu+9l+ca1cR50WkQXW1KOh
 W3D3jsXJIbBv31XAHrvWto/IyPiwj5sYTw9zLQSGT8n+AwEHF6Ezj2PEcEyonmMUGcQS
 85XnuISMq22t5kfzSIDue6eX/f+aKnXT60fu9qk7f7kigIcPnzu+XOihCGcFnN97MtSC
 r3VRbNnuhAs1o1fT2hXxZ0GsveZusmb6hOj1LBJgBatb7lbF/Gin0ziC0dhW0PxWxYqs
 hGlA==
X-Gm-Message-State: AOAM5334LevLbKS4+jdp83Zopw+KB1Vu0PBMu/ivclG3lHxI8PUo7zwS
 RZGEFTw+WH1eoctRJ5dOYsA=
X-Google-Smtp-Source: ABdhPJyYf7wTm7PCR+aDC0KR0zCSeQg/FQpbVuARHDgbDgaGw2ovwStfe5mIvBm9OL1gpSoTMbbB9g==
X-Received: by 2002:a17:906:c1d4:: with SMTP id
 bw20mr23369417ejb.91.1604476999489; 
 Wed, 04 Nov 2020 00:03:19 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id f25sm600558edr.53.2020.11.04.00.03.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 00:03:18 -0800 (PST)
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
To: akpm@linux-foundation.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 chris@chris-wilson.co.uk, airlied@redhat.com, daniel@ffwll.ch,
 sumit.semwal@linaro.org, willy@infradead.org, jhubbard@nvidia.com,
 jgg@ziepe.ca, linmiaohe@huawei.com
References: <20201012085203.56119-1-christian.koenig@amd.com>
Message-ID: <be6d248d-01d4-f2a3-5e33-7f311daef0b7@gmail.com>
Date: Wed, 4 Nov 2020 09:03:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201012085203.56119-1-christian.koenig@amd.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: mmap: fix fput in error path v2
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SWYgbm9ib2R5IGNvbWVzIHVwIHdpdGggYW4gb2JqZWN0aW9ucyBJJ20gZ29pbmcgdG8gbWVyZ2Ug
dGhhdCB0aHJvdWdoIApkcm0tbWlzYy1uZXh0LgoKVGhhbmtzLApDaHJpc3RpYW4uCgpBbSAxMi4x
MC4yMCB1bSAxMDo1MiBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6Cj4gUGF0Y2ggIjQ5NWMxMGNj
MWMwYyBDSFJPTUlVTTogZG1hLWJ1ZjogcmVzdG9yZSBhcmdzLi4uIgo+IGFkZHMgYSB3b3JrYXJv
dW5kIGZvciBhIGJ1ZyBpbiBtbWFwX3JlZ2lvbi4KPgo+IEFzIHRoZSBjb21tZW50IHN0YXRlcyAt
Pm1tYXAoKSBjYWxsYmFjayBjYW4gY2hhbmdlCj4gdm1hLT52bV9maWxlIGFuZCBzbyB3ZSBtaWdo
dCBjYWxsIGZwdXQoKSBvbiB0aGUgd3JvbmcgZmlsZS4KPgo+IFJldmVydCB0aGUgd29ya2Fyb3Vu
ZCBhbmQgcHJvcGVyIGZpeCB0aGlzIGluIG1tYXBfcmVnaW9uLgo+Cj4gdjI6IGRyb3AgdGhlIGV4
dHJhIGlmIGluIGRtYV9idWZfbW1hcCBhcyB3ZWxsCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEphc29u
IEd1bnRob3JwZSA8amdnQG52aWRpYS5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jIHwgMjAgKysrLS0tLS0tLS0tLS0tLS0tLS0KPiAgIG1tL21tYXAuYyAgICAgICAgICAg
ICAgICAgfCAgMiArLQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDE4IGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gaW5kZXggYTZiYTRkNTk4ZjBlLi4wODYzMGQwNTdj
ZjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiBAQCAtMTE0Myw5ICsxMTQzLDYgQEAgRVhQT1JUX1NZTUJP
TF9HUEwoZG1hX2J1Zl9lbmRfY3B1X2FjY2Vzcyk7Cj4gICBpbnQgZG1hX2J1Zl9tbWFwKHN0cnVj
dCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLAo+ICAgCQkgdW5z
aWduZWQgbG9uZyBwZ29mZikKPiAgIHsKPiAtCXN0cnVjdCBmaWxlICpvbGRmaWxlOwo+IC0JaW50
IHJldDsKPiAtCj4gICAJaWYgKFdBUk5fT04oIWRtYWJ1ZiB8fCAhdm1hKSkKPiAgIAkJcmV0dXJu
IC1FSU5WQUw7Cj4gICAKPiBAQCAtMTE2MywyMiArMTE2MCwxMSBAQCBpbnQgZG1hX2J1Zl9tbWFw
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLAo+ICAg
CQlyZXR1cm4gLUVJTlZBTDsKPiAgIAo+ICAgCS8qIHJlYWRqdXN0IHRoZSB2bWEgKi8KPiAtCWdl
dF9maWxlKGRtYWJ1Zi0+ZmlsZSk7Cj4gLQlvbGRmaWxlID0gdm1hLT52bV9maWxlOwo+IC0Jdm1h
LT52bV9maWxlID0gZG1hYnVmLT5maWxlOwo+ICsJZnB1dCh2bWEtPnZtX2ZpbGUpOwo+ICsJdm1h
LT52bV9maWxlID0gZ2V0X2ZpbGUoZG1hYnVmLT5maWxlKTsKPiAgIAl2bWEtPnZtX3Bnb2ZmID0g
cGdvZmY7Cj4gICAKPiAtCXJldCA9IGRtYWJ1Zi0+b3BzLT5tbWFwKGRtYWJ1Ziwgdm1hKTsKPiAt
CWlmIChyZXQpIHsKPiAtCQkvKiByZXN0b3JlIG9sZCBwYXJhbWV0ZXJzIG9uIGZhaWx1cmUgKi8K
PiAtCQl2bWEtPnZtX2ZpbGUgPSBvbGRmaWxlOwo+IC0JCWZwdXQoZG1hYnVmLT5maWxlKTsKPiAt
CX0gZWxzZSB7Cj4gLQkJaWYgKG9sZGZpbGUpCj4gLQkJCWZwdXQob2xkZmlsZSk7Cj4gLQl9Cj4g
LQlyZXR1cm4gcmV0Owo+IC0KPiArCXJldHVybiBkbWFidWYtPm9wcy0+bW1hcChkbWFidWYsIHZt
YSk7Cj4gICB9Cj4gICBFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX21tYXApOwo+ICAgCj4gZGlm
ZiAtLWdpdCBhL21tL21tYXAuYyBiL21tL21tYXAuYwo+IGluZGV4IDQwMjQ4ZDg0YWQ1Zi4uM2Ey
NjcwZDczMzU1IDEwMDY0NAo+IC0tLSBhL21tL21tYXAuYwo+ICsrKyBiL21tL21tYXAuYwo+IEBA
IC0xODUyLDggKzE4NTIsOCBAQCB1bnNpZ25lZCBsb25nIG1tYXBfcmVnaW9uKHN0cnVjdCBmaWxl
ICpmaWxlLCB1bnNpZ25lZCBsb25nIGFkZHIsCj4gICAJcmV0dXJuIGFkZHI7Cj4gICAKPiAgIHVu
bWFwX2FuZF9mcmVlX3ZtYToKPiArCWZwdXQodm1hLT52bV9maWxlKTsKPiAgIAl2bWEtPnZtX2Zp
bGUgPSBOVUxMOwo+IC0JZnB1dChmaWxlKTsKPiAgIAo+ICAgCS8qIFVuZG8gYW55IHBhcnRpYWwg
bWFwcGluZyBkb25lIGJ5IGEgZGV2aWNlIGRyaXZlci4gKi8KPiAgIAl1bm1hcF9yZWdpb24obW0s
IHZtYSwgcHJldiwgdm1hLT52bV9zdGFydCwgdm1hLT52bV9lbmQpOwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
