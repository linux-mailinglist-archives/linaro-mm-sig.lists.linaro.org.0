Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 211B82875D1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Oct 2020 16:15:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 421C06602A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Oct 2020 14:15:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 316F86606C; Thu,  8 Oct 2020 14:15:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7551C617D8;
	Thu,  8 Oct 2020 14:14:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 045B561081
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Oct 2020 14:14:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E22DD617D8; Thu,  8 Oct 2020 14:14:24 +0000 (UTC)
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by lists.linaro.org (Postfix) with ESMTPS id 7D5CA61081
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Oct 2020 14:14:23 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id l15so6871521wmh.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 08 Oct 2020 07:14:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=SKpxYdUurmpOS5BkncePHyl2hsG1ycnDl5RK5GsXoXc=;
 b=iunhqiWBm6H1veqFkoJ+xJlR8NiWpCbhM1Cb1fMDMxNQYbqFHtQxGR6mSnABvjUI/b
 RvIiJVuQytqt5PpB7ehjBx0B+cTmwenYsUauicMWdboC2TyEyCkr0mknrFPGHXgZR6I0
 LvINRnyM0I3OHsVNpZRllKblb5/2ibIIIlAmnBqz1h8OsGq+2tVUz5xEBUZx8B1BRVe4
 LaITm5XkgnXHV+aPy7vsjipabONgiIZk/MK2HYfPwyo+VmEIRbj0dp26U7u+cAJIiiaU
 3X8Gk0nJOeAUwJ1bKZAZIuMgU/NZYqt6k6+he5nEO4EXgBMIPbHT8KomhxJVm4RjeEon
 t8Kw==
X-Gm-Message-State: AOAM531ynAM+cfh8/Pk1GMSfTDxAaym17KuusBqquuzA12aRjNHSWIX1
 1+cO9LWUfeZOomVuhm5fVLJjTw==
X-Google-Smtp-Source: ABdhPJyZe4Z21U8phi7d2Xe/UNgxW53htdWoW10px59ECyLFlG/URS67GHq0loHUzd4W89hC8MwYlg==
X-Received: by 2002:a1c:bd43:: with SMTP id n64mr8613712wmf.113.1602166462550; 
 Thu, 08 Oct 2020 07:14:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x81sm7251502wmb.11.2020.10.08.07.14.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 07:14:21 -0700 (PDT)
Date: Thu, 8 Oct 2020 16:14:19 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, chris@chris-wilson.co.uk,
 airlied@redhat.com, akpm@linux-foundation.org, sumit.semwal@linaro.org
Message-ID: <20201008141419.GH438822@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <ckoenig.leichtzumerken@gmail.com>, 
 linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, chris@chris-wilson.co.uk,
 airlied@redhat.com, akpm@linux-foundation.org,
 sumit.semwal@linaro.org
References: <20201008112342.9394-1-christian.koenig@amd.com>
 <20201008112342.9394-2-christian.koenig@amd.com>
 <20201008140914.GF438822@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008140914.GF438822@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 2/4] drm/prime: document that use the
 page array is deprecated
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

