Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C8F1BC284
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 17:16:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09AF86198D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:16:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E80FC61997; Tue, 28 Apr 2020 15:16:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 03BCD6181D;
	Tue, 28 Apr 2020 15:15:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D122E6181D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 15:15:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BE30461813; Tue, 28 Apr 2020 15:15:32 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 3083F61951
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 15:15:19 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id z6so3297354wml.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 08:15:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=6RQa3/Ivl+erv2MC5JIerdVHsjcRsy5jElt25/tvg/I=;
 b=gwM/YuaROMFrfMQJUTKfz0XZgiv77bUd4quNyCv6ZFu+URry40w+R1/LwJb+nYsiYd
 +/bIg3kd1a5AKzeCSd/Uh+bE556GNNNcgdpXggxZHruW+F45QeiP9ej56ULqx61cvlyA
 skuO67TqFlRfZeFDqihb+HqbL3MjU3AR68MQazDvu0KPTSMo7iJqESVnNI2/63h7OCTr
 6rqlbW0aarYYFOVJg4Yl85HHkst8u44pxp50kjIuCwatgQ7wOgtZYWgdImgdKI6dEnyi
 VaTOvaj4SN80QqePinyPB/VuTfjuvW5wJssSLmWQsSk8dk1ylSErncd3gBhd7WvaSmjN
 obPg==
X-Gm-Message-State: AGi0PuYYiHOPFQA+g0Y/J75PEf18wyvjxAk9Xbp2odAX5l4bzZgPiJ0M
 sLE5WlTPMrQOUmt/fHzxMdw=
X-Google-Smtp-Source: APiQypJXqdagbY7C95ErpdLoYp1uRYumNOUPPDPTkG1JE8zcrJsSYL5DCZa3nXGytS0h2Vy2ksxDbg==
X-Received: by 2002:a7b:c5d4:: with SMTP id n20mr5373467wmk.92.1588086918255; 
 Tue, 28 Apr 2020 08:15:18 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id 74sm26988379wrk.30.2020.04.28.08.15.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 08:15:17 -0700 (PDT)
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200428132005.21424-1-m.szyprowski@samsung.com>
 <CGME20200428132028eucas1p155a84ab14c6a6820b4c8240f01e98905@eucas1p1.samsung.com>
 <20200428132005.21424-11-m.szyprowski@samsung.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <94c45ded-6544-a922-7177-8255b44c4cfa@gmail.com>
