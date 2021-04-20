Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B8217366199
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 23:27:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FB8F66838
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 21:27:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 715A966850; Tue, 20 Apr 2021 21:27:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9AF4A6684E;
	Tue, 20 Apr 2021 21:27:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C0AF1667A9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 21:27:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AFD586684E; Tue, 20 Apr 2021 21:27:16 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by lists.linaro.org (Postfix) with ESMTPS id 90AD6667A9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 21:27:15 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id
 35-20020a9d05260000b029029c82502d7bso5719228otw.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 14:27:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=30FxQx6+h/DPZfAuYkCh0ZYoDk/KVeqAfInmZT+LL3E=;
 b=OY3nSIXgzLRAtvA/ng21snTXm3upK0Kuonn4cGTjLJDWHAslZ38ENROGDZ3O4y47Iu
 5ccEL7wQBeZ+bTwdbjHgxRQFcOrdZfGjDvDOr6jU9p9F2aOe1r87hGhy8uC4SBLC4I82
 uEdbQ/s8zCAiv4MUiJdFDucIOToyjBfPBX8qJbmpDR6XAQvFUZq3MPbRtchi2iF5Izhj
 ud8gicD+lKvG28HQBywapeYguy7bx6MHsgileWwDpAYeamVGbcYw966g4dTeZJfMsMoK
 UyM+ttTD878feI6EoM2tepYf73F14VyulEdZJyTSa6n2WoSqXL2xjgPb4nIxdP5OJ3j3
 9cXQ==
X-Gm-Message-State: AOAM5328eIzAcfhWENzpG61jnV/3p3v1Z/CUC6DpBZvQ9uS645Raz+yS
 UPOniLzQvBYgiNWbH1iRotsqdjG3Yl2IGw8gknc=
X-Google-Smtp-Source: ABdhPJzyHli5TQG29616h8SoL5wezkFSsDA4ukcNLXQQEbIAs43KGcKjYGIETR2Kb01xcJ3OxH/pNSr2v18uh+7dFEc=
X-Received: by 2002:a9d:75c4:: with SMTP id c4mr18676343otl.311.1618954035087; 
 Tue, 20 Apr 2021 14:27:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210416143725.2769053-1-lee.jones@linaro.org>
 <20210416143725.2769053-24-lee.jones@linaro.org>
 <5035dd00-45a9-80c0-7bcc-8035167a8e0d@amd.com>
In-Reply-To: <5035dd00-45a9-80c0-7bcc-8035167a8e0d@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 20 Apr 2021 17:27:04 -0400
Message-ID: <CADnq5_Os8LjPoj7_fim2x2RqMhySSUT0BRFdMfd8AFdAjGkhTA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Huang Rui <ray.huang@amd.com>, Lee Jones <lee.jones@linaro.org>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 23/40] drm/ttm/ttm_bo: Fix incorrectly
	documented function 'ttm_bo_cleanup_refs'
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

T24gRnJpLCBBcHIgMTYsIDIwMjEgYXQgMTE6MzIgQU0gQ2hyaXN0aWFuIEvDtm5pZwo8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFtIDE2LjA0LjIxIHVtIDE2OjM3IHNjaHJp
ZWIgTGVlIEpvbmVzOgo+ID4gRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdh
cm5pbmcocyk6Cj4gPgo+ID4gICBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jOjI5Mzogd2Fy
bmluZzogZXhwZWN0aW5nIHByb3RvdHlwZSBmb3IgZnVuY3Rpb24gdHRtX2JvX2NsZWFudXBfcmVm
cygpLiBQcm90b3R5cGUgd2FzIGZvciB0dG1fYm9fY2xlYW51cF9yZWZzKCkgaW5zdGVhZAo+ID4K
PiA+IENjOiBDaHJpc3RpYW4gS29lbmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPiBD
YzogSHVhbmcgUnVpIDxyYXkuaHVhbmdAYW1kLmNvbT4KPiA+IENjOiBEYXZpZCBBaXJsaWUgPGFp
cmxpZWRAbGludXguaWU+Cj4gPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+
ID4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gPiBDYzogZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2Vy
bmVsLm9yZwo+ID4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+ID4gU2lnbmVk
LW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPgo+IFJldmlld2VkLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CgpDYW4geW91IHB1
c2ggdGhlIHR0bSBhbmQgc2NoZWQgZml4ZXMgdG8gZHJtLW1pc2M/CgpBbGV4CgoKPgo+ID4gLS0t
Cj4gPiAgIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgfCAyICstCj4gPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym8uYwo+ID4gaW5kZXggY2ZkMGI5MjkyMzk3My4uZGVmZWM5NDg3ZTFkZSAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS90dG0vdHRtX2JvLmMKPiA+IEBAIC0yNzQsNyArMjc0LDcgQEAgc3RhdGljIHZvaWQgdHRtX2Jv
X2ZsdXNoX2FsbF9mZW5jZXMoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibykKPiA+ICAgfQo+
ID4KPiA+ICAgLyoqCj4gPiAtICogZnVuY3Rpb24gdHRtX2JvX2NsZWFudXBfcmVmcwo+ID4gKyAq
IHR0bV9ib19jbGVhbnVwX3JlZnMKPiA+ICAgICogSWYgYm8gaWRsZSwgcmVtb3ZlIGZyb20gbHJ1
IGxpc3RzLCBhbmQgdW5yZWYuCj4gPiAgICAqIElmIG5vdCBpZGxlLCBibG9jayBpZiBwb3NzaWJs
ZS4KPiA+ICAgICoKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