T24gVGh1LCBPY3QgMDgsIDIwMjAgYXQgMDQ6MDk6MTRQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBUaHUsIE9jdCAwOCwgMjAyMCBhdCAwMToyMzo0MFBNICswMjAwLCBDaHJpc3Rp
YW4gS8O2bmlnIHdyb3RlOgo+ID4gV2UgaGF2ZSByZW9jY3VycmluZyByZXF1ZXN0cyBvbiB0aGlz
IHNvIGJldHRlciBkb2N1bWVudCB0aGF0Cj4gPiB0aGlzIGFwcHJvYWNoIGRvZXNuJ3Qgd29yayBh
bmQgZG1hX2J1Zl9tbWFwKCkgbmVlZHMgdG8gYmUgdXNlZCBpbnN0ZWFkLgo+ID4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4g
PiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgfCA3ICsrKysrKy0KPiA+ICAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX3ByaW1lLmMKPiA+IGluZGV4IDQ5MTBjNDQ2ZGI4My4uMTZmYTJiZmMyNzFlIDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX3ByaW1lLmMKPiA+IEBAIC05NTYsNyArOTU2LDcgQEAgRVhQT1JUX1NZTUJPTChk
cm1fZ2VtX3ByaW1lX2ltcG9ydCk7Cj4gPiAgLyoqCj4gPiAgICogZHJtX3ByaW1lX3NnX3RvX3Bh
Z2VfYWRkcl9hcnJheXMgLSBjb252ZXJ0IGFuIHNnIHRhYmxlIGludG8gYSBwYWdlIGFycmF5Cj4g
PiAgICogQHNndDogc2NhdHRlci1nYXRoZXIgdGFibGUgdG8gY29udmVydAo+ID4gLSAqIEBwYWdl
czogb3B0aW9uYWwgYXJyYXkgb2YgcGFnZSBwb2ludGVycyB0byBzdG9yZSB0aGUgcGFnZSBhcnJh
eSBpbgo+ID4gKyAqIEBwYWdlczogZGVwcmVjYXRlZCBhcnJheSBvZiBwYWdlIHBvaW50ZXJzIHRv
IHN0b3JlIHRoZSBwYWdlIGFycmF5IGluCj4gPiAgICogQGFkZHJzOiBvcHRpb25hbCBhcnJheSB0
byBzdG9yZSB0aGUgZG1hIGJ1cyBhZGRyZXNzIG9mIGVhY2ggcGFnZQo+ID4gICAqIEBtYXhfZW50
cmllczogc2l6ZSBvZiBib3RoIHRoZSBwYXNzZWQtaW4gYXJyYXlzCj4gPiAgICoKPiA+IEBAIC05
NjUsNiArOTY1LDExIEBAIEVYUE9SVF9TWU1CT0woZHJtX2dlbV9wcmltZV9pbXBvcnQpOwo+ID4g
ICAqCj4gPiAgICogRHJpdmVycyBjYW4gdXNlIHRoaXMgaW4gdGhlaXIgJmRybV9kcml2ZXIuZ2Vt
X3ByaW1lX2ltcG9ydF9zZ190YWJsZQo+ID4gICAqIGltcGxlbWVudGF0aW9uLgo+ID4gKyAqCj4g
PiArICogU3BlY2lmeWluZyB0aGUgcGFnZXMgYXJyYXkgaXMgZGVwcmVjYXRlZCBhbmQgc3Ryb25n
bHkgZGlzY291cmFnZWQgZm9yIG5ldwo+ID4gKyAqIGRyaXZlcnMuIFRoZSBwYWdlcyBhcnJheSBp
cyBvbmx5IHVzZWZ1bCBmb3IgcGFnZSBmYXVsdHMgYW5kIHRob3NlIGNhbgo+ID4gKyAqIGNvcnJ1
cHQgZmllbGRzIGluIHRoZSBzdHJ1Y3QgcGFnZSBpZiB0aGV5IGFyZSBub3QgaGFuZGxlZCBieSB0
aGUgZXhwb3J0aW5nCj4gPiArICogZHJpdmVyLgo+ID4gICAqLwo+IAo+IEknZCBtYWtlIHRoaXMg
YSBfbG90XyBzdHJvbmdlcjogQXNpZGUgZnJvbSBhbWRncHUgYW5kIHJhZGVvbiBhbGwgZHJpdmVy
cwo+IHVzaW5nIHRoaXMgb25seSBuZWVkIGl0IGZvciB0aGUgcGFnZXMgYXJyYXkuIEltbyBqdXN0
IG9wZW4tY29kZSB0aGUgc2cKPiB0YWJsZSB3YWxraW5nIGxvb3AgaW4gYW1kZ3B1L3JhZGVvbiAo
aXQncyByZWFsbHkgbm90IG11Y2ggY29kZSksIGFuZCB0aGVuCj4gZHJvcCB0aGUgZG1hX2FkZHJf
dCBwYXJhbWV0ZXIgZnJvbSB0aGlzIGZ1bmN0aW9uIGhlcmUgKGl0J3Mgc2V0IHRvIE5VTEwgYnkK
PiBldmVyeW9uZSBlbHNlKS4KPiAKPiBBbmQgdGhlbiBkZXByZWNhdGUgdGhpcyBlbnRpcmUgZnVu
Y3Rpb24gaGVyZSB3aXRoIGEgYmlnIHdhcm5pbmcgdGhhdCBhKQo+IGRtYV9idWZfbWFwX2F0dGFj
aG1lbnQgaXMgYWxsb3dlZCB0byBsZWF2ZSB0aGUgc3RydWN0IHBhZ2UgcG9pbnRlcnMgTlVMTAo+
IGFuZCBiKSB0aGlzIGJyZWFrcyBtbWFwLCB1c2VycyBtdXN0IGNhbGwgZG1hX2J1Zl9tbWFwIGlu
c3RlYWQuCj4gCj4gQWxzbyBtYXliZSBtYWtlIGl0IGFuIHVwcGVyY2FzZSBERVBSRUNBVEVEIG9y
IHNvbWV0aGluZyBsaWtlIHRoYXQgOi0pCgpPSyBJIGp1c3QgcmVhbGl6ZWQgSSBtaXNzZWQgbm91
dmVhdS4gVGhhdCB3b3VsZCBiZSAzIHBsYWNlcyB3aGVyZSB3ZSBuZWVkCnRvIHN0dWZmIHRoZSBk
bWFfYWRkcl90IGxpc3QgaW50byBzb21ldGhpbmcgdHRtIGNhbiB0YWtlLiBTdGlsbCBmZWVscwpi
ZXR0ZXIgdGhhbiB0aGlzIGhhbGYtZGVwcmVjYXRlZCBmdW5jdGlvbiBrbHVkZ2UgLi4uCi1EYW5p
ZWwKCj4gLURhbmllbAo+IAo+ID4gIGludCBkcm1fcHJpbWVfc2dfdG9fcGFnZV9hZGRyX2FycmF5
cyhzdHJ1Y3Qgc2dfdGFibGUgKnNndCwgc3RydWN0IHBhZ2UgKipwYWdlcywKPiA+ICAJCQkJICAg
ICBkbWFfYWRkcl90ICphZGRycywgaW50IG1heF9lbnRyaWVzKQo+ID4gLS0gCj4gPiAyLjE3LjEK
PiA+IAo+IAo+IC0tIAo+IERhbmllbCBWZXR0ZXIKPiBTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwg
Q29ycG9yYXRpb24KPiBodHRwOi8vYmxvZy5mZndsbC5jaAoKLS0gCkRhbmllbCBWZXR0ZXIKU29m
dHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
