Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AA4321C74
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Feb 2021 17:11:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1835F667CE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Feb 2021 16:11:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EEA99667D2; Mon, 22 Feb 2021 16:11:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7AC46667CF;
	Mon, 22 Feb 2021 16:10:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 51E36667CD
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Feb 2021 16:10:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 38054667CF; Mon, 22 Feb 2021 16:10:46 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
 [209.85.210.45])
 by lists.linaro.org (Postfix) with ESMTPS id 918A9667CD
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Feb 2021 16:10:44 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id l16so3461474oti.12
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Feb 2021 08:10:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nA2zu/27Qi+zi0Et6iwYKYiIXci1LR0Ph/voW46JRKs=;
 b=aTguwO+MU+xlavBwLAdha+JLaDaGn7ML/gIpZoFfpdczTzkUeycUNXR+liYg6A781u
 UzZsjevWbohRvVX/HtYRLQrzm0j0uQXjlT7TS2/onmznxNR3vtQPrRvy1Y9NBUVMeolD
 qQ10sQAHmg5y6s1dajfRvIZWGIPlBFvJNezzRItBmbb0DaiECHllwQGSFW625+10Nlcc
 mAg7uhuv2z6bo/EbTcDskEl0fmW0hjwmlm3sTUuXgOMxoHlXnP2sJEkPYataaxN8BKy+
 MXvlO3MveFXHR4e9HHPCX8XBchBzaTF0wENxp/Tl4y7w1lQRRzGseEcf7CnDF3BAlSD5
 x3nA==
X-Gm-Message-State: AOAM530haiPE10+9GKxjA5LQrBad4STvfs1h4e44bJ9IaXJ9Riev5/C4
 uJf9exmw/Fkoh5CZIPj3/R3+dykRmAx/iCzn9P5s0A==
X-Google-Smtp-Source: ABdhPJy5VMzYav92la4GbCVrRLqsfbuxuE4lRo22hdHDCFSLUd3Jl9Lu7Ldt3nTSfwxRv+k1huhJ5OLliDo8pDe3AfM=
X-Received: by 2002:a9d:b85:: with SMTP id 5mr17812907oth.281.1614010242515;
 Mon, 22 Feb 2021 08:10:42 -0800 (PST)
MIME-Version: 1.0
References: <20210222124328.27340-1-tzimmermann@suse.de>
 <b190801b-b8be-c9df-f203-3e42eb97cea4@amd.com>
 <238ce852-730b-e31c-a6fe-a9ecaca497e3@suse.de>
In-Reply-To: <238ce852-730b-e31c-a6fe-a9ecaca497e3@suse.de>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 22 Feb 2021 17:10:31 +0100
Message-ID: <CAKMK7uE4QxaiGCAX6pYq=dCg5zzs9Jg9iRSjq893OmAZk=OrpA@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, lima@lists.freedesktop.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Dave Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Steven Price <steven.price@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 "Anholt, Eric" <eric@anholt.net>, Alan Stern <stern@rowland.harvard.edu>,
 Qiang Yu <yuq825@gmail.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Subject: Re: [Linaro-mm-sig] [PATCH v2 0/3] drm/prime: Only call
 dma_map_sgtable() for devices with DMA support
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

