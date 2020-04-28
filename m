Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB1B1BC3C8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 17:32:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A37B6198D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Apr 2020 15:32:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 22DFC61992; Tue, 28 Apr 2020 15:32:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1473A6181D;
	Tue, 28 Apr 2020 15:32:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C0958617C9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 15:32:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B35436181D; Tue, 28 Apr 2020 15:32:07 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 by lists.linaro.org (Postfix) with ESMTPS id 6CD37617C9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 15:32:06 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id x4so3287233wmj.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Apr 2020 08:32:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=fyTgxWA2/HoMwR8ETQ07Hg4eZzNMuWdW9xEgr0yJj2c=;
 b=pypDuxxvxDGltALMBTXhFwOsBW6fX+c3RQ9ZKwAXFas5DCW7alMpH6c5QR8RkZLItu
 z0tlAs7ONuof+uI6t0ZDDrXYsvDB4jF4QNXKLOBfDFp8o/olIEyxaUBEF2bdkLe6tk8t
 zJm4VsGPQiZLmIhO2OzUvPe0iy1jj6dzlZ3bX3sC42TfXl8VamDQPKE4a8am9FR+t2MY
 pV3sSTAOC2dwKAW/4TTD87xnhLfPSKM8WRYEXWwj4u4Uzcv7vICkMSPCM6+Zz+ez2TnB
 E4HyYgB3cB+zPHxaCI3IH4bOs+XhKdPmYH5Od0Oy4TkdEJJKVVJREP7LGC1BPq37KsKh
 cINQ==
X-Gm-Message-State: AGi0PubYg3WiWUzIYpZccHXH0331OR4NZvsbLmwdywDQmG4Et724AcAl
 VqTzgSYrb4Pst36k/ffXX9tugA==
X-Google-Smtp-Source: APiQypK6liIbViG0xJy6SG6E2JLUCRqc/Rd4DEdt0buwtJigcJZRTqgPIaD55s8f3mCsTYZkcr3q5w==
X-Received: by 2002:a1c:4b0a:: with SMTP id y10mr5073523wma.24.1588087925505; 
 Tue, 28 Apr 2020 08:32:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p7sm27283944wrf.31.2020.04.28.08.32.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 08:32:04 -0700 (PDT)
Date: Tue, 28 Apr 2020 17:32:02 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200428153202.GY3456981@phenom.ffwll.local>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 intel-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>
References: <CGME20200428132022eucas1p2aa4716cbaca61c432ee8028be15fef7a@eucas1p2.samsung.com>
 <20200428132005.21424-1-m.szyprowski@samsung.com>
 <20200428140257.GA3433@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428140257.GA3433@lst.de>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 amd-gfx@lists.freedesktop.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [RFC 00/17] DRM: fix struct sg_table nents vs.
	orig_nents misuse
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

T24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgMDQ6MDI6NTdQTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gT24gVHVlLCBBcHIgMjgsIDIwMjAgYXQgMDM6MTk6NDhQTSArMDIwMCwgTWFy
ZWsgU3p5cHJvd3NraSB3cm90ZToKPiA+IDEuIGludHJvZHVjZSBhIGRtYV97bWFwLHN5bmMsdW5t
YXB9X3NndGFibGUoKSB3cmFwcGVycywgd2hpY2ggd2lsbCB1c2UKPiA+ICAgIGEgcHJvcGVyIHNn
X3RhYmxlIGVudHJpZXMgYW5kIGNhbGwgcmVzcGVjdGl2ZSBETUEtbWFwcGluZyBmdW5jdGlvbnMK
PiA+ICAgIGFuZCBhZGFwdCBjdXJyZW50IGNvZGUgdG8gaXQKPiAKPiBUaGF0IHNvdW5kcyByZWFz
b25hYmxlIHRvIG1lLiAgVGhvc2UgY291bGQgYmUgcHJldHR5IHRyaXZpYWwgd3JhcHBlcnMuCj4g
Cj4gPgo+ID4gCj4gPiAyLiByZW5hbWUgbmVudHMgYW5kIG9yaWdfbmVudHMgdG8gbnJfcGFnZXMs
IG5yX2RtYXMgdG8gY2xlYXJseSBzdGF0ZQo+ID4gICAgd2hpY2ggb25lIHJlZmVycyB0byB3aGlj
aCBwYXJ0IG9mIHRoZSBzY2F0dGVybGlzdDsgSSdtIG9wZW4gZm9yCj4gPiAgICBvdGhlciBuYW1l
cyBmb3IgdGhvc2UgZW50cmllcwo+IAo+IG5yX2NwdV9lbnRzIGFuZCBucl9kbWFfZW50cyBtaWdo
dCBiZSBiZXR0ZXIgbmFtZXMsIGJ1dCBpdCBzdGlsbCB3b3VsZCBiZQo+IGEgd2hvbGUgbG90IG9m
IGNodXJuIGZvciBsaXR0bGUgZ2Fpbi4gIEkgdGhpbmsganVzdCBnb29kIHdyYXBwZXJzIGxpa2UK
PiBzdWdnZXN0ZWQgYWJvdmUgbWlnaHQgYmUgbW9yZSBoZWxwZnVsLgoKSSBndWVzcyBsb25nLXRl
cm0gd2UgY291bGQgYWltIGZvciBib3RoPyBJLmUuIHJvbGwgb3V0IGJldHRlciB3cmFwcGVycwpm
aXJzdCwgb25jZSB0aGF0J3Mgc29ha2VkIHRocm91Z2ggdGhlIHRyZWUsIHJlbmFtZSB0aGUgbGFz
dCBvZmZlbmRlcnMuCgpQZXJzb25hbGx5IEkgbGlrZSBucl9jcHVfZW50cyBhbmQgbnJfZG1hX2Vu
dHMsIHRoYXQncyBhYm91dCBhcyBjbGVhciBhcyBpdApnZXRzLgotRGFuaWVsCi0tIApEYW5pZWwg
VmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5m
ZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
