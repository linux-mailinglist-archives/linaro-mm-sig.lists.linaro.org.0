Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2921EF825
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Jun 2020 14:42:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA0EA6197A
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Jun 2020 12:42:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CBB5561993; Fri,  5 Jun 2020 12:42:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B1A66198E;
	Fri,  5 Jun 2020 12:41:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AA9DF618D7
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jun 2020 12:41:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9AEA06198E; Fri,  5 Jun 2020 12:41:47 +0000 (UTC)
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by lists.linaro.org (Postfix) with ESMTPS id 617A3618D7
 for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jun 2020 12:41:46 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id b8so8111949oic.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Jun 2020 05:41:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b8lHa3VSsS3EH4GstrmtufuSPQnby9wIaLbKSXX2gR4=;
 b=G6ilol8boUuCM367t+n8nP34hrtJUIZsf5FgTB4uuOdeupnEbqJLKvyMq3NwPrhBGh
 fUhgZ8e4iq3ELVb1z36pBJbBxR77O1YC4XkkGZ5w8Il84GmrJwyvjdHi7GV6Vc7aJWG1
 teYvtTMs6404KwvxnzH4e18I2/KzmDioarx+4vtcrPc+PN0EvwVzX45CA0ImCN1ZQYcP
 uZrifV/JDeGRX66/X8QIP3rCjvkfNLO6IdDt9cKVUujmR1DYRzrov+fG/ZY86VnGhiZy
 Fh1iVee0wiGk1iHuUf1d6c9oz5slYiOkcq3ooWGXlHHfUwUlkzCPJa9IKe63vCF71hIf
 rNtA==
X-Gm-Message-State: AOAM530U84NnVyhGFHig8Un/aCkg1SrTDSKHnskZnFcOoGU4lMKPs+Yp
 fQvnI/W1tKenBymhJ39Ug2sVSv098J0GnbCLlWEUsQ==
X-Google-Smtp-Source: ABdhPJxDBFuxj/jT06KYKDwsSDsZtaJk7DJpn+CTYVJxr0/W+a1EfH/HPafid8DVkUdwYip+bwgoQY+h1NITtsGMh7k=
X-Received: by 2002:aca:ed42:: with SMTP id l63mr1645633oih.101.1591360905783; 
 Fri, 05 Jun 2020 05:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-14-daniel.vetter@ffwll.ch>
 <e0bfd872-5d38-6718-a23d-6b14b3c14f25@amd.com>
In-Reply-To: <e0bfd872-5d38-6718-a23d-6b14b3c14f25@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 5 Jun 2020 14:41:34 +0200
Message-ID: <CAKMK7uG6VN93ZS3Rbi6edvDAMefXJ6CotMx5j916VcUy2nuvqQ@mail.gmail.com>
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 13/18] drm/amdgpu/dc: Stop dma_resv_lock
	inversion in commit_tail
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