T24gTW9uLCBGZWIgMjIsIDIwMjEgYXQgMjoyNCBQTSBUaG9tYXMgWmltbWVybWFubiA8dHppbW1l
cm1hbm5Ac3VzZS5kZT4gd3JvdGU6Cj4KPiBIaQo+Cj4gQW0gMjIuMDIuMjEgdW0gMTQ6MDkgc2No
cmllYiBDaHJpc3RpYW4gS8O2bmlnOgo+ID4KPiA+Cj4gPiBBbSAyMi4wMi4yMSB1bSAxMzo0MyBz
Y2hyaWViIFRob21hcyBaaW1tZXJtYW5uOgo+ID4+IFVTQi1iYXNlZCBkcml2ZXJzIGNhbm5vdCB1
c2UgRE1BLCBzbyB0aGUgaW1wb3J0aW5nIG9mIGRtYS1idWYgYXR0YWNobWVudHMKPiA+PiBjdXJy
ZW50bHkgZmFpbHMgZm9yIHVkbCBhbmQgZ20xMnUzMjAuIFRoaXMgYnJlYWtzIGpvaW5pbmcvbWly
cm9yaW5nIG9mCj4gPj4gZGlzcGxheXMuCj4gPj4KPiA+PiBUaGUgZml4IGlzIG5vdyBhIGxpdHRs
ZSBzZXJpZXMuIFRvIHNvbHZlIHRoZSBpc3N1ZSBvbiB0aGUgaW1wb3J0ZXIKPiA+PiBzaWRlIChp
LmUuLCB0aGUgYWZmZWN0ZWQgVVNCLWJhc2VkIGRyaXZlciksIHBhdGNoIDEgaW50cm9kdWNlcyBh
IG5ldwo+ID4+IFBSSU1FIGNhbGxiYWNrLCBzdHJ1Y3QgZHJtX2RyaXZlci5nZW1fcHJpbWVfY3Jl
YXRlX29iamVjdCwgd2hpY2ggY3JlYXRlcwo+ID4+IGFuIG9iamVjdCBhbmQgZ2l2ZXMgbW9yZSBj
b250cm9sIHRvIHRoZSBpbXBvcnRpbmcgZHJpdmVyLiBTcGVjaWZpY2FsbHksCj4gPj4gdWRsIGFu
ZCBnbTEydTMyMCBjYW4gbm93IGF2b2lkIHRoZSBjcmVhdGlvbiBvZiBhIHNjYXR0ZXIvZ2F0aGVy
IHRhYmxlCj4gPj4gZm9yIHRoZSBpbXBvcnRlZCBwYWdlcy4gUGF0Y2ggMSBpcyBzZWxmLWNvbnRh
aW5lZCBpbiB0aGUgc2Vuc2UgdGhhdCBpdAo+ID4+IGNhbiBiZSBiYWNrcG9ydGVkIGludG8gb2xk
ZXIga2VybmVscy4KPiA+Cj4gPiBNaG0sIHRoYXQgc291bmRzIGxpa2UgYSBsaXR0bGUgb3Zlcmtp
bGwgdG8gbWUuCj4gPgo+ID4gRHJpdmVycyBjYW4gYWxyZWFkeSBpbXBvcnQgdGhlIERNQS1idWZz
IGFsbCBieSB0aGVtIHNlbHZlcyB3aXRob3V0IHRoZQo+ID4gaGVscCBvZiB0aGUgRFJNIGZ1bmN0
aW9ucy4gU2VlIGFtZGdwdSBmb3IgYW4gZXhhbXBsZS4KPiA+Cj4gPiBEYW5pZWwgYWxzbyBhbHJl
YWR5IG5vdGVkIHRvIG1lIHRoYXQgaGUgc2VlcyB0aGUgRFJNIGhlbHBlciBhcyBhIGJpdAo+ID4g
cXVlc3Rpb25hYmxlIG1pZGRsZSBsYXllci4KPgo+IEFuZCB0aGlzIGJ1ZyBwcm92ZXMgdGhhdCBp
dCBpcy4gOikKClRoZSB0cm91YmxlIGhlcmUgaXMgYWN0dWFsbHkgZ2VtX2JvLT5pbXBvcnRfYXR0
YWNoLCB3aGljaCBpc24ndCByZWFsbHkKcGFydCBvZiB0aGUgcXVlc3Rpb25hYmxlIG1pZGxheWVy
LCBidXQgZmFpcmx5IG1hbmRhdG9yeSAob25seQpleGNlcHRpb24gaXMgdm13Z2Z4IGJlY2F1c2Ug
bm90IHVzaW5nIGdlbSkgY2FjaGluZyB0byBtYWtlIHN1cmUgd2UKZG9uJ3QgZW5kIHVwIHdpdGgg
ZHVwZWQgaW1wb3J0cyBhbmQgZnVuIHN0dWZmIGxpa2UgdGhhdC4KCkFuZCBkbWFfYnVmX2F0dGFj
aCBub3cgaW1wbGljaXRseSBjcmVhdGVzIHRoZSBzZyB0YWJsZSBhbHJlYWR5LCBzbwp3ZSdyZSBh
bHJlYWR5IGluIGdhbWUgb3ZlciBsYW5kLiBJIHRoaW5rIHdlJ2QgbmVlZCB0byBtYWtlCmltcG9y
dF9hdHRhY2ggYSB1bmlvbiB3aXRoIGltcG9ydF9idWYgb3Igc29tZXRoaW5nIGxpa2UgdGhhdCwg
c28gdGhhdAp5b3UgY2FuIGRvIGF0dGFjaG1lbnQtbGVzcyBpbXBvcnRpbmcuCgo+ID4gSGF2ZSB5
b3UgdGhvdWdodCBhYm91dCBkb2luZyB0aGF0IGluc3RlYWQ/Cj4KPiBUaGVyZSBhcHBlYXJzIHRv
IGJlIHNvbWUgdXNlZnVsIGNvZGUgaW4gZHJtX2dlbV9wcmltZV9pbXBvcnRfZGV2KCkuIEJ1dAo+
IGlmIHRoZSBnZW5lcmFsIHNlbnRpbWVudCBnb2VzIHRvd2FyZHMgcmVtb3ZpbmcKPiBnZW1fcHJp
bWVfaW1wb3J0X3NnX3RhYmxlLCB3ZSBjYW4gd29yayB0b3dhcmRzIHRoYXQgYXMgd2VsbC4KCkkg
c3RpbGwgdGhpbmsgdGhpcyBwYXJ0IGlzIGEgYml0IGEgc2lsbHkgbWlkbGF5ZXIgZm9yIG5vIGdv
b2QgcmVhc29uLApidXQgSSB0aGluayB0aGF0J3Mgb3J0aG9nb25hbCB0byB0aGUgaXNzdWUgYXQg
aGFuZCBoZXJlLgoKSSdkIHN1Z2dlc3Qgd2UgZmlyc3QgdHJ5IHRvIHBhcGVyIG92ZXIgdGhlIGlz
c3VlIGJ5IHVzaW5nCnByaW1lX2ltcG9ydF9kZXYgd2l0aCB0aGUgaG9zdCBjb250cm9sbGVyICh3
aGljaCBob3BlZnVsbHkgaXMKZG1hLWNhcGFibGUgZm9yIG1vc3Qgc3lzdGVtcykuIEFuZCB0aGVu
LCBhdCBsZWlzdXJlLCB0cnkgdG8gdW50YW5nbGUKdGhlIG9iai0+aW1wb3J0X2F0dGFjaCBpc3N1
ZS4KLURhbmllbAoKPgo+IEJlc3QgcmVnYXJkcwo+IFRob21hcwo+Cj4gPgo+ID4gQ2hyaXN0aWFu
Lgo+ID4KPiA+Pgo+ID4+IFBhdGNoZXMgMiBhbmQgMyB1cGRhdGUgU0hNRU0gYW5kIENNQSBoZWxw
ZXJzIHRvIHVzZSB0aGUgbmV3IGNhbGxiYWNrLgo+ID4+IEVmZmVjdGl2ZWx5IHRoaXMgbW92ZXMg
dGhlIHNnIHRhYmxlIHNldHVwIGZyb20gdGhlIFBSSU1FIGhlbHBlcnMgaW50bwo+ID4+IHRoZSBt
ZW1vcnkgbWFuYWdlcnMuIFNITUVNIG5vdyBzdXBwb3J0cyBkZXZpY2VzIHdpdGhvdXQgRE1BIHN1
cHBvcnQsCj4gPj4gc28gY3VzdG9tIGNvZGUgY2FuIGJlIHJlbW92ZWQgZnJvbSB1ZGwgYW5kIGcx
MnUzMjAuCj4gPj4KPiA+PiBUZXN0ZWQgYnkgam9pbmluZy9taXJyb3JpbmcgZGlzcGxheXMgb2Yg
dWRsIGFuZCByYWRlb24gdW5kZXIgR25vbWUvWDExLgo+ID4+Cj4gPj4gdjI6Cj4gPj4gICAgICog
bW92ZSBmaXggdG8gaW1wb3J0ZXIgc2lkZSAoQ2hyaXN0aWFuLCBEYW5pZWwpCj4gPj4gICAgICog
dXBkYXRlIFNITUVNIGFuZCBDTUEgaGVscGVycyBmb3IgbmV3IFBSSU1FIGNhbGxiYWNrcwo+ID4+
Cj4gPj4gVGhvbWFzIFppbW1lcm1hbm4gKDMpOgo+ID4+ICAgIGRybTogU3VwcG9ydCBpbXBvcnRp
bmcgZG1hYnVmcyBpbnRvIGRyaXZlcnMgd2l0aG91dCBETUEKPiA+PiAgICBkcm0vc2htZW0taGVs
cGVyOiBJbXBsZW1lbnQgc3RydWN0IGRybV9kcml2ZXIuZ2VtX3ByaW1lX2NyZWF0ZV9vYmplY3QK
PiA+PiAgICBkcm0vY21hLWhlbHBlcjogSW1wbGVtZW50IHN0cnVjdCBkcm1fZHJpdmVyLmdlbV9w
cmltZV9jcmVhdGVfb2JqZWN0Cj4gPj4KPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2Nt
YV9oZWxwZXIuYyAgICB8IDYyICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiA+PiAgIGRyaXZl
cnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jICB8IDM4ICsrKysrKysrKystLS0tLQo+
ID4+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jICAgICAgICAgICAgIHwgNDMgKysrKysr
KysrKystLS0tLS0KPiA+PiAgIGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfZHJ2LmMgICAgICAg
ICB8ICAyICstCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZHJ2LmMg
fCAgMiArLQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2dlbS5jIHwg
IDYgKy0tCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2VtLmggfCAg
NCArLQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL3BsMTExL3BsMTExX2Rydi5jICAgICAgIHwgIDgg
KystLQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfYm8uYyAgICAgICAgICAgIHwgIDYg
Ky0tCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vdjNkL3YzZF9kcnYuYyAgICAgICAgICAgfCAgMiAr
LQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfZHJ2LmggICAgICAgICAgIHwgIDUgKy0K
PiA+PiAgIGluY2x1ZGUvZHJtL2RybV9kcnYuaCAgICAgICAgICAgICAgICAgICB8IDEyICsrKysr
Cj4gPj4gICBpbmNsdWRlL2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuaCAgICAgICAgfCAxMiArKy0t
LQo+ID4+ICAgaW5jbHVkZS9kcm0vZHJtX2dlbV9zaG1lbV9oZWxwZXIuaCAgICAgIHwgIDYgKy0t
Cj4gPj4gICAxNCBmaWxlcyBjaGFuZ2VkLCAxMjAgaW5zZXJ0aW9ucygrKSwgODggZGVsZXRpb25z
KC0pCj4gPj4KPiA+PiAtLQo+ID4+IDIuMzAuMQo+ID4+Cj4gPgo+Cj4gLS0KPiBUaG9tYXMgWmlt
bWVybWFubgo+IEdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIKPiBTVVNFIFNvZnR3YXJlIFNvbHV0
aW9ucyBHZXJtYW55IEdtYkgKPiBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1h
bnkKPiAoSFJCIDM2ODA5LCBBRyBOw7xybmJlcmcpCj4gR2VzY2jDpGZ0c2bDvGhyZXI6IEZlbGl4
IEltZW5kw7ZyZmZlcgo+CgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIElu
dGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
