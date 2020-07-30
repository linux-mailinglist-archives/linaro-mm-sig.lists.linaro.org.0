Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EC61E23319A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jul 2020 14:04:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F1CD609C5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Jul 2020 12:04:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1BA60665A5; Thu, 30 Jul 2020 12:04:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8D326151D;
	Thu, 30 Jul 2020 12:03:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 274446062F
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jul 2020 12:03:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0F48D6151D; Thu, 30 Jul 2020 12:03:18 +0000 (UTC)
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by lists.linaro.org (Postfix) with ESMTPS id AE0236062F
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jul 2020 12:03:12 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id n2so19750044edr.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Jul 2020 05:03:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=kTyIB8a8ynCW3WqaP6UVysZ6xRftgn4zqn+hfslnyfk=;
 b=Ll5YY46MmcbzcRPCT/49TiGsFFBkUrMnoPNlyvnE697PDeg4Gr7nsQHz0LOiJkNOA1
 eI/6QGdyKwt43LRZpl0fAkTmF70WDlhYQRbYF2rLIty2giRF94d6i0ayDzO33BPgTtVQ
 cKzFG/U0cSUxuYyLveBiMuzTDvf/FEQ3Ro9+pWzCe8UCJzN5ewf+w7YlIGBCR5Izc/KA
 JO6tb8YoF7dwq9FvzI5qpJ8jLH10FM3vYlQ3eu9v3rwnsC4N5KgzQUKO/0fD0hUus3hw
 IAuuahxoMTa70wLnre061djqZePIyCOnWOLOItutGlotK49QBUT6lYhhF5xFb5PGfBP+
 vl7w==
X-Gm-Message-State: AOAM530bL/77Cb9fu0HOBM7cN9wuCRVkLc9fEIsL8yrobjxhTN5cRSkE
 92WdLSTB8nvVFvoHh0wwDfQ=
X-Google-Smtp-Source: ABdhPJz6WS7N0D21c7MBqLBmnP9+Pig+3y1KgatNCRD3IGpud2kNLYc1R2efcFjX5Wl6CLo5SVCOnQ==
X-Received: by 2002:aa7:ca4f:: with SMTP id j15mr1460242edt.334.1596110591672; 
 Thu, 30 Jul 2020 05:03:11 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id b18sm5628976ejc.41.2020.07.30.05.03.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Jul 2020 05:03:11 -0700 (PDT)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200728135839.1035515-1-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <b9b42b4e-78cd-ed10-5ce5-a9261b018e08@gmail.com>
Date: Thu, 30 Jul 2020 14:03:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200728135839.1035515-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-rdma@vger.kernel.org,
 Dave Chinner <david@fromorbit.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-xfs@vger.kernel.org, linux-mm@kvack.org,
 Jason Gunthorpe <jgg@mellanox.com>, Qian Cai <cai@lca.pw>,
 linux-fsdevel@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-resv: lockdep-prime
 address_space->i_mmap_rwsem for dma-resv
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

