Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD6E2875BC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Oct 2020 16:09:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F71A66029
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Oct 2020 14:09:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 03B03616FC; Thu,  8 Oct 2020 14:09:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 43B67617D8;
	Thu,  8 Oct 2020 14:09:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AA21361081
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Oct 2020 14:09:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 95883617D8; Thu,  8 Oct 2020 14:09:19 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 2040A61081
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Oct 2020 14:09:18 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id j2so6772192wrx.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 08 Oct 2020 07:09:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=elZJD7XRgqQldYOtQwrqdR/qGnh8Wpkk/pfQRzrmtYM=;
 b=KKeQNPD5WvMujzLxHHmtAaRxmHwy+OsO1qrv5liqs4IwGGXZ59toRKm1jLhiYNP77r
 qCuqZIsTTKwFhjlNnYNEZbAsoNmLwmYbFVyDQXMgtiZTJcEsyrpY/Vwbri+OEBIZ5lfr
 m63Bn0qzutFj6PclViuRUTrZGXz+Sx2NUlpWkQqoEY6o28IwuwaMiDbzO4fI5zrk0SzR
 7M7QwZasw0T975DuWabgq9NyR5hTKHHUuZppdGwekgSFasv+5Q7sEfLca7LBYoXpHpt4
 b2uaQwNE+wUxcHYlbgDqvWZJ9e6RoejWkRbPC0NWODHhNsffM7Ub7n7Xvkd6+RHmNdP9
 cm7w==
X-Gm-Message-State: AOAM532b/Re0/JLwBDZ3NZM1dI5JG5jmX0ZbnrzDk+DrR/IEKeuotGVQ
 gPzAhyaBU4xbOZEfiJbk71KcjA==
X-Google-Smtp-Source: ABdhPJxnvjHp0B8DifTQr62vFQPdmb3m15u0GYpDuxfNs6OohHQD8sm0hL1lDYa4JXvQgG/WhvcUCQ==
X-Received: by 2002:a5d:4802:: with SMTP id l2mr9290612wrq.282.1602166157191; 
 Thu, 08 Oct 2020 07:09:17 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b200sm7777009wme.44.2020.10.08.07.09.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 07:09:16 -0700 (PDT)
Date: Thu, 8 Oct 2020 16:09:14 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20201008140914.GF438822@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <ckoenig.leichtzumerken@gmail.com>, 
 linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, chris@chris-wilson.co.uk,
 airlied@redhat.com, akpm@linux-foundation.org,
 sumit.semwal@linaro.org
References: <20201008112342.9394-1-christian.koenig@amd.com>
 <20201008112342.9394-2-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008112342.9394-2-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, daniel@ffwll.ch,
 airlied@redhat.com, akpm@linux-foundation.org, linux-media@vger.kernel.org
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

