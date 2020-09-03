Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EF225C0DB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Sep 2020 14:22:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 46734619AC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Sep 2020 12:22:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3524A6660D; Thu,  3 Sep 2020 12:22:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34A1A62BBE;
	Thu,  3 Sep 2020 12:22:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CF3B461957
 for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Sep 2020 12:22:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AE48562BBE; Thu,  3 Sep 2020 12:22:13 +0000 (UTC)
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by lists.linaro.org (Postfix) with ESMTPS id 9CDB561957
 for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Sep 2020 12:22:12 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id k25so3386313ljg.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 03 Sep 2020 05:22:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AmASOpjxirKUPe5KF2kTy+958y5fGEm2GLzYZrAWmY0=;
 b=FNoD0S0MyOcsLK8xxIHMJ1McCjBv3SKOvgPOekal6immnDmwuxl+XP6I4o9Pb7XL8p
 k3h4Sww95FZELFCYBS4xYyV6FsB7bf66W1l/ZLQHNUIBcCWmchFNueczTwTaYfxRO0hZ
 wEDSGlnDaxOsCnoGbT6WaDIdDI7xnKPBEVUYkQt83tzeRoB5K83F/9lPIamK8FV/5e1a
 KUhiBxdzosvm4SI28VG7VsdcEfhOuf85faDJX/odwXCUeOfgCJjXk8rjHbMoDls9JRlK
 j+3o3xgdgN9uwxa2Sdpi7xxEBYC8PfpKk80gAYpIvdHEuXNMd8Z7P8Ji5rW2N/liWyMO
 dHYg==
X-Gm-Message-State: AOAM532lZ80JTICH5nLNtMQf2rp75la4hcpRoqguwqtkYUgvntsZGJ5h
 i7nBm5SYUeS2ZCGINJaDn8IKYV43DQsrMSoawgtaGHTe
X-Google-Smtp-Source: ABdhPJwQ0KpxtLPZAseSnphNEoFuICKHObdYRxY2PW9uBsaYw3EIqCfxJnx9Lxv1GfE40giqNWLH6sOOChl2QA2RQ2I=
X-Received: by 2002:a2e:b892:: with SMTP id r18mr1073176ljp.249.1599135731427; 
 Thu, 03 Sep 2020 05:22:11 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1598331148.git.joe@perches.com>
 <990bf6f33ccaf73ad56eb4bea8bd2c0db5e90a31.1598331148.git.joe@perches.com>
 <d5ea3bc7-bff2-c702-51ed-cb85767824a7@amd.com>
In-Reply-To: <d5ea3bc7-bff2-c702-51ed-cb85767824a7@amd.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 3 Sep 2020 17:51:59 +0530
Message-ID: <CAO_48GGeXrDe9F1S64pf4qeF-2vMMiwOTZXOXDctAdPO5Pn04w@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Jiri Kosina <trivial@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>, Joe Perches <joe@perches.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 08/29] dma-buf: Avoid comma separated
	statements
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

SGVsbG8gSm9lLAoKT24gV2VkLCAyNiBBdWcgMjAyMCBhdCAyMDozOCwgQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFtIDI1LjA4LjIwIHVtIDA2
OjU2IHNjaHJpZWIgSm9lIFBlcmNoZXM6Cj4gPiBVc2Ugc2VtaWNvbG9ucyBhbmQgYnJhY2VzLgo+
ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEpvZSBQZXJjaGVzIDxqb2VAcGVyY2hlcy5jb20+Cj4KPiBB
Y2tlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpGV0lX
LApBY2tlZC1ieTogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KCj4KPiA+
IC0tLQo+ID4gICBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgfCA3ICsrKysrLS0KPiA+
ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jIGIvZHJpdmVycy9k
bWEtYnVmL3N0LWRtYS1mZW5jZS5jCj4gPiBpbmRleCBlNTkzMDY0MzQxYzguLmM4YTEyZDdhZDcx
YSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYwo+ID4gKysr
IGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jCj4gPiBAQCAtNDcxLDggKzQ3MSwxMSBA
QCBzdGF0aWMgaW50IHRocmVhZF9zaWduYWxfY2FsbGJhY2sodm9pZCAqYXJnKQo+ID4gICAgICAg
ICAgICAgICAgICAgICAgIGRtYV9mZW5jZV9zaWduYWwoZjEpOwo+ID4KPiA+ICAgICAgICAgICAg
ICAgc21wX3N0b3JlX21iKGNiLnNlZW4sIGZhbHNlKTsKPiA+IC0gICAgICAgICAgICAgaWYgKCFm
MiB8fCBkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKGYyLCAmY2IuY2IsIHNpbXBsZV9jYWxsYmFjaykp
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgbWlzcysrLCBjYi5zZWVuID0gdHJ1ZTsKPiA+ICsg
ICAgICAgICAgICAgaWYgKCFmMiB8fAo+ID4gKyAgICAgICAgICAgICAgICAgZG1hX2ZlbmNlX2Fk
ZF9jYWxsYmFjayhmMiwgJmNiLmNiLCBzaW1wbGVfY2FsbGJhY2spKSB7Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgbWlzcysrOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNiLnNlZW4gPSB0
cnVlOwo+ID4gKyAgICAgICAgICAgICB9Cj4gPgo+ID4gICAgICAgICAgICAgICBpZiAoIXQtPmJl
Zm9yZSkKPiA+ICAgICAgICAgICAgICAgICAgICAgICBkbWFfZmVuY2Vfc2lnbmFsKGYxKTsKPgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
