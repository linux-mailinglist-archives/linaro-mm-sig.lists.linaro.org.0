Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EA328F65D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 15 Oct 2020 18:04:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 968CE664FE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 15 Oct 2020 16:04:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8529966518; Thu, 15 Oct 2020 16:04:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D0E5664E3;
	Thu, 15 Oct 2020 16:03:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A545065FE6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 15 Oct 2020 16:03:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 97E92664E3; Thu, 15 Oct 2020 16:03:53 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 2C72B65FE6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 15 Oct 2020 16:03:52 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 13so3733513wmf.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 15 Oct 2020 09:03:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DbRyVIR2jUJWgBTF659QP8SY1vAxnN7ExneR3zyZD7o=;
 b=mLDJACs6oJLCOhf7szKeDWzoSmxmEehIiu2H/CgQb/uN0Xb+e2qLi5GE6yYUZVinn+
 FUp+ajetHtKt9v9pO1r8v+APSCocjnuaAjGEkjzy2BL2480GnyB9o6Yk2RPwRix8k3hG
 U+DHPfDBBRC2yHB2wSP2XuMIGv+DgczEsc358FHlx24LmfHDfidIKhKRv0tkeU4cWxl0
 +XssIkyGHdTnahdCjz9+UFWh17/6SqFBC1taatwK+Px4dRoaq52c3dP3auYj/RA4lRIG
 NjGikxoX8SSl4RC7B5OSKBA3JtnHQEsGY4ofGM5Sz9Y0a8GAXxEW7m9XUqUl7xSuYlXn
 CIwA==
X-Gm-Message-State: AOAM533J/lJnt5W7JbjEkX4QhbqH/BJ8mIjzc0hkVqsuDNNzVoD8RaNw
 L55b0skHurIL+IfBp8jFPzmhzg==
X-Google-Smtp-Source: ABdhPJw+VHwW09aRmuNanGKHGz+vL0Ww3co+chUob9D38zTudXVAwzdJco8FucmxzOZX1GLH21V0Lg==
X-Received: by 2002:a1c:4856:: with SMTP id v83mr4957083wma.118.1602777831187; 
 Thu, 15 Oct 2020 09:03:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n9sm5512439wrq.72.2020.10.15.09.03.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Oct 2020 09:03:50 -0700 (PDT)
Date: Thu, 15 Oct 2020 18:03:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jianxin Xiong <jianxin.xiong@intel.com>
Message-ID: <20201015160344.GA401619@phenom.ffwll.local>
References: <1602692161-107096-1-git-send-email-jianxin.xiong@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1602692161-107096-1-git-send-email-jianxin.xiong@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Doug Ledford <dledford@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christian Koenig <christian.koenig@amd.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v4 5/5] dma-buf: Clarify that dma-buf sg
 lists are page aligned
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

