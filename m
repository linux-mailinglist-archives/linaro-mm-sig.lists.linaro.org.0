Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D021D30B25A
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Feb 2021 22:54:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA0C861504
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Feb 2021 21:54:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DBA666674A; Mon,  1 Feb 2021 21:54:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 545EB66008;
	Mon,  1 Feb 2021 21:54:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E366D6093B
 for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Feb 2021 21:54:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C647066008; Mon,  1 Feb 2021 21:54:19 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by lists.linaro.org (Postfix) with ESMTPS id 919716093B
 for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Feb 2021 21:54:18 +0000 (UTC)
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-10-FeFJcDvVORySDDvzKQRjZg-1; Mon, 01 Feb 2021 16:54:12 -0500
X-MC-Unique: FeFJcDvVORySDDvzKQRjZg-1
Received: by mail-qk1-f197.google.com with SMTP id d194so14429311qke.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Feb 2021 13:54:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=k1y8GmyBWVCl6Pbg+0+AjclhMsvzhPPIsTiKTMZg/W8=;
 b=HXhcW8LXKMGg3Z2dEAHIxG7sIWxPLwdjtJj3/tgp0rtdCvyrMyBWTTy9qYH4dRKCxH
 TckXKl8Wn5p5z688Yz+08herKj3BDuooxCkWZMLO3o1nF94FkkzGeYgGPp4wGjq/Agr0
 7FX/Q4VM1h8AB85dwer5Ibxosn8yluRC+/4rQ+Q56BHDUrC2Zh1ORtlLr6+sLjD72Xqk
 mf0NmkDVBG3njlfseN8nXFeDswXAz8QAUXg3yTqaNDxpnFlPjAgUvdvmAuvROwLf2sWm
 OvjFr+gZzSEXZuu4lM3PCgtt74i9e4nidTSTVmAm++3doEygYl32wxNZ5QW+u5xD+Rea
 JYmw==
X-Gm-Message-State: AOAM533gv2RF03hY560zfI9hvdJ+mJoIq5yhhCKRwZIr02ZbQ7xQKLuT
 kz+Z86RmTXkEdAt/59uIB41kugE+m1neHX7xQn1B6uzaFaDJw0VXfX+o92oRnNO7KI9kUVCidad
 5YwNjcAD0kpA5gpbKJ5kJaA7f650=
X-Received: by 2002:ac8:7c82:: with SMTP id y2mr17011497qtv.67.1612216452074; 
 Mon, 01 Feb 2021 13:54:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw5ooeTglnEBcbFwXF8LDaJXBhwXBklXKKqPeeM2J3NXPjrz+y63QFGy+CKyScLNX3h+7tlpQ==
X-Received: by 2002:ac8:7c82:: with SMTP id y2mr17011488qtv.67.1612216451917; 
 Mon, 01 Feb 2021 13:54:11 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id b13sm12085730qtj.97.2021.02.01.13.54.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Feb 2021 13:54:11 -0800 (PST)
Message-ID: <4266568da0437ea605bfb2810ead2b05475bfbb8.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Joe
 Perches <joe@perches.com>, Jiri Kosina <trivial@kernel.org>, Sumit Semwal
 <sumit.semwal@linaro.org>
Date: Mon, 01 Feb 2021 16:54:10 -0500
In-Reply-To: <4d5891b7-ea87-974e-d260-f78c3af326bc@amd.com>
References: <cover.1598331148.git.joe@perches.com>
 <990bf6f33ccaf73ad56eb4bea8bd2c0db5e90a31.1598331148.git.joe@perches.com>
 <a87b95d11c22d997ebc423bba71cabef15ca0bac.camel@perches.com>
 <4d5891b7-ea87-974e-d260-f78c3af326bc@amd.com>
