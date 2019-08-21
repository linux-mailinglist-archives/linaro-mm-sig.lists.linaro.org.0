Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADB998582
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 22:23:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4C51B61861
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 20:23:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3FDAD6186A; Wed, 21 Aug 2019 20:23:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C50BD6185A;
	Wed, 21 Aug 2019 20:23:05 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D613F6184D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 20:23:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B41886185A; Wed, 21 Aug 2019 20:23:01 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 by lists.linaro.org (Postfix) with ESMTPS id C55156184D
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 20:22:59 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id k18so3329819otr.3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 13:22:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MKzvDm+ztYbW7s8xYbQH0GgXMCIamw1+1ytg0mPF2A8=;
 b=lY0ZXWwIA3WOzGnGP6isHXnWlAjxAbi2khme0U18qdIWzFN+vjws06QD+bYQca9QwV
 8OQkHesCNjDXCH0pk5vOIE2UpFT2FPRIk6uYcv8oznKM6pZYo2VMhtXIJmACOLtcETMf
 gktg89r9JiIT9bh+S/Fz/tuJQpyCvMVhXWSvczeGvab5eopU8hTKDMBDqTohUTriWm36
 IV4IGPuU0LMkrhpRZgJDnIgSMh1bmYprDeiWfL0Sh03449W+Xgsnug10YvuknMmPChQ/
 scK+JgXZyNATHsWB5zov9+YGyfyr/JgRgDXQCwaX9aya3xGGWRvFLDQmhHf0HPsfsXGE
 usow==
X-Gm-Message-State: APjAAAUoSj29qFWjMRNnOpuYBmKo6NSh1zrv6VY+ecU69ATJ77nEpdlV
 o3sDuzt/o/bHW7DJfRjI2tJ6eKmMSQleTb0CYjz4PQ==
X-Google-Smtp-Source: APXvYqxzQXGnnKkIYCYTX+26SGzVn5ZVSNVD//25VTXs31hGvwkhLv0KLTL93xyFsm0usIgLXw2XWLJOtx8wuvtcIys=
X-Received: by 2002:a9d:6955:: with SMTP id p21mr29956498oto.204.1566418979173; 
 Wed, 21 Aug 2019 13:22:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190821123147.110736-1-christian.koenig@amd.com>
 <156641829139.20466.3485292236947741339@skylake-alporthouse-com>
In-Reply-To: <156641829139.20466.3485292236947741339@skylake-alporthouse-com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 21 Aug 2019 22:22:47 +0200
Message-ID: <CAKMK7uFAreLt64Y9btk4VNxo6a2YMgXrg136z0uuyy5B3SMS+A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [RFC] replacing dma_resv API
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

