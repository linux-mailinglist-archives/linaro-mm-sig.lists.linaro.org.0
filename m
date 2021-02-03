Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FF630D183
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 03:27:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CCED617F5
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 02:27:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 196DF6604D; Wed,  3 Feb 2021 02:27:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3186B619D7;
	Wed,  3 Feb 2021 02:26:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1365061786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 02:26:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EF1BD619D7; Wed,  3 Feb 2021 02:26:35 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 8E2F761786
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 02:26:34 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id q7so22448162wre.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Feb 2021 18:26:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uc4Qty+5tEkUX3Oy4yRHsOTw3F10hKVAPg2EbH1/158=;
 b=bsq5DMRiL+GLBXNKFQgkIIuOnL0un5jdSfzrrG/VRUdNRKHNM6BP0PL+N4Xf03+TJr
 DPDGMuR9Y+/wkMg7utgTlk24M6xggaw6s7VUV1QN8MdimJ1H36MXyoKqVYOp4ZV6bUg+
 EpEtu43gYgoGkV+WiJvg2NpzKxL8bZY1UuBwqGSZimfxiX/Ujifurj1P8om5NMI8Nscu
 ggJeTjM3TiVxE8UIML4kg9kmoQISl2y5glJGs6xgGbejDY3Q2Yq+BceEnUtfvVfgkS9w
 v2Xl1ZivnrmP+y5t6PcaJVyiB6Pvnpkx/FfteOZRIK9cpER48j8UOIrkXME3Ynh+WBA/
 kbpA==
X-Gm-Message-State: AOAM530GsCwArHSJn55eB09Yuegrw9CoTBFUm9mmhElm+DUcWe5P7JXW
 CX7KvFK3seAHKdfS38A29nfRv3PFQXAVmaZA7GAGKA==
X-Google-Smtp-Source: ABdhPJy6fGFUBvfPcPkeOCTJpRJofvPTFjYyVYvrOMlWx5vJKlJpzyy3HdXZL3OGYGKpL/SuZw5CvuxZEEfSKXife4g=
X-Received: by 2002:a5d:453b:: with SMTP id j27mr930767wra.92.1612319193577;
 Tue, 02 Feb 2021 18:26:33 -0800 (PST)
MIME-Version: 1.0
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203015553.GX308988@casper.infradead.org>
In-Reply-To: <20210203015553.GX308988@casper.infradead.org>
From: Suren Baghdasaryan <surenb@google.com>
Date: Tue, 2 Feb 2021 18:26:22 -0800
Message-ID: <CAJuCfpGUTBcEkdaF68hQhwRfHSgdv9+KF5MBZqA86rBYhzhFXg@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>, Sandeep Patil <sspatil@google.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 kernel-team <kernel-team@android.com>, James Jones <jajones@nvidia.com>,
 LKML <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <Brian.Starkey@arm.com>, Christoph Hellwig <hch@infradead.org>,
 Minchan Kim <minchan@kernel.org>, linux-mm <linux-mm@kvack.org>,
 John Stultz <john.stultz@linaro.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: replace BUG_ON in
 vm_insert_page with a return of an error
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