T24gRnJpLCBKdW4gNSwgMjAyMCBhdCAxMDozMCBBTSBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXll
cgo8cGllcnJlLWVyaWMucGVsbG91eC1wcmF5ZXJAYW1kLmNvbT4gd3JvdGU6Cj4KPiBIaSBEYW5p
ZWwsCj4KPiBPbiAwNC8wNi8yMDIwIDEwOjEyLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IFsuLi5d
Cj4gPiBAQCAtNjkxMCw3ICs2OTEwLDExIEBAIHN0YXRpYyB2b2lkIGFtZGdwdV9kbV9jb21taXRf
cGxhbmVzKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSwKPiA+ICAgICAgICAgICAgICAg
ICogZXhwbGljaXRseSBvbiBmZW5jZXMgaW5zdGVhZAo+ID4gICAgICAgICAgICAgICAgKiBhbmQg
aW4gZ2VuZXJhbCBzaG91bGQgYmUgY2FsbGVkIGZvcgo+ID4gICAgICAgICAgICAgICAgKiBibG9j
a2luZyBjb21taXQgdG8gYXMgcGVyIGZyYW1ld29yayBoZWxwZXJzCj4gPiArICAgICAgICAgICAg
ICAqCj4gPiArICAgICAgICAgICAgICAqIFllcywgdGhpcyBkZWFkbG9ja3MsIHNpbmNlIHlvdSdy
ZSBjYWxsaW5nIGRtYV9yZXN2X2xvY2sgaW4gYQo+ID4gKyAgICAgICAgICAgICAgKiBwYXRoIHRo
YXQgbGVhZHMgdG8gYSBkbWFfZmVuY2Vfc2lnbmFsKCkuIERvbid0IGRvIHRoYXQuCj4gPiAgICAg
ICAgICAgICAgICAqLwo+ID4gKyNpZiAwCj4gPiAgICAgICAgICAgICAgIHIgPSBhbWRncHVfYm9f
cmVzZXJ2ZShhYm8sIHRydWUpOwo+ID4gICAgICAgICAgICAgICBpZiAodW5saWtlbHkociAhPSAw
KSkKPiA+ICAgICAgICAgICAgICAgICAgICAgICBEUk1fRVJST1IoImZhaWxlZCB0byByZXNlcnZl
IGJ1ZmZlciBiZWZvcmUgZmxpcFxuIik7Cj4gPiBAQCAtNjkyMCw2ICs2OTI0LDEyIEBAIHN0YXRp
YyB2b2lkIGFtZGdwdV9kbV9jb21taXRfcGxhbmVzKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpz
dGF0ZSwKPiA+ICAgICAgICAgICAgICAgdG16X3N1cmZhY2UgPSBhbWRncHVfYm9fZW5jcnlwdGVk
KGFibyk7Cj4gPgo+ID4gICAgICAgICAgICAgICBhbWRncHVfYm9fdW5yZXNlcnZlKGFibyk7Cj4g
PiArI2VuZGlmCj4gPiArICAgICAgICAgICAgIC8qCj4gPiArICAgICAgICAgICAgICAqIHRoaXMg
cmFjZXMgYW55d2F5LCBzbyBSRUFEX09OQ0UgaXNuJ3QgYW55IGJldHRlciBvciB3b3JzZQo+ID4g
KyAgICAgICAgICAgICAgKiB0aGFuIHRoZSBzdHVmZiBhYm92ZS4gRXhjZXB0IHRoZSBzdHVmZiBh
Ym92ZSBjYW4gZGVhZGxvY2suCj4gPiArICAgICAgICAgICAgICAqLwo+ID4gKyAgICAgICAgICAg
ICB0aWxpbmdfZmxhZ3MgPSBSRUFEX09OQ0UoYWJvLT50aWxpbmdfZmxhZ3MpOwo+Cj4gV2l0aCB0
aGlzIGNoYW5nZSAidG16X3N1cmZhY2UiIHdvbid0IGJlIGluaXRpYWxpemVkIHByb3Blcmx5Lgo+
IEFkZGluZyB0aGUgZm9sbG93aW5nIGxpbmUgc2hvdWxkIGZpeCBpdDoKPgo+ICAgdG16X3N1cmZh
Y2UgPSBSRUFEX09OQ0UoYWJvLT5mbGFncykgJiBBTURHUFVfR0VNX0NSRUFURV9FTkNSWVBURUQ7
CgpTbyB0byBtYWtlIHRoaXMgY2xlYXIsIEknbSBub3QgcmVhbGx5IHByb3Bvc2luZyB0byBmaXgg
dXAgYWxsIHRoZQpkcml2ZXJzIGluIGRldGFpbC4gVGhlcmUncyBhIGxvdCBtb3JlIGJ1Z3MgaW4g
YWxsIHRoZSBvdGhlciBkcml2ZXJzLApJJ20gcHJldHR5IHN1cmUuIFRoZSBkcml2ZXIgZml4dXBz
IHJlYWxseSBhcmUganVzdCBxdWljayBoYWNrcyB0bwppbGx1c3RyYXRlIHRoZSBwcm9ibGVtLCBh
bmQgYXQgbGVhc3QgaW4gc29tZSBjYXNlcywgbWF5YmUgaWxsdXN0cmF0ZSBhCnBvc3NpYmxlIHNv
bHV0aW9uLgoKRm9yIHRoZSByZWFsIGZpeGVzIEkgdGhpbmsgdGhpcyBuZWVkcyBkcml2ZXIgdGVh
bXMgd29ya2luZyBvbiB0aGlzLAphbmQgbWFrZSBzdXJlIGl0J3MgYWxsIHNvbGlkLiBJIGNhbiBo
ZWxwIGEgYml0IHdpdGggcmV2aWV3IChlc3BlY2lhbGx5CmZvciBwbGFjaW5nIHRoZSBhbm5vdGF0
aW9ucywgZS5nLiB0aGUgb25lIEkgcHV0IGluIGNzX3N1Ym1pdCgpCmFubm90YXRlcyBhIGJpdCB0
b28gbXVjaCksIGJ1dCB0aGF0J3MgaXQuCgpBbHNvIEkgdGhpbmsgdGhlIHBhdGNoIGlzIGZyb20g
YmVmb3JlIHRteiBsYW5kZWQsIGFuZCBJIGp1c3QgYmxpbmRseQpyZWJhc2VkIG92ZXIgaXQgOi0p
Ci1EYW5pZWwKCj4KPgo+IFBpZXJyZS1FcmljCj4KPgo+ID4KPiA+ICAgICAgICAgICAgICAgZmls
bF9kY19wbGFuZV9pbmZvX2FuZF9hZGRyKAo+ID4gICAgICAgICAgICAgICAgICAgICAgIGRtLT5h
ZGV2LCBuZXdfcGxhbmVfc3RhdGUsIHRpbGluZ19mbGFncywKPiA+CgoKCi0tIApEYW5pZWwgVmV0
dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1
NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
