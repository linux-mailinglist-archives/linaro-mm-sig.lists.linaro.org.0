Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8360A24AD72
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Aug 2020 05:47:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E404608F6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Aug 2020 03:47:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8F79660E68; Thu, 20 Aug 2020 03:47:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 743B660D77;
	Thu, 20 Aug 2020 03:46:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CF34060865
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Aug 2020 03:46:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BEC4860D77; Thu, 20 Aug 2020 03:46:56 +0000 (UTC)
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by lists.linaro.org (Postfix) with ESMTPS id B6A6860865
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Aug 2020 03:46:55 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id j15so250117lfg.7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Aug 2020 20:46:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MIchUN4tOHyQmoooHagLeI7lJ2WK7JXkWyfuUiGtb4U=;
 b=UOl7nnuzdZA2UQ8vDdyUX6w6ivHoRG0brJjD3pi2R7Z0aeOEdVBp3+wu9n9Rcwauud
 +ZNczenKCbJlucp+r42mDsmwBIcNuO8eaYwwhMa9X7+z0YVK9VG/swvkdq6G3bO9N2JZ
 errSvuvtvMlhfMFiZZc67JMveAXiKhIRairnx1ccN1hrwcE1yMgNjDbfWvpirDo5QqBf
 r5yYm62ed21oqR6k0YtKgD/NHrHEJrN6QKeNsjm6xJs0dqBrQxsXg1Uvj9SK3cB/JrX+
 fBNueuvMMUbmeMyu7VAoou/hoaAeXR4K683QYrWCY2G5To/Xzc3oHMbq64YpYg0im+iW
 ytKQ==
X-Gm-Message-State: AOAM531x/PuEtiTZDY5McrnGkA2tXXN+BvqBFrBw1T8jYnoJA94gxN7c
 0i+s79qrxykQW7UZDrIjQ+ThOvCbUAJdgsYjgrkmnVuw
X-Google-Smtp-Source: ABdhPJyh8nJHRDA1mfQUy8hmEEmCfXfd0QzynbDBcUhoqQgBHFkqmr86v4MdYm3HWWb1KXvShlGfk8bos1w9MFj/vlw=
X-Received: by 2002:ac2:5383:: with SMTP id g3mr576386lfh.45.1597895214380;
 Wed, 19 Aug 2020 20:46:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200819175134.19261-1-krzk@kernel.org>
In-Reply-To: <20200819175134.19261-1-krzk@kernel.org>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 20 Aug 2020 09:16:40 +0530
Message-ID: <CAO_48GGjS6rAU1ojTDc9RA6e8nS4PRKOJEBzu-Vpc69x+7ykyg@mail.gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Gustavo Padovan <gustavo@padovan.org>, LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [RESEND PATCH 1/2] dma-buf: Fix kerneldoc of
	dma_buf_set_name()
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

SGVsbG8gS3J6eXN0b2YsCgpPbiBXZWQsIDE5IEF1ZyAyMDIwIGF0IDIzOjIxLCBLcnp5c3p0b2Yg
S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gRml4IFc9MSBjb21waWxlIHdh
cm5pbmdzIChpbnZhbGlkIGtlcm5lbGRvYyk6Cj4KPiAgICAgZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYzozMjg6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2RtYWJ1Zicg
bm90IGRlc2NyaWJlZCBpbiAnZG1hX2J1Zl9zZXRfbmFtZScKClRoYW5rcyBmb3IgdGhlIHBhdGNo
OyBJIHdpbGwgYXBwbHkgaXQgdG8gZHJtLW1pc2MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgfCA2ICsrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gaW5kZXggMTY5OWE4ZTMwOWVmLi41ODU2NGQ4
MmEzYTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ICsrKyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiBAQCAtMzE2LDkgKzMxNiw5IEBAIHN0YXRpYyBfX3Bv
bGxfdCBkbWFfYnVmX3BvbGwoc3RydWN0IGZpbGUgKmZpbGUsIHBvbGxfdGFibGUgKnBvbGwpCj4g
ICAqIG5hbWUgb2YgdGhlIGRtYS1idWYgaWYgdGhlIHNhbWUgcGllY2Ugb2YgbWVtb3J5IGlzIHVz
ZWQgZm9yIG11bHRpcGxlCj4gICAqIHB1cnBvc2UgYmV0d2VlbiBkaWZmZXJlbnQgZGV2aWNlcy4K
PiAgICoKPiAtICogQGRtYWJ1ZiBbaW5dICAgICBkbWFidWYgYnVmZmVyIHRoYXQgd2lsbCBiZSBy
ZW5hbWVkLgo+IC0gKiBAYnVmOiAgIFtpbl0gICAgIEEgcGllY2Ugb2YgdXNlcnNwYWNlIG1lbW9y
eSB0aGF0IGNvbnRhaW5zIHRoZSBuYW1lIG9mCj4gLSAqICAgICAgICAgICAgICAgICAgdGhlIGRt
YS1idWYuCj4gKyAqIEBkbWFidWY6IFtpbl0gICAgIGRtYWJ1ZiBidWZmZXIgdGhhdCB3aWxsIGJl
IHJlbmFtZWQuCj4gKyAqIEBidWY6ICAgIFtpbl0gICAgIEEgcGllY2Ugb2YgdXNlcnNwYWNlIG1l
bW9yeSB0aGF0IGNvbnRhaW5zIHRoZSBuYW1lIG9mCj4gKyAqICAgICAgICAgICAgICAgICAgIHRo
ZSBkbWEtYnVmLgo+ICAgKgo+ICAgKiBSZXR1cm5zIDAgb24gc3VjY2Vzcy4gSWYgdGhlIGRtYS1i
dWYgYnVmZmVyIGlzIGFscmVhZHkgYXR0YWNoZWQgdG8KPiAgICogZGV2aWNlcywgcmV0dXJuIC1F
QlVTWS4KPiAtLQo+IDIuMTcuMQo+CgpCZXN0LApTdW1pdApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
