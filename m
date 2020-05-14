Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A111D31D4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2020 15:52:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E3A560DD0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2020 13:52:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1D60A65F93; Thu, 14 May 2020 13:52:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36C8760E68;
	Thu, 14 May 2020 13:51:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0CE6A60DD0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 13:51:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id ED33F60E02; Thu, 14 May 2020 13:51:42 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 9A32860E02
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 13:51:41 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD36D20671
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 13:51:40 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id 72so2409632otu.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 06:51:40 -0700 (PDT)
X-Gm-Message-State: AOAM531S0fSaz69oxhQH45gyvTBXtx5h8ySG3p3uJ3L2G3myAWSJjHl+
 /7KuK67dPPOvLJoCRKom54z8WJYZtM4eTdslhw==
X-Google-Smtp-Source: ABdhPJzQUESjwS7Ih36p4leA1o497JSOSd1+5C+3ygMzeFo3qlL7lPTUyx4LBbQ+Ukd+XPHe6ro8V61dxXyaOPE9BZM=
X-Received: by 2002:a9d:1441:: with SMTP id h59mr3620806oth.192.1589464299942; 
 Thu, 14 May 2020 06:51:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <CGME20200513133310eucas1p176c920345e7f05f670e26e330b358d7f@eucas1p1.samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <20200513133245.6408-19-m.szyprowski@samsung.com>
In-Reply-To: <20200513133245.6408-19-m.szyprowski@samsung.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 14 May 2020 08:51:27 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLwEB_YMzDDQ=nt0_Tq-BGGFEW64BagPN-FbDeOnLpYCA@mail.gmail.com>
Message-ID: <CAL_JsqLwEB_YMzDDQ=nt0_Tq-BGGFEW64BagPN-FbDeOnLpYCA@mail.gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [Linaro-mm-sig] [PATCH v5 19/38] drm: panfrost: fix common
 struct sg_table related issues
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

T24gV2VkLCBNYXkgMTMsIDIwMjAgYXQgODozMyBBTSBNYXJlayBTenlwcm93c2tpCjxtLnN6eXBy
b3dza2lAc2Ftc3VuZy5jb20+IHdyb3RlOgo+Cj4gVGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1I
T1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9tYXBfc2coKSBmdW5jdGlvbgo+IHJldHVybnMg
dGhlIG51bWJlciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRkcmVzcyBzcGFj
ZS4KPiBIb3dldmVyIHRoZSBzdWJzZXF1ZW50IGNhbGxzIHRvIHRoZSBkbWFfc3luY19zZ19mb3Jf
e2RldmljZSxjcHV9KCkgYW5kCj4gZG1hX3VubWFwX3NnIG11c3QgYmUgY2FsbGVkIHdpdGggdGhl
IG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwo+IHBhc3NlZCB0byB0aGUgZG1hX21hcF9z
ZygpLgo+Cj4gc3RydWN0IHNnX3RhYmxlIGlzIGEgY29tbW9uIHN0cnVjdHVyZSB1c2VkIGZvciBk
ZXNjcmliaW5nIGEgbm9uLWNvbnRpZ3VvdXMKPiBtZW1vcnkgYnVmZmVyLCB1c2VkIGNvbW1vbmx5
IGluIHRoZSBEUk0gYW5kIGdyYXBoaWNzIHN1YnN5c3RlbXMuIEl0Cj4gY29uc2lzdHMgb2YgYSBz
Y2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3NlcyAoc2dsIGVudHJ5
KSwKPiBhcyB3ZWxsIGFzIHRoZSBudW1iZXIgb2Ygc2NhdHRlcmxpc3QgZW50cmllczogQ1BVIHBh
Z2VzIChvcmlnX25lbnRzIGVudHJ5KQo+IGFuZCBETUEgbWFwcGVkIHBhZ2VzIChuZW50cyBlbnRy
eSkuCj4KPiBJdCB0dXJuZWQgb3V0IHRoYXQgaXQgd2FzIGEgY29tbW9uIG1pc3Rha2UgdG8gbWlz
dXNlIG5lbnRzIGFuZCBvcmlnX25lbnRzCj4gZW50cmllcywgY2FsbGluZyBETUEtbWFwcGluZyBm
dW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRyaWVzIG9yCj4gaWdub3JpbmcgdGhl
IG51bWJlciBvZiBtYXBwZWQgZW50cmllcyByZXR1cm5lZCBieSB0aGUgZG1hX21hcF9zZygpCj4g
ZnVuY3Rpb24uCj4KPiBUbyBhdm9pZCBzdWNoIGlzc3VlcywgbGV0cyB1c2UgYSBjb21tb24gZG1h
LW1hcHBpbmcgd3JhcHBlcnMgb3BlcmF0aW5nCj4gZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190
YWJsZSBvYmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQo+IGl0ZXJhdG9ycyB3aGVyZSBw
b3NzaWJsZS4gVGhpcywgYWxtb3N0IGFsd2F5cywgaGlkZXMgcmVmZXJlbmNlcyB0byB0aGUKPiBu
ZW50cyBhbmQgb3JpZ19uZW50cyBlbnRyaWVzLCBtYWtpbmcgdGhlIGNvZGUgcm9idXN0LCBlYXNp
ZXIgdG8gZm9sbG93Cj4gYW5kIGNvcHkvcGFzdGUgc2FmZS4KPgo+IFNpZ25lZC1vZmYtYnk6IE1h
cmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KPiBSZXZpZXdlZC1ieTog
U3RldmVuIFByaWNlIDxzdGV2ZW4ucHJpY2VAYXJtLmNvbT4KPiAtLS0KPiBGb3IgbW9yZSBpbmZv
cm1hdGlvbiwgc2VlICdbUEFUQ0ggdjUgMDAvMzhdIERSTTogZml4IHN0cnVjdCBzZ190YWJsZSBu
ZW50cwo+IHZzLiBvcmlnX25lbnRzIG1pc3VzZScgdGhyZWFkOgo+IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LWlvbW11LzIwMjAwNTEzMTMyMTE0LjYwNDYtMS1tLnN6eXByb3dza2lAc2Ft
c3VuZy5jb20vVC8KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2dl
bS5jIHwgNCArKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9tbXUuYyB8
IDcgKysrLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkKClJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