T24gVHVlLCBGZWIgMiwgMjAyMSBhdCA1OjU1IFBNIE1hdHRoZXcgV2lsY294IDx3aWxseUBpbmZy
YWRlYWQub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgRmViIDAyLCAyMDIxIGF0IDA0OjMxOjMzUE0g
LTA4MDAsIFN1cmVuIEJhZ2hkYXNhcnlhbiB3cm90ZToKPiA+IFJlcGxhY2UgQlVHX09OKHZtYS0+
dm1fZmxhZ3MgJiBWTV9QRk5NQVApIGluIHZtX2luc2VydF9wYWdlIHdpdGgKPiA+IFdBUk5fT05f
T05DRSBhbmQgcmV0dXJuaW5nIGFuIGVycm9yLiBUaGlzIGlzIHRvIGVuc3VyZSB1c2VycyBvZiB0
aGUKPiA+IHZtX2luc2VydF9wYWdlIHRoYXQgc2V0IFZNX1BGTk1BUCBhcmUgbm90aWZpZWQgb2Yg
dGhlIHdyb25nIGZsYWcgdXNhZ2UKPiA+IGFuZCBnZXQgYW4gaW5kaWNhdGlvbiBvZiBhbiBlcnJv
ciB3aXRob3V0IHBhbmljaW5nIHRoZSBrZXJuZWwuCj4gPiBUaGlzIHdpbGwgaGVscCBpZGVudGlm
eWluZyBkcml2ZXJzIHRoYXQgbmVlZCB0byBjbGVhciBWTV9QRk5NQVAgYmVmb3JlCj4gPiB1c2lu
ZyBkbWFidWYgc3lzdGVtIGhlYXAgd2hpY2ggaXMgbW92aW5nIHRvIHVzZSB2bV9pbnNlcnRfcGFn
ZS4KPgo+IE5BQ0suCj4KPiBUaGUgc3lzdGVtIG1heSBub3QgX3BhbmljXywgYnV0IGl0IGlzIGNs
ZWFybHkgbm93IF9icm9rZW5fLiAgVGhlIGRldmljZQo+IGRvZXNuJ3Qgd29yaywgYW5kIHNvIHRo
ZSBzeXN0ZW0gaXMgdXNlbGVzcy4gIFlvdSBoYXZlbid0IHJlYWxseSBpbXByb3ZlZAo+IGFueXRo
aW5nIGhlcmUuICBKdXN0IGJsb2F0ZWQgdGhlIGtlcm5lbCB3aXRoIHlldCBhbm90aGVyIF9PTkNF
IHZhcmlhYmxlCj4gdGhhdCBpbiBhIG5vcm1hbCBzeXN0ZW0gd2lsbCBuZXZlciBldmVyIGV2ZXIg
YmUgdHJpZ2dlcmVkLgoKV2UgaGFkIGEgZGlzY3Vzc2lvbiBpbiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9wYXRjaHdvcmsvcGF0Y2gvMTM3MjQwOQphYm91dCBob3cgc29tZSBEUk0gZHJpdmVycyBz
ZXQgdXAgdGhlaXIgVk1BcyB3aXRoIFZNX1BGTk1BUCBiZWZvcmUKbWFwcGluZyB0aGVtLiBXZSB3
YW50IHRvIHVzZSB2bV9pbnNlcnRfcGFnZSBpbnN0ZWFkIG9mIHJlbWFwX3Bmbl9yYW5nZQppbiB0
aGUgZG1hYnVmIGhlYXBzIHNvIHRoYXQgdGhpcyBtZW1vcnkgaXMgdmlzaWJsZSBpbiBQU1MuIEhv
d2V2ZXIgaWYKYSBkcml2ZXIgdGhhdCBzZXRzIFZNX1BGTk1BUCB0cmllcyB0byB1c2UgYSBkbWFi
dWYgaGVhcCwgaXQgd2lsbCBzdGVwCmludG8gdGhpcyBCVUdfT04uIFdlIHdhbnRlZCB0byBjYXRj
aCBhbmQgZ3JhZHVhbGx5IGZpeCBzdWNoIGRyaXZlcnMKYnV0IHdpdGhvdXQgY2F1c2luZyBhIHBh
bmljIGluIHRoZSBwcm9jZXNzLiBJIGhvcGUgdGhpcyBjbGFyaWZpZXMgdGhlCnJlYXNvbnMgd2h5
IEknbSBtYWtpbmcgdGhpcyBjaGFuZ2UgYW5kIEknbSBvcGVuIHRvIG90aGVyIGlkZWFzIGlmIHRo
ZXkKd291bGQgYWRkcmVzcyB0aGlzIGlzc3VlIGluIGEgYmV0dGVyIHdheS4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