T24gV2VkLCBPY3QgMTQsIDIwMjAgYXQgMDk6MTY6MDFBTSAtMDcwMCwgSmlhbnhpbiBYaW9uZyB3
cm90ZToKPiBUaGUgZG1hLWJ1ZiBBUEkgaGF2ZSBiZWVuIHVzZWQgdW5kZXIgdGhlIGFzc3VtcHRp
b24gdGhhdCB0aGUgc2cgbGlzdHMKPiByZXR1cm5lZCBmcm9tIGRtYV9idWZfbWFwX2F0dGFjaG1l
bnQoKSBhcmUgZnVsbHkgcGFnZSBhbGlnbmVkLiBMb3RzIG9mCj4gc3R1ZmYgY2FuIGJyZWFrIG90
aGVyd2lzZSBhbGwgb3ZlciB0aGUgcGxhY2UuIENsYXJpZnkgdGhpcyBpbiB0aGUKPiBkb2N1bWVu
dGF0aW9uIGFuZCBhZGQgYSBjaGVjayB3aGVuIERNQSBBUEkgZGVidWcgaXMgZW5hYmxlZC4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBKaWFueGluIFhpb25nIDxqaWFueGluLnhpb25nQGludGVsLmNvbT4K
CmxndG0sIHRoYW5rcyBmb3IgY3JlYXRpbmcgdGhpcyBhbmQgZ2l2aW5nIGl0IGEgc3Bpbi4KCkkn
bGwgcXVldWUgdGhpcyB1cCBpbiBkcm0tbWlzYy1uZXh0IGZvciA1LjExLCBzaG91bGQgc2hvdyB1
cCBpbiBsaW51eC1uZXh0CmFmdGVyIHRoZSBtZXJnZSB3aW5kb3cgaXMgY2xvc2VkLgoKQ2hlZXJz
LCBEYW5pZWwKCj4gLS0tCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAyMSArKysrKysr
KysrKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICB8ICAzICsrLQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMKPiBpbmRleCA4NDQ5NjdmLi43MzA5YzgzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtYnVmLmMKPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gQEAgLTg1
MSw2ICs4NTEsOSBAQCB2b2lkIGRtYV9idWZfdW5waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqYXR0YWNoKQo+ICAgKiBSZXR1cm5zIHNnX3RhYmxlIGNvbnRhaW5pbmcgdGhlIHNjYXR0ZXJs
aXN0IHRvIGJlIHJldHVybmVkOyByZXR1cm5zIEVSUl9QVFIKPiAgICogb24gZXJyb3IuIE1heSBy
ZXR1cm4gLUVJTlRSIGlmIGl0IGlzIGludGVycnVwdGVkIGJ5IGEgc2lnbmFsLgo+ICAgKgo+ICsg
KiBPbiBzdWNjZXNzLCB0aGUgRE1BIGFkZHJlc3NlcyBhbmQgbGVuZ3RocyBpbiB0aGUgcmV0dXJu
ZWQgc2NhdHRlcmxpc3QgYXJlCj4gKyAqIFBBR0VfU0laRSBhbGlnbmVkLgo+ICsgKgo+ICAgKiBB
IG1hcHBpbmcgbXVzdCBiZSB1bm1hcHBlZCBieSB1c2luZyBkbWFfYnVmX3VubWFwX2F0dGFjaG1l
bnQoKS4gTm90ZSB0aGF0Cj4gICAqIHRoZSB1bmRlcmx5aW5nIGJhY2tpbmcgc3RvcmFnZSBpcyBw
aW5uZWQgZm9yIGFzIGxvbmcgYXMgYSBtYXBwaW5nIGV4aXN0cywKPiAgICogdGhlcmVmb3JlIHVz
ZXJzL2ltcG9ydGVycyBzaG91bGQgbm90IGhvbGQgb250byBhIG1hcHBpbmcgZm9yIHVuZHVlIGFt
b3VudHMgb2YKPiBAQCAtOTA0LDYgKzkwNywyNCBAQCBzdHJ1Y3Qgc2dfdGFibGUgKmRtYV9idWZf
bWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAo+ICAJCWF0
dGFjaC0+ZGlyID0gZGlyZWN0aW9uOwo+ICAJfQo+ICAKPiArI2lmZGVmIENPTkZJR19ETUFfQVBJ
X0RFQlVHCj4gKwl7Cj4gKwkJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsKPiArCQl1NjQgYWRkcjsK
PiArCQlpbnQgbGVuOwo+ICsJCWludCBpOwo+ICsKPiArCQlmb3JfZWFjaF9zZ3RhYmxlX2RtYV9z
ZyhzZ190YWJsZSwgc2csIGkpIHsKPiArCQkJYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNnKTsKPiAr
CQkJbGVuID0gc2dfZG1hX2xlbihzZyk7Cj4gKwkJCWlmICghUEFHRV9BTElHTkVEKGFkZHIpIHx8
ICFQQUdFX0FMSUdORUQobGVuKSkgewo+ICsJCQkJcHJfZGVidWcoIiVzOiBhZGRyICVsbHggb3Ig
bGVuICV4IGlzIG5vdCBwYWdlIGFsaWduZWQhXG4iLAo+ICsJCQkJCSBfX2Z1bmNfXywgYWRkciwg
bGVuKTsKPiArCQkJfQo+ICsJCX0KPiArCX0KPiArI2VuZGlmIC8qIENPTkZJR19ETUFfQVBJX0RF
QlVHICovCj4gKwo+ICAJcmV0dXJuIHNnX3RhYmxlOwo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BM
KGRtYV9idWZfbWFwX2F0dGFjaG1lbnQpOwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCj4gaW5kZXggYTJjYTI5NGUuLjRhNWZh
NzAgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKPiArKysgYi9pbmNsdWRl
L2xpbnV4L2RtYS1idWYuaAo+IEBAIC0xNDUsNyArMTQ1LDggQEAgc3RydWN0IGRtYV9idWZfb3Bz
IHsKPiAgCSAqCj4gIAkgKiBBICZzZ190YWJsZSBzY2F0dGVyIGxpc3Qgb2Ygb3IgdGhlIGJhY2tp
bmcgc3RvcmFnZSBvZiB0aGUgRE1BIGJ1ZmZlciwKPiAgCSAqIGFscmVhZHkgbWFwcGVkIGludG8g
dGhlIGRldmljZSBhZGRyZXNzIHNwYWNlIG9mIHRoZSAmZGV2aWNlIGF0dGFjaGVkCj4gLQkgKiB3
aXRoIHRoZSBwcm92aWRlZCAmZG1hX2J1Zl9hdHRhY2htZW50Lgo+ICsJICogd2l0aCB0aGUgcHJv
dmlkZWQgJmRtYV9idWZfYXR0YWNobWVudC4gVGhlIGFkZHJlc3NlcyBhbmQgbGVuZ3RocyBpbgo+
ICsJICogdGhlIHNjYXR0ZXIgbGlzdCBhcmUgUEFHRV9TSVpFIGFsaWduZWQuCj4gIAkgKgo+ICAJ
ICogT24gZmFpbHVyZSwgcmV0dXJucyBhIG5lZ2F0aXZlIGVycm9yIHZhbHVlIHdyYXBwZWQgaW50
byBhIHBvaW50ZXIuCj4gIAkgKiBNYXkgYWxzbyByZXR1cm4gLUVJTlRSIHdoZW4gYSBzaWduYWwg
d2FzIHJlY2VpdmVkIHdoaWxlIGJlaW5nCj4gLS0gCj4gMS44LjMuMQo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcg
bGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoKLS0gCkRhbmllbCBWZXR0
ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xs
LmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRw
czovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