Date: Tue, 28 Apr 2020 17:15:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200428132005.21424-11-m.szyprowski@samsung.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [RFC 10/17] drm: radeon: fix sg_table nents vs.
	orig_nents misuse
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjguMDQuMjAgdW0gMTU6MTkgc2NocmllYiBNYXJlayBTenlwcm93c2tpOgo+IFRoZSBEb2N1
bWVudGF0aW9uL0RNQS1BUEktSE9XVE8udHh0IHN0YXRlcyB0aGF0IGRtYV9tYXBfc2cgcmV0dXJu
cyB0aGUKPiBudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRkcmVzcyBz
cGFjZS4gSG93ZXZlciB0aGUKPiBzdWJzZXF1ZW50IGNhbGxzIHRvIGRtYV9zeW5jX3NnX2Zvcl97
ZGV2aWNlLGNwdX0gYW5kIGRtYV91bm1hcF9zZyBtdXN0IGJlCj4gY2FsbGVkIHdpdGggdGhlIG9y
aWdpbmFsIG51bWJlciBvZiBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUKPiBzZ190
YWJsZS0+bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNh
bGwgYXMgc3RhdGVkCj4gaW4gaW5jbHVkZS9saW51eC9zY2F0dGVybGlzdC5oLiBBZGFwdCB0aGUg
Y29kZSB0byBvYmV5IHRob3NlIHJ1bGVzLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJv
d3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgoKUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vcmFkZW9uL3JhZGVvbl90dG0uYyB8IDEwICsrKysrLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3Jh
ZGVvbl90dG0uYwo+IGluZGV4IDVkNTBjOWUuLjQ3NzA4ODAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fdHRtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFk
ZW9uL3JhZGVvbl90dG0uYwo+IEBAIC00ODEsNyArNDgxLDcgQEAgc3RhdGljIGludCByYWRlb25f
dHRtX3R0X3Bpbl91c2VycHRyKHN0cnVjdCB0dG1fdHQgKnR0bSkKPiAgIHsKPiAgIAlzdHJ1Y3Qg
cmFkZW9uX2RldmljZSAqcmRldiA9IHJhZGVvbl9nZXRfcmRldih0dG0tPmJkZXYpOwo+ICAgCXN0
cnVjdCByYWRlb25fdHRtX3R0ICpndHQgPSAodm9pZCAqKXR0bTsKPiAtCXVuc2lnbmVkIHBpbm5l
ZCA9IDAsIG5lbnRzOwo+ICsJdW5zaWduZWQgcGlubmVkID0gMDsKPiAgIAlpbnQgcjsKPiAgIAo+
ICAgCWludCB3cml0ZSA9ICEoZ3R0LT51c2VyZmxhZ3MgJiBSQURFT05fR0VNX1VTRVJQVFJfUkVB
RE9OTFkpOwo+IEBAIC01MjIsOCArNTIyLDggQEAgc3RhdGljIGludCByYWRlb25fdHRtX3R0X3Bp
bl91c2VycHRyKHN0cnVjdCB0dG1fdHQgKnR0bSkKPiAgIAkJZ290byByZWxlYXNlX3NnOwo+ICAg
Cj4gICAJciA9IC1FTk9NRU07Cj4gLQluZW50cyA9IGRtYV9tYXBfc2cocmRldi0+ZGV2LCB0dG0t
PnNnLT5zZ2wsIHR0bS0+c2ctPm5lbnRzLCBkaXJlY3Rpb24pOwo+IC0JaWYgKG5lbnRzID09IDAp
Cj4gKwl0dG0tPnNnLT5uZW50cyA9IGRtYV9tYXBfc2cocmRldi0+ZGV2LCB0dG0tPnNnLT5zZ2ws
Cj4gKwlpZiAodHRtLT5zZy0+bmVudHMgPT0gMCkKPiAgIAkJZ290byByZWxlYXNlX3NnOwo+ICAg
Cj4gICAJZHJtX3ByaW1lX3NnX3RvX3BhZ2VfYWRkcl9hcnJheXModHRtLT5zZywgdHRtLT5wYWdl
cywKPiBAQCAtNTU0LDkgKzU1NCw5IEBAIHN0YXRpYyB2b2lkIHJhZGVvbl90dG1fdHRfdW5waW5f
dXNlcnB0cihzdHJ1Y3QgdHRtX3R0ICp0dG0pCj4gICAJCXJldHVybjsKPiAgIAo+ICAgCS8qIGZy
ZWUgdGhlIHNnIHRhYmxlIGFuZCBwYWdlcyBhZ2FpbiAqLwo+IC0JZG1hX3VubWFwX3NnKHJkZXYt
PmRldiwgdHRtLT5zZy0+c2dsLCB0dG0tPnNnLT5uZW50cywgZGlyZWN0aW9uKTsKPiArCWRtYV91
bm1hcF9zZyhyZGV2LT5kZXYsIHR0bS0+c2ctPnNnbCwgdHRtLT5zZy0+b3JpZ19uZW50cywgZGly
ZWN0aW9uKTsKPiAgIAo+IC0JZm9yX2VhY2hfc2dfcGFnZSh0dG0tPnNnLT5zZ2wsICZzZ19pdGVy
LCB0dG0tPnNnLT5uZW50cywgMCkgewo+ICsJZm9yX2VhY2hfc2dfcGFnZSh0dG0tPnNnLT5zZ2ws
ICZzZ19pdGVyLCB0dG0tPnNnLT5vcmlnX25lbnRzLCAwKSB7Cj4gICAJCXN0cnVjdCBwYWdlICpw
YWdlID0gc2dfcGFnZV9pdGVyX3BhZ2UoJnNnX2l0ZXIpOwo+ICAgCQlpZiAoIShndHQtPnVzZXJm
bGFncyAmIFJBREVPTl9HRU1fVVNFUlBUUl9SRUFET05MWSkpCj4gICAJCQlzZXRfcGFnZV9kaXJ0
eShwYWdlKTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
