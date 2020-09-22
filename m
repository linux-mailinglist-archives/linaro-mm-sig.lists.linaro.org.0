Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E742744BA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Sep 2020 16:52:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8858B616DE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Sep 2020 14:52:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 77199618F4; Tue, 22 Sep 2020 14:52:30 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 051C8617C8;
	Tue, 22 Sep 2020 14:52:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 06113616DE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Sep 2020 14:51:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E55EA617C8; Tue, 22 Sep 2020 14:51:57 +0000 (UTC)
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by lists.linaro.org (Postfix) with ESMTPS id CD509616DE
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Sep 2020 14:51:56 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id u4so14370420ljd.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Sep 2020 07:51:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bzR1gxnRoZXjib0y+EllAgb8353tQk04gCemc3kID8w=;
 b=jJVXXesH/V3c/HTQq+yzQ+R0J4+LkArOZsyvaEpSqnGhvlsWSz2iAOocwejJlL3NLG
 qTHDKqbP3ugZ3ThKkgAVqhiOJRThWHE1k0/yokO4zaNCdkMXNOhiSgjFd7GjviKEQfnP
 EV1+mbO7+jFxvtxSTVjK/jNpEfu9/KA47SKKvNubl63TnKcmeA+/GUH3T7qZwXYNSnfp
 KBNLS3Bi4qoNNtRr5jtEs05hSlyHItkVt2PrvDu/02oKp8xQtTkU9FiVg1sYQSRSoaH0
 qrAY2paWqHh3pIhANRJcQWnxZTeUOdUjkMvo7tqTzTHg/b9HbEdM/wbf2BcsLIS/sTmC
 4HDg==
X-Gm-Message-State: AOAM530aj/r//5ZAcdJJWebfagcxBv6Il3wDg4XMHB2IuwJukdc7yD5Y
 ZpUSFRIsg+ITD17R47dndmB8atgtubXOfo3JKfKQAdJW
X-Google-Smtp-Source: ABdhPJzKH8OQ0ibiB5TcLvCcwuehtiNBqqIIuvG+ZJlWITOsxvhm5s/+BLFL6uh/wql70FfMyu1bYxOEWOl2C3HREcI=
X-Received: by 2002:a05:651c:552:: with SMTP id
 q18mr1591731ljp.248.1600786315624; 
 Tue, 22 Sep 2020 07:51:55 -0700 (PDT)
MIME-Version: 1.0
References: <1600761208-45229-1-git-send-email-zou_wei@huawei.com>
 <16d720b7-9bf3-ad3a-0785-76f21c87c9e1@amd.com>
In-Reply-To: <16d720b7-9bf3-ad3a-0785-76f21c87c9e1@amd.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 22 Sep 2020 20:21:42 +0530
Message-ID: <CAO_48GHVUnHm38nPSc3zYU7ZoFmZDTZdc7Du5pyrVbz6ytwgEA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: LKML <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 "Andrew F. Davis" <afd@ti.com>, Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 "\(Exiting\) Benjamin Gaignard" <benjamin.gaignard@linaro.org>,
 Zou Wei <zou_wei@huawei.com>, Brian Starkey <Brian.Starkey@arm.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH -next] dma-buf: heaps: Remove unused
	variable ret
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

SGVsbG8gWm91LAoKT24gVHVlLCAyMiBTZXAgMjAyMCBhdCAxODoxMiwgQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFtIDIyLjA5LjIwIHVtIDA5
OjUzIHNjaHJpZWIgWm91IFdlaToKPiA+IFRoaXMgcGF0Y2ggZml4ZXMgYmVsb3cgd2FybmluZ3Mg
cmVwb3J0ZWQgYnkgY29jY2ljaGVjawo+ID4KPiA+IC4vZHJpdmVycy9kbWEtYnVmL2hlYXBzL2hl
YXAtaGVscGVycy5jOjIwMjo1LTg6IFVubmVlZGVkIHZhcmlhYmxlOiAicmV0Ii4gUmV0dXJuICIw
IiBvbiBsaW5lIDIxNQo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFpvdSBXZWkgPHpvdV93ZWlAaHVh
d2VpLmNvbT4KPgo+IEFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+Cj4KPiBHb2luZyB0byBwaWNrIHRoaXMgdXAgZm9yIGRybS1taXNjLW5leHQuClRo
YW5rcyBDaHJpc3RpYW4hCkZ3aXcsIGZlZWwgZnJlZSB0byBhZGQgbXkKQWNrZWQtYnk6IFN1bWl0
IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4KPiA+IC0tLQo+ID4gICBkcml2ZXJz
L2RtYS1idWYvaGVhcHMvaGVhcC1oZWxwZXJzLmMgfCAzICstLQo+ID4gICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFw
cy9oZWFwLWhlbHBlcnMuYwo+ID4gaW5kZXggZDA2OTZjZi4uNzk2OTUxMCAxMDA2NDQKPiA+IC0t
LSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9oZWFwLWhlbHBlcnMuYwo+ID4gKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2hlYXBzL2hlYXAtaGVscGVycy5jCj4gPiBAQCAtMTk5LDcgKzE5OSw2IEBAIHN0
YXRpYyBpbnQgZG1hX2hlYXBfZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYsCj4gPiAgIHsKPiA+ICAgICAgIHN0cnVjdCBoZWFwX2hlbHBlcl9idWZmZXIgKmJ1
ZmZlciA9IGRtYWJ1Zi0+cHJpdjsKPiA+ICAgICAgIHN0cnVjdCBkbWFfaGVhcHNfYXR0YWNobWVu
dCAqYTsKPiA+IC0gICAgIGludCByZXQgPSAwOwo+ID4KPiA+ICAgICAgIG11dGV4X2xvY2soJmJ1
ZmZlci0+bG9jayk7Cj4gPgo+ID4gQEAgLTIxMiw3ICsyMTEsNyBAQCBzdGF0aWMgaW50IGRtYV9o
ZWFwX2RtYV9idWZfYmVnaW5fY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAo+ID4g
ICAgICAgfQo+ID4gICAgICAgbXV0ZXhfdW5sb2NrKCZidWZmZXItPmxvY2spOwo+ID4KPiA+IC0g
ICAgIHJldHVybiByZXQ7Cj4gPiArICAgICByZXR1cm4gMDsKPiA+ICAgfQo+ID4KPiA+ICAgc3Rh
dGljIGludCBkbWFfaGVhcF9kbWFfYnVmX2VuZF9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpk
bWFidWYsCj4KCkJlc3QsClN1bWl0LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