Organization: Red Hat
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 08/29] dma-buf: Avoid comma separated
	statements
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: lyude@redhat.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhpcyBpcyBlbnRpcmVseSB1bnJlbGF0ZWQgdG8gdGhpcyB0aHJlYWQsIGJ1dCBJIG5vdGljZWQg
d2hlbiBnb2luZyB0aHJvdWdoIGRyaS0KZGV2ZWwgdGhhdCB0aGlzIGVtYWlsIGlzIHNvbWVob3cg
ZGF0ZWQgdHdvIGRheXMgaW4gdGhlIGZ1dHVyZSBmcm9tIG5vdy4KCk9uIFdlZCwgMjAyMS0wMi0w
MyBhdCAxNDoyNiArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiBBbSAzMC4wMS4yMSB1
bSAxOTo0NyBzY2hyaWViIEpvZSBQZXJjaGVzOgo+ID4gT24gTW9uLCAyMDIwLTA4LTI0IGF0IDIx
OjU2IC0wNzAwLCBKb2UgUGVyY2hlcyB3cm90ZToKPiA+ID4gVXNlIHNlbWljb2xvbnMgYW5kIGJy
YWNlcy4KPiA+IFBpbmc/Cj4gPiDCoCAKPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9lIFBlcmNoZXMg
PGpvZUBwZXJjaGVzLmNvbT4KPiAKPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IAo+IERvIHlvdSBoYXZlIGNvbW1pdCByaWdodHMgdG8g
ZHJtLW1pc2MtbmV4dD8KPiAKPiA+ID4gLS0tCj4gPiA+IMKgwqBkcml2ZXJzL2RtYS1idWYvc3Qt
ZG1hLWZlbmNlLmMgfCA3ICsrKysrLS0KPiA+ID4gwqDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS0KPiA+ID4g
ZmVuY2UuYwo+ID4gPiBpbmRleCBlNTkzMDY0MzQxYzguLmM4YTEyZDdhZDcxYSAxMDA2NDQKPiA+
ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jCj4gPiA+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYwo+ID4gPiBAQCAtNDcxLDggKzQ3MSwxMSBAQCBzdGF0
aWMgaW50IHRocmVhZF9zaWduYWxfY2FsbGJhY2sodm9pZCAqYXJnKQo+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWFfZmVuY2Vfc2lnbmFsKGYx
KTsKPiA+ID4gwqAgCj4gPiA+IAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHNtcF9zdG9yZV9tYihjYi5zZWVuLCBmYWxzZSk7Cj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpZiAoIWYyIHx8IGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soZjIsICZjYi5jYiwK
PiA+ID4gc2ltcGxlX2NhbGxiYWNrKSkKPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBtaXNzKyssIGNiLnNlZW4gPSB0cnVlOwo+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFmMiB8fAo+ID4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soZjIsICZjYi5jYiwg
c2ltcGxlX2NhbGxiYWNrKSkgewo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoG1pc3MrKzsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBjYi5zZWVuID0gdHJ1ZTsKPiA+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoH0KPiA+ID4gwqAgCj4gPiA+IAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGlmICghdC0+YmVmb3JlKQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWFfZmVuY2Vfc2lnbmFsKGYxKTsKPiA+IAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJp
LWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoK
LS0gClNpbmNlcmVseSwKICAgTHl1ZGUgUGF1bCAoc2hlL2hlcikKICAgU29mdHdhcmUgRW5naW5l
ZXIgYXQgUmVkIEhhdAogICAKTm90ZTogSSBkZWFsIHdpdGggYSBsb3Qgb2YgZW1haWxzIGFuZCBo
YXZlIGEgbG90IG9mIGJ1Z3Mgb24gbXkgcGxhdGUuIElmIHlvdSd2ZQphc2tlZCBtZSBhIHF1ZXN0
aW9uLCBhcmUgd2FpdGluZyBmb3IgYSByZXZpZXcvbWVyZ2Ugb24gYSBwYXRjaCwgZXRjLiBhbmQg
SQpoYXZlbid0IHJlc3BvbmRlZCBpbiBhIHdoaWxlLCBwbGVhc2UgZmVlbCBmcmVlIHRvIHNlbmQg
bWUgYW5vdGhlciBlbWFpbCB0byBjaGVjawpvbiBteSBzdGF0dXMuIEkgZG9uJ3QgYml0ZSEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
