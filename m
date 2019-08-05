Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C41822A5
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 18:42:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D72B56088B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Aug 2019 16:42:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CB47B6079C; Mon,  5 Aug 2019 16:42:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2 autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADE1E607DB;
	Mon,  5 Aug 2019 16:41:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0DD486058E
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 16:41:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F0C99607DB; Mon,  5 Aug 2019 16:41:50 +0000 (UTC)
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by lists.linaro.org (Postfix) with ESMTPS id B54726058E
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Aug 2019 16:41:49 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id e3so79375944edr.10
 for <linaro-mm-sig@lists.linaro.org>; Mon, 05 Aug 2019 09:41:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=hf8FvBTAOyggpm2dvd4BtwrryCtsii7uz4O8VRrML7E=;
 b=pE0mHY2u4EFptO/O8u/mpm4W2gFapyV6XqrMo85oLSKWhf56qaU74+p+PYGKxqThN4
 D8ZlSNCJrrG6QN0PIlBxQb9MG+GrOh6WXN8EiQ2S/oIMuDYwP4rIRreC3uURrZoshZ0z
 FJ1YOhMPxOxTm2Ge9z3MmGh80rzU/FRPf+1difqKI14woDF+cdT8AY1g80bmYZwnuKuN
 ks+npssbtbHgREYSoNyMnAKvXxO8LG65u8uVytuwcCvCk4qy+d7g9ALpVkKOYD8hP6+E
 EXyEXpXwLIWJl5MsSV5HCy1hB5OgwqPUUBqI4P2Kn4U1ufFHA93cmtBYrDVu+SeTsmZf
 vgwg==
X-Gm-Message-State: APjAAAWBH+C17+ql1eBACTv3va90JkiF+cVCl3WtrkoGjarQgDMK8Q4l
 eFF8WC+j1KOGcQqZbVV8ZSg=
X-Google-Smtp-Source: APXvYqzB+kkvE6XHVSaOiar91jcBLzv+PjeK8RERQ/cfP8IvIxj7oGLsBKvncel8k1kqD4HhJ2fKEQ==
X-Received: by 2002:a17:906:c459:: with SMTP id
 ck25mr116923991ejb.32.1565023308629; 
 Mon, 05 Aug 2019 09:41:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id b15sm7448204ejj.5.2019.08.05.09.41.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 09:41:47 -0700 (PDT)
Date: Mon, 5 Aug 2019 18:41:46 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190805164145.GW7444@phenom.ffwll.local>
References: <20190805154554.3476-1-christian.koenig@amd.com>
 <20190805154554.3476-5-christian.koenig@amd.com>
 <156502126144.28464.11399426968315988701@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156502126144.28464.11399426968315988701@skylake-alporthouse-com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 5/5] dma-buf: nuke
 reservation_object seq number
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

T24gTW9uLCBBdWcgMDUsIDIwMTkgYXQgMDU6MDc6NDFQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgQ2hyaXN0aWFuIEvDtm5pZyAoMjAxOS0wOC0wNSAxNjo0NTo1NCkKPiA+
IEBAIC0yMTQsMTYgKzIxNCwxNiBAQCBzdGF0aWMgX19wb2xsX3QgZG1hX2J1Zl9wb2xsKHN0cnVj
dCBmaWxlICpmaWxlLCBwb2xsX3RhYmxlICpwb2xsKQo+ID4gICAgICAgICAgICAgICAgIHJldHVy
biAwOwo+ID4gIAo+ID4gIHJldHJ5Ogo+ID4gLSAgICAgICBzZXEgPSByZWFkX3NlcWNvdW50X2Jl
Z2luKCZyZXN2LT5zZXEpOwo+ID4gICAgICAgICByY3VfcmVhZF9sb2NrKCk7Cj4gPiAgCj4gPiAr
ICAgICAgIGZlbmNlX2V4Y2wgPSByY3VfZGVyZWZlcmVuY2UocmVzdi0+ZmVuY2VfZXhjbCk7Cj4g
PiAgICAgICAgIGZvYmogPSByY3VfZGVyZWZlcmVuY2UocmVzdi0+ZmVuY2UpOwo+ID4gICAgICAg
ICBpZiAoZm9iaikKPiA+ICAgICAgICAgICAgICAgICBzaGFyZWRfY291bnQgPSBmb2JqLT5zaGFy
ZWRfY291bnQ7Cj4gPiAgICAgICAgIGVsc2UKPiA+ICAgICAgICAgICAgICAgICBzaGFyZWRfY291
bnQgPSAwOwo+ID4gLSAgICAgICBmZW5jZV9leGNsID0gcmN1X2RlcmVmZXJlbmNlKHJlc3YtPmZl
bmNlX2V4Y2wpOwo+ID4gLSAgICAgICBpZiAocmVhZF9zZXFjb3VudF9yZXRyeSgmcmVzdi0+c2Vx
LCBzZXEpKSB7Cj4gPiArCj4gPiArICAgICAgIGlmIChyY3VfZGVyZWZlcmVuY2UocmVzdi0+ZmVu
Y2VfZXhjbCkgIT0gZmVuY2VfZXhjbCkgewo+IAo+IElmIEkgcmVtZW1iZXIgbXkgcnVsZXMgY29y
cmVjdGx5LCByY3VfZGVyZWZlcmVuY2UgaXMgYQo+IHJlYWQtZGF0YS1kZXBlbmRzLCB3aGljaCBv
bmx5IG1lYW5zIHRoYXQgYSByZWFkIHRocm91Z2ggdGhlIHBvaW50ZXIKPiByZXR1cm5lZCBieSBy
Y3VfZGVyZWZlcmVuY2UoKSBpcyBhZnRlciB0aGUgcmV0cmlldmFsIG9mIHRoYXQgcG9pbnRlci4K
PiBOb3RoaW5nIG9yZGVycyB0aGUgcmV0cmlldmFsIG9mIGZlbmNlX2V4Y2wgdnMgc2hhcmVkX2Nv
dW50IChkaWZmZXJlbnQKPiBwb2ludGVycyksIHNvIEkgdGhpbmsgdGhlIGxhc3QgbGluZSBzaG91
bGQgYmU6Cj4gCj4gc21wX3JtYigpOwo+IGlmIChyY3VfYWNjZXNzX3BvaW50ZXIocmVzdi0+ZmVu
Y2VfZXhjbCkgIT0gZmVuY2VfZXhjbCkKCkFsc28sIGJhcnJpZXJzIG11c3QgaGF2ZSBhIGNvbW1l
bnQsIHRoZSBjb21tZW50IG11c3QgYmUgb24gYm90aCBiYXJyaWVycwooaWYgeW91IGRvbid0IGhh
dmUgdHdvLCB5b3UncmUgZG9pbmcgaXQgd3JvbmcpLCBhbmQgZWFjaCBiYXJyaWVyIGNvbW1lbnQK
bXVzdCByZWZlcmVuY2UgaXRzIGNvdW50ZXJwYXJ0LgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVy
ClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5j
aApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
