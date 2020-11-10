Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5632AE480
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Nov 2020 00:57:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E0C3666604
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 23:57:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D585C66608; Tue, 10 Nov 2020 23:57:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BBC05665EE;
	Tue, 10 Nov 2020 23:56:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9F3116192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 23:56:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8E4F0665EE; Tue, 10 Nov 2020 23:56:32 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 6A2626192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 23:56:31 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id o15so409337wru.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 15:56:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WfB5Zmw3Ux9CKhPt9P+tELn8R3tbn83JjmD6s3cqA8Y=;
 b=J42BAkFm79hI3Ady/mJXqLPRmFBwOxSWOrCgrNg3l2cWzCYCmS1jdweiTUBq1xQsC4
 AHdDOL1lLOi3JiHd/J1dZ5ZhkOsE9/twW710dEMfIrvfRqYbPviT4roSYCYUVz8Cxrd7
 4ecRudSWqy1s/7r+g1ldp+h9cLPqr2Ueg3mJcziAJiUSTSs+a2obuKhtOR/Uo4fRgw/w
 mF0+odJlZwxZf/uXvNHcFfqDVj1/CdIDoVmyRxpHlsQ5ci2rLKIpknCYz6UqbUjStjAc
 dXLNWYWhdMoOFlhdwtkM0HGypYQSmfqLF+NH6+h4mraVrUQkzX9HMkxdgtTBNWKJXC6W
 d3cw==
X-Gm-Message-State: AOAM533JlUWRgnVUvEXB3r5F6WW+fJB4iiFSa53gN5IP0tcMYxqTRBaw
 d0xeCM1vhJXD3AnK90KxRV3DFeQT8EA45YBzM0E=
X-Google-Smtp-Source: ABdhPJwsnW0y/kx7DL1j2p8r9N9uPNtVRi5fDJKmOzzqoro5WBcd2tHjiHixkDcYOyQM+BTSPEn2FX4iUDM/izxfwkM=
X-Received: by 2002:adf:f246:: with SMTP id b6mr26221425wrp.111.1605052590670; 
 Tue, 10 Nov 2020 15:56:30 -0800 (PST)
MIME-Version: 1.0
References: <20201110193112.988999-1-lee.jones@linaro.org>
 <20201110193112.988999-16-lee.jones@linaro.org>
In-Reply-To: <20201110193112.988999-16-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 18:56:19 -0500
Message-ID: <CADnq5_Pq7ODBSwnjRQy8Hu1mTP+t9d8ofcO9KD0_89d9GpWpUQ@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 15/30] drm/radeon/cik_sdma: Demote vague
	attempt at kernel-doc
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

T24gVHVlLCBOb3YgMTAsIDIwMjAgYXQgMjozMSBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrX3NkbWEuYzo5NDk6IHdh
cm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3JpbmcnIG5vdCBkZXNjcmliZWQg
aW4gJ2Npa19kbWFfdm1fZmx1c2gnCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrX3NkbWEu
Yzo5NDk6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3ZtX2lkJyBub3Qg
ZGVzY3JpYmVkIGluICdjaWtfZG1hX3ZtX2ZsdXNoJwo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9u
L2Npa19zZG1hLmM6OTQ5OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdw
ZF9hZGRyJyBub3QgZGVzY3JpYmVkIGluICdjaWtfZG1hX3ZtX2ZsdXNoJwo+Cj4gQ2M6IEFsZXgg
RGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7Zu
aWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGll
ZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBT
dW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
Q2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8u
b3JnPgoKQXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9y
YWRlb24vY2lrX3NkbWEuYyB8IDQgKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9jaWtfc2RtYS5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9jaWtfc2RtYS5jCj4gaW5kZXgg
Njg0MDNlNzc3NTZkMy4uM2M3MDllYmU4ZDFhYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL2Npa19zZG1hLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2Npa19z
ZG1hLmMKPiBAQCAtOTM2LDExICs5MzYsOSBAQCB2b2lkIGNpa19zZG1hX3ZtX3BhZF9pYihzdHJ1
Y3QgcmFkZW9uX2liICppYikKPiAgICAgICAgICAgICAgICAgaWItPnB0cltpYi0+bGVuZ3RoX2R3
KytdID0gU0RNQV9QQUNLRVQoU0RNQV9PUENPREVfTk9QLCAwLCAwKTsKPiAgfQo+Cj4gLS8qKgo+
ICsvKgo+ICAgKiBjaWtfZG1hX3ZtX2ZsdXNoIC0gY2lrIHZtIGZsdXNoIHVzaW5nIHNETUEKPiAg
ICoKPiAtICogQHJkZXY6IHJhZGVvbl9kZXZpY2UgcG9pbnRlcgo+IC0gKgo+ICAgKiBVcGRhdGUg
dGhlIHBhZ2UgdGFibGUgYmFzZSBhbmQgZmx1c2ggdGhlIFZNIFRMQgo+ICAgKiB1c2luZyBzRE1B
IChDSUspLgo+ICAgKi8KPiAtLQo+IDIuMjUuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
