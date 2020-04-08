Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1AD1A21F9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 14:25:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 522D466626
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  8 Apr 2020 12:25:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3C61866627; Wed,  8 Apr 2020 12:25:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,TVD_SUBJ_WIPE_DEBT
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A69D66631;
	Wed,  8 Apr 2020 12:25:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7A4AB66627
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:25:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 674B266626; Wed,  8 Apr 2020 12:25:10 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 164CA66626
 for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Apr 2020 12:25:09 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id f13so985270wrm.13
 for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Apr 2020 05:25:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=S+T3eMWPDVVKjkhAMCN4OLY+AXtsqs3KpyYmqj2eyPw=;
 b=siyVxPNYgzULmmqCf3Kisso09/WOiuTsEzFfxH0LJ8aasal2aSTQhova2e0gwYddrq
 M68e6hOG6iDk3wBEmM3a+eiQUVtkRBnzRjT3ZrA4X0g7/QYts+Mfqn4Bvy27Uu/1fc2B
 +5zCZqDC4hKob5Z+faVEDTJzmN+EMKIK3ZuKTLAnQsfx6VeUw+1Si+onSpjn1n2ppmtD
 g6XWMOmMDyXTcDTfzKCTcOWt7w5L7fN3jX34vOBSkbgm90xxJ1A6c3oJaMzmfpZ0YzRp
 L7wpVB4IkEfiaxHRgmngV+O5AwVbrIg7I8cuc80Xi9jedIYbWpM2RWXKJmdXHK9JCXZR
 kiqQ==
X-Gm-Message-State: AGi0PuYl8QhLdYNTp5wPUsCWCEM15NnGisLd7fuTe7ZD8PI3qxcjljSY
 debW38hVTbtKk1J3AuR7bp6f4w==
X-Google-Smtp-Source: APiQypJvxn06n6RmmZE3e7ZfAJg02E1DO8+MxqNnF9onm5w/+2r1QjPARt8wv7KYk/4tgJKIUOQMMQ==
X-Received: by 2002:a5d:4111:: with SMTP id l17mr8794439wrp.271.1586348708002; 
 Wed, 08 Apr 2020 05:25:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v7sm35651554wrs.96.2020.04.08.05.25.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 05:25:07 -0700 (PDT)
Date: Wed, 8 Apr 2020 14:25:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christoph Hellwig <hch@lst.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>
Message-ID: <20200408122504.GO3456981@phenom.ffwll.local>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Wei Liu <wei.liu@kernel.org>, x86@kernel.org,
 David Airlie <airlied@linux.ie>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Peter Zijlstra <peterz@infradead.org>,
 linuxppc-dev@lists.ozlabs.org, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-arch@vger.kernel.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-s390@vger.kernel.org,
 bpf@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-20-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115926.1467567-20-hch@lst.de>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, x86@kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [Linaro-mm-sig] [PATCH 19/28] gpu/drm: remove the powerpc hack
 in drm_legacy_sg_alloc
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

T24gV2VkLCBBcHIgMDgsIDIwMjAgYXQgMDE6NTk6MTdQTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gSWYgdGhpcyBjb2RlIHdhcyBicm9rZW4gZm9yIG5vbi1jb2hlcmVudCBjYWNo
ZXMgYSBjcnVkZSBwb3dlcnBjIGhhY2sKPiBpc24ndCBnb2luZyB0byBoZWxwIGFueW9uZSBlbHNl
LiAgUmVtb3ZlIHRoZSBoYWNrIGFzIGl0IGlzIHRoZSBsYXN0Cj4gdXNlciBvZiBfX3ZtYWxsb2Mg
cGFzc2luZyBhIHBhZ2UgcHJvdGVjdGlvbiBmbGFnIG90aGVyIHRoYW4gUEFHRV9LRVJORUwuCgpX
ZWxsIEJlbiBhZGRlZCB0aGlzIHRvIG1ha2Ugc3R1ZmYgd29yayBvbiBwcGMsIG9mYyB0aGUgaG9t
ZSBncm93biBkbWEKbGF5ZXIgaW4gZHJtIGZyb20gYmFjayB0aGVuIGlzbid0IGdvaW5nIHRvIHdv
cmsgaW4gb3RoZXIgcGxhY2VzLiBJIGd1ZXNzCnNob3VsZCBoYXZlIGF0IGxlYXN0IGFuIGFjayBm
cm9tIGhpbSwgaW4gY2FzZSBhbnlvbmUgc3RpbGwgY2FyZXMgYWJvdXQKdGhpcyBvbiBwcGMuIEFk
ZGluZyBCZW4gdG8gY2MuCi1EYW5pZWwKCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhl
bGx3aWcgPGhjaEBsc3QuZGU+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fc2NhdHRlci5j
IHwgMTEgKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxMCBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3NjYXR0ZXIuYwo+IGluZGV4IGNhNTIwMDI4YjJjYi4u
ZjRlNjE4NGQxODc3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc2NhdHRlci5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zY2F0dGVyLmMKPiBAQCAtNDMsMTUgKzQzLDYg
QEAKPiAgCj4gICNkZWZpbmUgREVCVUdfU0NBVFRFUiAwCj4gIAo+IC1zdGF0aWMgaW5saW5lIHZv
aWQgKmRybV92bWFsbG9jX2RtYSh1bnNpZ25lZCBsb25nIHNpemUpCj4gLXsKPiAtI2lmIGRlZmlu
ZWQoX19wb3dlcnBjX18pICYmIGRlZmluZWQoQ09ORklHX05PVF9DT0hFUkVOVF9DQUNIRSkKPiAt
CXJldHVybiBfX3ZtYWxsb2Moc2l6ZSwgR0ZQX0tFUk5FTCwgcGdwcm90X25vbmNhY2hlZF93YyhQ
QUdFX0tFUk5FTCkpOwo+IC0jZWxzZQo+IC0JcmV0dXJuIHZtYWxsb2NfMzIoc2l6ZSk7Cj4gLSNl
bmRpZgo+IC19Cj4gLQo+ICBzdGF0aWMgdm9pZCBkcm1fc2dfY2xlYW51cChzdHJ1Y3QgZHJtX3Nn
X21lbSAqIGVudHJ5KQo+ICB7Cj4gIAlzdHJ1Y3QgcGFnZSAqcGFnZTsKPiBAQCAtMTI2LDcgKzEx
Nyw3IEBAIGludCBkcm1fbGVnYWN5X3NnX2FsbG9jKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZv
aWQgKmRhdGEsCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gIAl9Cj4gIAo+IC0JZW50cnktPnZpcnR1
YWwgPSBkcm1fdm1hbGxvY19kbWEocGFnZXMgPDwgUEFHRV9TSElGVCk7Cj4gKwllbnRyeS0+dmly
dHVhbCA9IHZtYWxsb2NfMzIocGFnZXMgPDwgUEFHRV9TSElGVCk7Cj4gIAlpZiAoIWVudHJ5LT52
aXJ0dWFsKSB7Cj4gIAkJa2ZyZWUoZW50cnktPmJ1c2FkZHIpOwo+ICAJCWtmcmVlKGVudHJ5LT5w
YWdlbGlzdCk7Cj4gLS0gCj4gMi4yNS4xCj4gCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBF
bmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