T24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgMTA6MTEgUE0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5
LTA4LTIxIDEzOjMxOjM3KQo+ID4gSGkgZXZlcnlvbmUsCj4gPgo+ID4gSW4gcHJldmlvdXMgZGlz
Y3Vzc2lvbiBpdCBzdXJmYWNlZCB0aGF0IGRpZmZlcmVudCBkcml2ZXJzIHVzZSB0aGUgc2hhcmVk
IGFuZCBleHBsaWNpdCBmZW5jZXMgaW4gdGhlIGRtYV9yZXN2IG9iamVjdCB3aXRoIGRpZmZlcmVu
dCBtZWFuaW5ncy4KPiA+Cj4gPiBUaGlzIGlzIHByb2JsZW1hdGljIHdoZW4gd2Ugc2hhcmUgYnVm
ZmVycyBiZXR3ZWVuIHRob3NlIGRyaXZlcnMgYW5kIHJlcXVpcmVtZW50cyBmb3IgaW1wbGljaXQg
YW5kIGV4cGxpY2l0IHN5bmNocm9uaXphdGlvbiBsZWFkZWQgdG8gcXVpdGUgYSBudW1iZXIgb2Yg
d29ya2Fyb3VuZHMgcmVsYXRlZCB0byB0aGlzLgo+ID4KPiA+IFNvIEkgc3RhcnRlZCBhbiBlZmZv
cnQgdG8gZ2V0IGFsbCBkcml2ZXJzIGJhY2sgdG8gYSBjb21tb24gdW5kZXJzdGFuZGluZyBvZiB3
aGF0IHRoZSBmZW5jZXMgaW4gdGhlIGRtYV9yZXN2IG9iamVjdCBtZWFuIGFuZCBiZSBhYmxlIHRv
IHVzZSB0aGUgb2JqZWN0IGZvciBkaWZmZXJlbnQga2luZCBvZiB3b3JrbG9hZHMgaW5kZXBlbmRl
bnQgb2YgdGhlIGNsYXNzaWMgRFJNIGNvbW1hbmQgc3VibWlzc2lvbiBpbnRlcmZhY2UuCj4gPgo+
ID4gVGhlIHJlc3VsdCBpcyB0aGlzIHBhdGNoIHNldCB3aGljaCBtb2RpZmllcyB0aGUgZG1hX3Jl
c3YgQVBJIHRvIGdldCBhd2F5IGZyb20gYSBzaW5nbGUgZXhwbGljaXQgZmVuY2UgYW5kIG11bHRp
cGxlIHNoYXJlZCBmZW5jZXMsIHRvd2FyZHMgYSBub3RhdGlvbiB3aGVyZSB3ZSBoYXZlIGV4cGxp
Y2l0IGNhdGVnb3JpZXMgZm9yIHdyaXRlcnMsIHJlYWRlcnMgYW5kIG90aGVycy4KPgo+IEZ3aXcs
IEkgd291bGQgbGlrZSB0aGUgZGlzdGluY3Rpb24gaGVyZSBiZXR3ZWVuIG9wdGlvbmFsIGZlbmNl
cwo+ICh3cml0ZXJzLCByZWFkZXJzKSBhbmQgbWFuZGF0b3J5IGZlbmNlcyAob3RoZXJzKS4gVGhl
IG9wdGlvbmFsIGZlbmNlcwo+IGFyZSB3aGVyZSB3ZSBwdXQgdGhlIGltcGxpY2l0IGZlbmNlIHRy
YWNraW5nIHRoYXQgY2xldmVyIHVzZXJzcGFjZSB3b3VsZAo+IHJhdGhlciBhdm9pZC4gVGhlIG1h
bmRhdG9yeSBmZW5jZXMgKEkgd291bGQgY2FsbCBpbnRlcm5hbCkgaXMgd2hlcmUgd2UKPiBwdXQg
dGhlIGZlbmNlcyBmb3IgdHJhY2tpbmcgbWlncmF0aW9uIHRoYXQgdXNlcnNwYWNlIGNhbiBub3Qg
b3B0IG91dCBvZi4KCkkgdGhpbmsgdGhpcyB3b3VsZCBtYWtlIHNlbnNlLCBhbmQgaXMga2luZGEg
d2hhdCBJIGV4cGVjdGVkIGhlcmUuIElmCihhbmQgSSB0aGluayB0aGF0J3MgYSBodWdlIGlmKSB3
ZSBjYW4gYWdyZWUgb24gd2hhdCB0aG9zZSBpbnRlcm5hbApmZW5jZXMgYXJlLiBUaGVyZSdzIGEg
aHVnZSBkaWZmZXJlbmNlIGJldHdlZW4gaW50ZXJuYWwgZmVuY2VzIGZvcgpidWZmZXIgbW92ZXMg
KGJldHRlciBub3QgaWdub3JlIHRob3NlKSBhbmQgaW50ZXJuYWwgZmVuY2VzIGxpa2UKYW1ka2Zk
J3MgZXZpY3Rpb24gZmVuY2UgKGJldHRlciBpZ25vcmUgdGhvc2UpLiBTbyB3aGF0ZXZlciB3ZSBk
byBhZGQsCml0IGJldHRlciBjb21lIHdpdGggcmVhbGx5IGNsZWFyIGRvY3MgYW5kIHByZXR0eSBk
aWFncmFtcyBhYm91dCB3aGF0Cml0J3Mgc3VwcG9zZWQgdG8gZG8sIGFuZCBob3cgaXQncyBzdXBw
b3NlZCB0byBiZSB1c2VkLiBPciB3ZSdyZSBqdXN0CmJhY2sgdG8gdGhlIGN1cnJlbnQgbWVzcyB3
ZSdyZSBpbiwgdGltZXMgdHdvLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0t
c2lnCg==