T24gVGh1LCBPY3QgMDgsIDIwMjAgYXQgMDE6MjM6NDBQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBXZSBoYXZlIHJlb2NjdXJyaW5nIHJlcXVlc3RzIG9uIHRoaXMgc28gYmV0dGVy
IGRvY3VtZW50IHRoYXQKPiB0aGlzIGFwcHJvYWNoIGRvZXNuJ3Qgd29yayBhbmQgZG1hX2J1Zl9t
bWFwKCkgbmVlZHMgdG8gYmUgdXNlZCBpbnN0ZWFkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2RybV9wcmltZS5jIHwgNyArKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2RybV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCj4gaW5kZXggNDkxMGM0
NDZkYjgzLi4xNmZhMmJmYzI3MWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9w
cmltZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jCj4gQEAgLTk1Niw3ICs5
NTYsNyBAQCBFWFBPUlRfU1lNQk9MKGRybV9nZW1fcHJpbWVfaW1wb3J0KTsKPiAgLyoqCj4gICAq
IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzIC0gY29udmVydCBhbiBzZyB0YWJsZSBp
bnRvIGEgcGFnZSBhcnJheQo+ICAgKiBAc2d0OiBzY2F0dGVyLWdhdGhlciB0YWJsZSB0byBjb252
ZXJ0Cj4gLSAqIEBwYWdlczogb3B0aW9uYWwgYXJyYXkgb2YgcGFnZSBwb2ludGVycyB0byBzdG9y
ZSB0aGUgcGFnZSBhcnJheSBpbgo+ICsgKiBAcGFnZXM6IGRlcHJlY2F0ZWQgYXJyYXkgb2YgcGFn
ZSBwb2ludGVycyB0byBzdG9yZSB0aGUgcGFnZSBhcnJheSBpbgo+ICAgKiBAYWRkcnM6IG9wdGlv
bmFsIGFycmF5IHRvIHN0b3JlIHRoZSBkbWEgYnVzIGFkZHJlc3Mgb2YgZWFjaCBwYWdlCj4gICAq
IEBtYXhfZW50cmllczogc2l6ZSBvZiBib3RoIHRoZSBwYXNzZWQtaW4gYXJyYXlzCj4gICAqCj4g
QEAgLTk2NSw2ICs5NjUsMTEgQEAgRVhQT1JUX1NZTUJPTChkcm1fZ2VtX3ByaW1lX2ltcG9ydCk7
Cj4gICAqCj4gICAqIERyaXZlcnMgY2FuIHVzZSB0aGlzIGluIHRoZWlyICZkcm1fZHJpdmVyLmdl
bV9wcmltZV9pbXBvcnRfc2dfdGFibGUKPiAgICogaW1wbGVtZW50YXRpb24uCj4gKyAqCj4gKyAq
IFNwZWNpZnlpbmcgdGhlIHBhZ2VzIGFycmF5IGlzIGRlcHJlY2F0ZWQgYW5kIHN0cm9uZ2x5IGRp
c2NvdXJhZ2VkIGZvciBuZXcKPiArICogZHJpdmVycy4gVGhlIHBhZ2VzIGFycmF5IGlzIG9ubHkg
dXNlZnVsIGZvciBwYWdlIGZhdWx0cyBhbmQgdGhvc2UgY2FuCj4gKyAqIGNvcnJ1cHQgZmllbGRz
IGluIHRoZSBzdHJ1Y3QgcGFnZSBpZiB0aGV5IGFyZSBub3QgaGFuZGxlZCBieSB0aGUgZXhwb3J0
aW5nCj4gKyAqIGRyaXZlci4KPiAgICovCgpJJ2QgbWFrZSB0aGlzIGEgX2xvdF8gc3Ryb25nZXI6
IEFzaWRlIGZyb20gYW1kZ3B1IGFuZCByYWRlb24gYWxsIGRyaXZlcnMKdXNpbmcgdGhpcyBvbmx5
IG5lZWQgaXQgZm9yIHRoZSBwYWdlcyBhcnJheS4gSW1vIGp1c3Qgb3Blbi1jb2RlIHRoZSBzZwp0
YWJsZSB3YWxraW5nIGxvb3AgaW4gYW1kZ3B1L3JhZGVvbiAoaXQncyByZWFsbHkgbm90IG11Y2gg
Y29kZSksIGFuZCB0aGVuCmRyb3AgdGhlIGRtYV9hZGRyX3QgcGFyYW1ldGVyIGZyb20gdGhpcyBm
dW5jdGlvbiBoZXJlIChpdCdzIHNldCB0byBOVUxMIGJ5CmV2ZXJ5b25lIGVsc2UpLgoKQW5kIHRo
ZW4gZGVwcmVjYXRlIHRoaXMgZW50aXJlIGZ1bmN0aW9uIGhlcmUgd2l0aCBhIGJpZyB3YXJuaW5n
IHRoYXQgYSkKZG1hX2J1Zl9tYXBfYXR0YWNobWVudCBpcyBhbGxvd2VkIHRvIGxlYXZlIHRoZSBz
dHJ1Y3QgcGFnZSBwb2ludGVycyBOVUxMCmFuZCBiKSB0aGlzIGJyZWFrcyBtbWFwLCB1c2VycyBt
dXN0IGNhbGwgZG1hX2J1Zl9tbWFwIGluc3RlYWQuCgpBbHNvIG1heWJlIG1ha2UgaXQgYW4gdXBw
ZXJjYXNlIERFUFJFQ0FURUQgb3Igc29tZXRoaW5nIGxpa2UgdGhhdCA6LSkKLURhbmllbAoKPiAg
aW50IGRybV9wcmltZV9zZ190b19wYWdlX2FkZHJfYXJyYXlzKHN0cnVjdCBzZ190YWJsZSAqc2d0
LCBzdHJ1Y3QgcGFnZSAqKnBhZ2VzLAo+ICAJCQkJICAgICBkbWFfYWRkcl90ICphZGRycywgaW50
IG1heF9lbnRyaWVzKQo+IC0tIAo+IDIuMTcuMQo+IAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdh
cmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
