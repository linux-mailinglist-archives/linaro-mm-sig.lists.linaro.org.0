Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F6D113753
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Dec 2019 22:58:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A979161754
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Dec 2019 21:58:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9DBE46175A; Wed,  4 Dec 2019 21:58:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F132C6176E;
	Wed,  4 Dec 2019 21:58:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8DBB261754
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Dec 2019 21:58:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 756276176E; Wed,  4 Dec 2019 21:58:14 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 72ADA61754
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Dec 2019 21:58:12 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id y17so1047351wrh.5
 for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Dec 2019 13:58:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hIOYqKmmmpvYBf3JvRvJwW76NwBUzC3d92a7ZQ9APOc=;
 b=oL5eQxu/lr3v7j33fKidbZDFKE8CdAoBc00h3sY/p/aUizl+FHhFu22ZiwpkMLDdDW
 PfBRJB1XXY8ixeE/1n/ftCHKOPwhg8GQtKZGrhPPocbrgopAgEgEH2upSQ81DfqnIaRQ
 nFhqXI48q+4lNNxzwTKCIO3PlEedn+AZ4nURE6UsRTYx/rpg/uRISfuDeZwD8B5y4umA
 4Ai4BIf7OiZ3e1KRIlxdi216cjgQVNHxGuNyLmAzGRb8yTYuAKYuGrDraiDT+utyZbA7
 f1aVrgpkhdpkSi1t8KPsfs6UyYEtteMUvHc2arCrmxS/8bnmpsigNnVQ9CuwE28cUz18
 ibaA==
X-Gm-Message-State: APjAAAXy4rtGmuWrwvyWd2JrWgyq3rz9OgNZAlPYngNvIsnrzpH2hz4I
 h9TU1KsalT5p2kdd407/jHqYmmW7QW6FuTMk5tNLjg==
X-Google-Smtp-Source: APXvYqz34tHD22JxN7p2KuRnBVNDtkFtDP+Bu7c/rRmS0sUMVBdKkzgud+fUiVEBi/ytgoRY/psrGk4bpGfX3XNxdM0=
X-Received: by 2002:a5d:4692:: with SMTP id u18mr6651016wrq.206.1575496691523; 
 Wed, 04 Dec 2019 13:58:11 -0800 (PST)
MIME-Version: 1.0
References: <20191204215105.874074-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20191204215105.874074-1-daniel.vetter@ffwll.ch>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 4 Dec 2019 16:57:59 -0500
Message-ID: <CADnq5_O8V7N9jV1ZDCuL3WWCW2CwNSjXnx70Z1fDQpm9ObBWwA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] MAINTAINERS: Match on
	dma_buf|fence|resv anywhere
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

T24gV2VkLCBEZWMgNCwgMjAxOSBhdCA0OjUxIFBNIERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+Cj4gSSd2ZSBzcGVudCBhIGJpdCB0b28gbXVjaCB0aW1lIHJl
dmlld2luZyBhbGwga2luZHMgb2YgdXNlcnMgYWxsIG92ZXIKPiB0aGUga2VybmVsIGZvciB0aGlz
IGJ1ZmZlciBzaGFyaW5nIGluZnJhc3RydWN0dXJlLiBBbmQgc29tZSBvZiBpdCBpcwo+IGF0IGxl
YXN0IHF1ZXN0aW9uYWJsZS4KPgo+IE1ha2Ugc3VyZSB3ZSBhdCBsZWFzdCBzZWUgd2hlbiB0aGlz
IHN0dWZmIGZsaWVzIGJ5Lgo+Cj4gQWNrZWQtYnk6IERhdmUgQWlybGllIDxhaXJsaWVkQGdtYWls
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzog
TWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK3NhbXN1bmdAa2VybmVsLm9yZz4KPiBDYzog
R3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiBDYzogUm9i
IEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwu
b3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwoKQWNrZWQtYnk6IEFsZXgg
RGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KCj4gLS0tCj4gIE1BSU5UQUlORVJT
IHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBh
L01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKPiBpbmRleCAzNzVkYmVhOGJjODguLmMxZTNkYTJj
MTk0NyAxMDA2NDQKPiAtLS0gYS9NQUlOVEFJTkVSUwo+ICsrKyBiL01BSU5UQUlORVJTCj4gQEAg
LTQ5NDEsNiArNDk0MSw3IEBAIEY6ICAgICAgICBpbmNsdWRlL2xpbnV4L2RtYS1idWYqCj4gIEY6
ICAgICBpbmNsdWRlL2xpbnV4L3Jlc2VydmF0aW9uLmgKPiAgRjogICAgIGluY2x1ZGUvbGludXgv
KmZlbmNlLmgKPiAgRjogICAgIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdAo+
ICtLOiAgICAgZG1hXyhidWZ8ZmVuY2V8cmVzdikKPiAgVDogICAgIGdpdCBnaXQ6Ly9hbm9uZ2l0
LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLW1pc2MKPgo+ICBETUEgR0VORVJJQyBPRkZMT0FEIEVO
R0lORSBTVUJTWVNURU0KPiAtLQo+IDIuMjQuMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