QW0gMjguMDcuMjAgdW0gMTU6NTggc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IEdQVSBkcml2ZXJz
IG5lZWQgdGhpcyBpbiB0aGVpciBzaHJpbmtlcnMsIHRvIGJlIGFibGUgdG8gdGhyb3cgb3V0Cj4g
bW1hcCdlZCBidWZmZXJzLiBOb3RlIHRoYXQgd2UgYWxzbyBuZWVkIGRtYV9yZXN2X2xvY2sgaW4g
c2hyaW5rZXJzLAo+IGJ1dCB0aGF0IGxvb3AgaXMgcmVzb2x2ZWQgYnkgdHJ5bG9ja2luZyBpbiBz
aHJpbmtlcnMuCj4KPiBTbyBmdWxsIGhpZXJhcmNoeSBpcyBub3cgKGlnbm9yZSBzb21lIG9mIHRo
ZSBvdGhlciBicmFuY2hlcyB3ZSBhbHJlYWR5Cj4gaGF2ZSBwcmltZWQpOgo+Cj4gbW1hcF9yZWFk
X2xvY2sgLT4gZG1hX3Jlc3YgLT4gc2hyaW5rZXJzIC0+IGlfbW1hcF9sb2NrX3dyaXRlCj4KPiBJ
IGhvcGUgdGhhdCdzIG5vdCBpbmNvbnNpc3RlbnQgd2l0aCBhbnl0aGluZyBtbSBvciBmcyBkb2Vz
LCBhZGRpbmcKPiByZWxldmFudCBwZW9wbGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5z
ZW13YWxAbGluYXJvLm9yZz4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Cj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBDYzogRGF2ZSBDaGlubmVyIDxkYXZpZEBmcm9t
b3JiaXQuY29tPgo+IENjOiBRaWFuIENhaSA8Y2FpQGxjYS5wdz4KPiBDYzogbGludXgteGZzQHZn
ZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1mc2RldmVsQHZnZXIua2VybmVsLm9yZwo+IENjOiBU
aG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpIDx0aG9tYXNfb3NAc2hpcG1haWwub3JnPgo+IENjOiBB
bmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgo+IENjOiBKYXNvbiBHdW50
aG9ycGUgPGpnZ0BtZWxsYW5veC5jb20+Cj4gQ2M6IGxpbnV4LW1tQGt2YWNrLm9yZwo+IENjOiBs
aW51eC1yZG1hQHZnZXIua2VybmVsLm9yZwo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRl
bi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KCj4gLS0tCj4gICBkcml2ZXJzL2RtYS1idWYv
ZG1hLXJlc3YuYyB8IDUgKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtcmVzdi5jCj4gaW5kZXggMGU2Njc1ZWMxZDExLi45Njc4MTYyYTRhYzUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKPiArKysgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYwo+IEBAIC0xMDQsMTIgKzEwNCwxNCBAQCBzdGF0aWMgaW50IF9faW5pdCBk
bWFfcmVzdl9sb2NrZGVwKHZvaWQpCj4gICAJc3RydWN0IG1tX3N0cnVjdCAqbW0gPSBtbV9hbGxv
YygpOwo+ICAgCXN0cnVjdCB3d19hY3F1aXJlX2N0eCBjdHg7Cj4gICAJc3RydWN0IGRtYV9yZXN2
IG9iajsKPiArCXN0cnVjdCBhZGRyZXNzX3NwYWNlIG1hcHBpbmc7Cj4gICAJaW50IHJldDsKPiAg
IAo+ICAgCWlmICghbW0pCj4gICAJCXJldHVybiAtRU5PTUVNOwo+ICAgCj4gICAJZG1hX3Jlc3Zf
aW5pdCgmb2JqKTsKPiArCWFkZHJlc3Nfc3BhY2VfaW5pdF9vbmNlKCZtYXBwaW5nKTsKPiAgIAo+
ICAgCW1tYXBfcmVhZF9sb2NrKG1tKTsKPiAgIAl3d19hY3F1aXJlX2luaXQoJmN0eCwgJnJlc2Vy
dmF0aW9uX3d3X2NsYXNzKTsKPiBAQCAtMTE3LDYgKzExOSw5IEBAIHN0YXRpYyBpbnQgX19pbml0
IGRtYV9yZXN2X2xvY2tkZXAodm9pZCkKPiAgIAlpZiAocmV0ID09IC1FREVBRExLKQo+ICAgCQlk
bWFfcmVzdl9sb2NrX3Nsb3coJm9iaiwgJmN0eCk7Cj4gICAJZnNfcmVjbGFpbV9hY3F1aXJlKEdG
UF9LRVJORUwpOwo+ICsJLyogZm9yIHVubWFwX21hcHBpbmdfcmFuZ2Ugb24gdHJ5bG9ja2VkIGJ1
ZmZlciBvYmplY3RzIGluIHNocmlua2VycyAqLwo+ICsJaV9tbWFwX2xvY2tfd3JpdGUoJm1hcHBp
bmcpOwo+ICsJaV9tbWFwX3VubG9ja193cml0ZSgmbWFwcGluZyk7Cj4gICAjaWZkZWYgQ09ORklH
X01NVV9OT1RJRklFUgo+ICAgCWxvY2tfbWFwX2FjcXVpcmUoJl9fbW11X25vdGlmaWVyX2ludmFs
aWRhdGVfcmFuZ2Vfc3RhcnRfbWFwKTsKPiAgIAlfX2RtYV9mZW5jZV9taWdodF93YWl0KCk7Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
