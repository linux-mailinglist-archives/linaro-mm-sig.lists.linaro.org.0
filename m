Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A293662AC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Apr 2021 01:58:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB899667BE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 23:58:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DBAE866838; Tue, 20 Apr 2021 23:58:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 810B36684D;
	Tue, 20 Apr 2021 23:57:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8AFDA667BE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 23:57:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 73FFC6684D; Tue, 20 Apr 2021 23:57:41 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
 [209.85.210.41])
 by lists.linaro.org (Postfix) with ESMTPS id F2960667BE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 23:57:39 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id
 d3-20020a9d29030000b029027e8019067fso35515304otb.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 16:57:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=znEmkMwEuNpZTNjrNgX8auZmv/MxbCMnb2W49monkys=;
 b=OG/12EoZ6BVELzIXc3CvMzUMZ91lrMFiDSjUlajptBH2IbaneeBUITkqvvGPLJWCau
 Q+AQKTuWBtColcAf7btyP0k9akF0l7vN6Crfi9ft3jGQYR3F0+TGpYxJB62px9JqJCpU
 6LZc5gXfT4pHatSx7G0/+IcrnsKmtPg/8SZ2bAO9m8Bq2Wv7ysNpMcvP3o0DzhdsejXg
 w04w47LypXPXSiLqdK3jKBogHtRl+QGdLeDwd4CVPjvnkBqBW3m5399nQbqrBjAthQ5w
 rk5HnUGVm7j0JS3S8e8yPy588yl0Yo54HaW57bgNpuSmDnNsPelH+RFHiCMnE199ZN6k
 n9Qg==
X-Gm-Message-State: AOAM531M6m8oDwVdFa3dXbMN0XzT3N1OgXGCrwNKLGcs25TN/40j1E2I
 rJqN2uboLxNCdmVvmASslLxizXbs1dFVV4WcCgY=
X-Google-Smtp-Source: ABdhPJy0WX4lLPLxND4/HFVgGNXBRjQ/mNfR3/MJa/8m1ZFFUa3yeWLUsZ7eZkSrg37tWk3VIErSVNQvG4LUauD3Wv4=
X-Received: by 2002:a05:6830:1f12:: with SMTP id
 u18mr14241509otg.132.1618963059489; 
 Tue, 20 Apr 2021 16:57:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210416143725.2769053-1-lee.jones@linaro.org>
 <20210416143725.2769053-30-lee.jones@linaro.org>
 <dfb153eb-53cc-ad27-2114-c0db07610a60@amd.com>
In-Reply-To: <dfb153eb-53cc-ad27-2114-c0db07610a60@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 20 Apr 2021 19:57:28 -0400
Message-ID: <CADnq5_PUK_cGJ+x5rx7bTpWq1iSqYKp5QqiTXRgwoucw1WPQng@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jerome Glisse <glisse@freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Lee Jones <lee.jones@linaro.org>, linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 29/40] drm/amd/amdgpu/amdgpu_fence:
 Provide description for 'sched_score'
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIEZyaSwgQXByIDE2LCAyMDIxIGF0IDExOjUyIEFN
IENocmlzdGlhbiBLw7ZuaWcKPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6Cj4KPiBB
bSAxNi4wNC4yMSB1bSAxNjozNyBzY2hyaWViIExlZSBKb25lczoKPiA+IEZpeGVzIHRoZSBmb2xs
b3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3YXJuaW5nKHMpOgo+ID4KPiA+ICAgZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmM6NDQ0OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJh
bWV0ZXIgb3IgbWVtYmVyICdzY2hlZF9zY29yZScgbm90IGRlc2NyaWJlZCBpbiAnYW1kZ3B1X2Zl
bmNlX2RyaXZlcl9pbml0X3JpbmcnCj4gPgo+ID4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVy
LmRldWNoZXJAYW1kLmNvbT4KPiA+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4KPiA+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4g
PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+ID4gQ2M6IFN1bWl0IFNlbXdh
bCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gPiBDYzogSmVyb21lIEdsaXNzZSA8Z2xpc3Nl
QGZyZWVkZXNrdG9wLm9yZz4KPiA+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBsaW51eC1tZWRp
YUB2Z2VyLmtlcm5lbC5vcmcKPiA+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
PiA+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4KPiBS
ZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+
Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMg
fCAxICsKPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPgo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMKPiA+IGluZGV4IDQ3ZWE0Njg1OTYx
ODQuLjMwNzcyNjA4ZWFjNmMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfZmVuY2UuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2ZlbmNlLmMKPiA+IEBAIC00MzQsNiArNDM0LDcgQEAgaW50IGFtZGdwdV9mZW5jZV9k
cml2ZXJfc3RhcnRfcmluZyhzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsCj4gPiAgICAqCj4gPiAg
ICAqIEByaW5nOiByaW5nIHRvIGluaXQgdGhlIGZlbmNlIGRyaXZlciBvbgo+ID4gICAgKiBAbnVt
X2h3X3N1Ym1pc3Npb246IG51bWJlciBvZiBlbnRyaWVzIG9uIHRoZSBoYXJkd2FyZSBxdWV1ZQo+
ID4gKyAqIEBzY2hlZF9zY29yZTogb3B0aW9uYWwgc2NvcmUgYXRvbWljIHNoYXJlZCB3aXRoIG90
aGVyIHNjaGVkdWxlcnMKPiA+ICAgICoKPiA+ICAgICogSW5pdCB0aGUgZmVuY2UgZHJpdmVyIGZv
ciB0aGUgcmVxdWVzdGVkIHJpbmcgKGFsbCBhc2ljcykuCj4gPiAgICAqIEhlbHBlciBmdW5jdGlv
biBmb3IgYW1kZ3B1X2ZlbmNlX2RyaXZlcl9pbml0KCkuCj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGFtZC1nZnggbWFpbGluZyBsaXN0Cj4gYW1k
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2FtZC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
