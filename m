Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7814B30AE4F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Feb 2021 18:48:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5EBA66518
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Feb 2021 17:48:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9A12D66538; Mon,  1 Feb 2021 17:48:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E646E66008;
	Mon,  1 Feb 2021 17:47:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 29E806107D
 for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Feb 2021 17:47:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1223466008; Mon,  1 Feb 2021 17:47:36 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 by lists.linaro.org (Postfix) with ESMTPS id 9D7A96107D
 for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Feb 2021 17:47:32 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id r20so9313113qtm.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Feb 2021 09:47:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AgfUeIVe1jpb/M6F0P7bbhlcNBnqRJlGtPeSWlWrNwg=;
 b=MfNfBElQfHY5Ti6PhqRGXFgoCeoc3RASiiqYhSgB9k1fk4OO8IZ27koVsRqvIizKYO
 MM7g6y9wePVbD3VdDA748dH4VpdZbVC1xKN4EXcaRwQnV8JzRfhL4/gqt2T1P2r//I6w
 jWqefdE+N2oSPjKI0Z5NAV+/xPXAJC43aIPiTyocvttaL/nxHqClAstkl9HmFDTp82tB
 ROOVk5RuS7ShBm6I3tCrgMwotFD+wHdcM08USougONIctPz7L1USS+wbAKKoCfZyWGHb
 MPCYz/saRCmhVtplsuZnaHiFeqzAKL8J7Cf3vumXg5ZxYlP4jGpVK11Tu78u5BW73OCH
 Ql+g==
X-Gm-Message-State: AOAM530eeo3MonL0Qf9+oTfPeiMRbbFjJUDAEVh8VH1pCX7hpMd/IH4W
 0pNISlxXSD6pi5uaNo/u4Z3IBjiO7OGvnBMfA/SKPQ==
X-Google-Smtp-Source: ABdhPJxMOaZ0yLi1yAK38wxAgfwraVY6iPAY9diM58gAjj5k0njFutl/YoK2inviAy8R2Ly4etp6FDp3dTzQV9acQjM=
X-Received: by 2002:ac8:6f0f:: with SMTP id g15mr2486401qtv.322.1612201652050; 
 Mon, 01 Feb 2021 09:47:32 -0800 (PST)
MIME-Version: 1.0
References: <20210126204240.418297-1-hridya@google.com>
 <YBFXPbePURupbe+y@kroah.com>
 <CAO_48GHrpi9XxPhP2evwH_ZJmbVSWqxCvsYg6S2Syh-mrWBHzA@mail.gmail.com>
 <c0684400-c1e2-0ebd-ad09-cb7b24db5764@gmail.com>
 <CAO_48GGsOTLdqAQMO9vrLtWAKG6spByMC-GXwDv_f3ENvpemfA@mail.gmail.com>
 <Fu3J-fHQvkd_umZraMnhxQhFJR_JCDmgUssMBA4GJgRwo4UpIPKvVSh51Os9FQkABkhSL6tmEAV4vwBZa7hFWFTgujmjaBmrgqJJ75KM8ZU=@emersion.fr>
 <CAO_48GEzi2b5M8Gv2E2L1s76VcPksA812ZqY1ihbpxkDkwb5_A@mail.gmail.com>
In-Reply-To: <CAO_48GEzi2b5M8Gv2E2L1s76VcPksA812ZqY1ihbpxkDkwb5_A@mail.gmail.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Mon, 1 Feb 2021 09:46:54 -0800
Message-ID: <CA+wgaPPfUcNGnW-GKZxtkzniMZcM=sNG7AHS+tUu=B2jCStOzw@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel test robot <lkp@intel.com>, Simon Ser <contact@emersion.fr>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 Hyesoo Yu <hyesoo.yu@samsung.com>, Greg KH <gregkh@linuxfoundation.org>,
 Suren Baghdasaryan <surenb@google.com>,
 Android Kernel Team <kernel-team@android.com>,
 Christian Koenig <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v3] dmabuf: Add the capability to expose
 DMA-BUF stats in sysfs
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

T24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgNjozNSBBTSBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdh
bEBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IEhpIFNpbW9uLAo+Cj4gT24gVGh1LCAyOCBKYW4gMjAy
MSBhdCAyMDowMSwgU2ltb24gU2VyIDxjb250YWN0QGVtZXJzaW9uLmZyPiB3cm90ZToKPiA+Cj4g
PiBPbiBUaHVyc2RheSwgSmFudWFyeSAyOHRoLCAyMDIxIGF0IDE6MDMgUE0sIFN1bWl0IFNlbXdh
bCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4KPiA+ID4gU2luY2UgaGUgZGlk
bid0IGNvbW1lbnQgb3ZlciBIcmlkeWEncyBsYXN0IGNsYXJpZmljYXRpb24gYWJvdXQgdGhlCj4g
PiA+IHRyYWNlcG9pbnRzIHRvIHRyYWNrIHRvdGFsIEdQVSBtZW1vcnkgYWxsb2NhdGlvbnMgYmVp
bmcgb3J0aG9nb25hbCB0bwo+ID4gPiB0aGlzIHNlcmllcywgSSBhc3N1bWVkIGhlIGFncmVlZCB3
aXRoIGl0Lgo+ID4KPiA+IElJUkMgaGUncyBhd2F5IHRoaXMgd2Vlay4gKEkgZG9uJ3QgcmVtZW1i
ZXIgd2hlbiBoZSBjb21lcyBiYWNrLikKPiA+Cj4gPiA+IERhbmllbCwgZG8geW91IHN0aWxsIGhh
dmUgb2JqZWN0aW9ucyBhcm91bmQgYWRkaW5nIHRoaXMgcGF0Y2ggaW4/Cj4gPgo+ID4gKEFkZGlu
ZyBoaW0gZXhwbGljaXRseSBpbiBDQykKPiBUaGFua3MgZm9yIGRvaW5nIHRoaXMhCj4KPiBCZXN0
LAo+IFN1bWl0LgoKVGhhbmsgeW91IGFsbCBmb3IgdGhlIGhlbHAgOikKClJlZ2FyZHMsCkhyaWR5
YQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
