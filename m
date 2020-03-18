Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 766BC189FED
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Mar 2020 16:47:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A710F6180F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Mar 2020 15:47:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 997D56194F; Wed, 18 Mar 2020 15:47:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09415618EE;
	Wed, 18 Mar 2020 15:46:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5CF5160732
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2020 15:46:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4613F6180F; Wed, 18 Mar 2020 15:46:31 +0000 (UTC)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by lists.linaro.org (Postfix) with ESMTPS id 58DCE60732
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2020 15:46:30 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id a6so25893963otb.10
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2020 08:46:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=id6fBYRzTbPVezHvRzigBUZtyyZNpNKX7bIyeQ3xLJM=;
 b=htAc+hjG749RFpJtrLsl8b+8emxWBHVWNSk3mzEY+Po88ieunUWzn5nK5aSx+ncwYk
 T0vsESuLIqGNmFvQ+YJ9F3dKcD/s8aefV4ynvirFX4ioEB8b+sl/IjvlifiNRD+xKR7A
 r64wILfuAQ0HC4r8N+QYbXDf9Y4+hBhRJVIdGb7Zhj7JEYpgp+qlRwxwOK1lSQnihFuK
 VarsmpnsiF0Oo000VbhYM/jMg4H4Waa5Ro7qh1LFzrnIkcKvswIvdAaxASqBwLw0U6rb
 sT+YhO7P6pz5e7Q5ep0Ugo+GTgNGxzk9fn1KnHCIcY+IIaCDVjeLQncKqJ999qW94s+d
 jUUQ==
X-Gm-Message-State: ANhLgQ23ulDTmDiljNbwhB39A2sX4ab1OqRcOIO13HtISFhS8oQaDeM4
 yk+s+PDLV7uRid3Tz+uq9IaLiIUT0gLii1ByxRWhbmpR
X-Google-Smtp-Source: ADFU+vvX20CIlM83oLPc+apgYzRAvWB4Y3fF6uDgiS0UN5JGeqEbtOLb0rxc9QNhm7ohNQlk5lyNBFi0+55SbHMyakg=
X-Received: by 2002:a05:6830:193:: with SMTP id
 q19mr4286283ota.164.1584546389617; 
 Wed, 18 Mar 2020 08:46:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200317205643.1028398-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200317205643.1028398-1-daniel.vetter@ffwll.ch>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 18 Mar 2020 21:16:17 +0530
Message-ID: <CAO_48GH1YkA4mvjyQ=88VRrDPc4Kh8fiFsm-MOaNFfWhhaxfbw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>, Joe Perches <joe@perches.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] MAINTAINERS: Better regex for
	dma_buf|fence|resv
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

SGVsbG8gRGFuaWVsLAoKVGhhbmtzIGZvciB0aGUgcGF0Y2guCgpPbiBXZWQsIDE4IE1hciAyMDIw
IGF0IDAyOjI2LCBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPiB3cm90ZToK
Pgo+IFdlJ3JlIGdldHRpbmcgc29tZSByYW5kb20gb3RoZXIgc3R1ZmYgdGhhdCB3ZSdyZSBub3Qg
cmVhbGx5IGludGVyZXN0ZWQKPiBpbiwgc28gbWF0Y2ggb25seSB3b3JkIGJvdW5kYXJpZXMuIEFs
c28gYXZvaWQgdGhlIGNhcHR1cmUgZ3JvdXAgd2hpbGUKPiBhdCBpdC4KPgo+IFN1Z2dlc3RlZCBi
eSBKb2UgUGVyY2hlcy4KPgo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzog
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKPiBDYzogSm9lIFBlcmNoZXMgPGpvZUBwZXJjaGVzLmNvbT4KPiBDYzogU3Vt
aXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogU2FtIFJhdm5ib3JnIDxz
YW1AcmF2bmJvcmcub3JnPgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAaW50ZWwuY29tPgoKQWNrZWQtYnk6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxp
bmFyby5vcmc+Cj4gLS0tCj4gdjI6IE5vIHNpbmdsZSBxdW90ZXMgaW4gTUFJTlRBSU5FUlMgKEpv
ZSkKPiB2MzogRml4IHR5cG8gaW4gY29tbWl0IG1lc3NhZ2UgKFNhbSkKPiAtLS0KPiAgTUFJTlRB
SU5FUlMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+Cj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKPiBpbmRleCAz
MDA1YmU2MzhjMmMuLmVkNjA4OGEwMWJmZSAxMDA2NDQKPiAtLS0gYS9NQUlOVEFJTkVSUwo+ICsr
KyBiL01BSU5UQUlORVJTCj4gQEAgLTUwMjUsNyArNTAyNSw3IEBAIEY6ICAgICAgICBpbmNsdWRl
L2xpbnV4L2RtYS1idWYqCj4gIEY6ICAgICBpbmNsdWRlL2xpbnV4L3Jlc2VydmF0aW9uLmgKPiAg
RjogICAgIGluY2x1ZGUvbGludXgvKmZlbmNlLmgKPiAgRjogICAgIERvY3VtZW50YXRpb24vZHJp
dmVyLWFwaS9kbWEtYnVmLnJzdAo+IC1LOiAgICAgZG1hXyhidWZ8ZmVuY2V8cmVzdikKPiArSzog
ICAgIFxiZG1hXyg/OmJ1ZnxmZW5jZXxyZXN2KVxiCj4gIFQ6ICAgICBnaXQgZ2l0Oi8vYW5vbmdp
dC5mcmVlZGVza3RvcC5vcmcvZHJtL2RybS1taXNjCj4KPiAgRE1BLUJVRiBIRUFQUyBGUkFNRVdP
UksKPiAtLQo+IDIuMjUuMQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
