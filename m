Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 58636307828
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 15:36:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C2D86675F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 14:36:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6F99166764; Thu, 28 Jan 2021 14:36:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ADEAC66759;
	Thu, 28 Jan 2021 14:35:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E7A3B65FC3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 14:35:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CDDCE66759; Thu, 28 Jan 2021 14:35:45 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by lists.linaro.org (Postfix) with ESMTPS id B8B3665FC3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 14:35:44 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id i187so7880414lfd.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 06:35:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4HZ6vN2eEe9xlgJg6Acm1pXtbaRzCfTxTjwFlP4TFpU=;
 b=XkvyrFKl11gfDtDIN2CV5K9dW+rEkvyHB6XOg5u/SrNpfyyMq1eu/gUTOCc3New9Jc
 ZWvs7VttAC2/9sAsl83nqvCYhtkmXFtznWkpHri8/OeFWKLZsysTigu4EeG7oI5zwGtS
 47Dk9AmmFDW3l10nHlWtaJIDVUwetZ+218e+lF79G1nQJKoixlAtSyKNVJWkxT2LLA4Y
 loH2wFvmQq4CqhiAkLwYVRwH4mTmAHskCY09cbuomhyt03eZIqwDQFer1M1P84+s5v4b
 uBKlit07KEIweiIqJDKzEhnzUj9mxQuv6Riy/7L2/2H3LJyqsTS+HtJlTvZeEOVSXy0H
 2gNw==
X-Gm-Message-State: AOAM532pk2PyDzC9nWlPt5yka1gRXQCf2UbrjVjJfGz3mMDlTVWEvXVD
 ypMJplYBZI3ozbmql4KPmB5gvIeCGyzQmyrnfI6+ylV+
X-Google-Smtp-Source: ABdhPJwqwI0JXhluBVDgebMB/GJcLtoIuHaluDFZq7+Xj1RNJkY2OfC2kWQ4Clsu3GEZqQhCkC1nm3F37DJn50NMaO8=
X-Received: by 2002:ac2:5d51:: with SMTP id w17mr5544918lfd.343.1611844543382; 
 Thu, 28 Jan 2021 06:35:43 -0800 (PST)
MIME-Version: 1.0
References: <20210126204240.418297-1-hridya@google.com>
 <YBFXPbePURupbe+y@kroah.com>
 <CAO_48GHrpi9XxPhP2evwH_ZJmbVSWqxCvsYg6S2Syh-mrWBHzA@mail.gmail.com>
 <c0684400-c1e2-0ebd-ad09-cb7b24db5764@gmail.com>
 <CAO_48GGsOTLdqAQMO9vrLtWAKG6spByMC-GXwDv_f3ENvpemfA@mail.gmail.com>
 <Fu3J-fHQvkd_umZraMnhxQhFJR_JCDmgUssMBA4GJgRwo4UpIPKvVSh51Os9FQkABkhSL6tmEAV4vwBZa7hFWFTgujmjaBmrgqJJ75KM8ZU=@emersion.fr>
In-Reply-To: <Fu3J-fHQvkd_umZraMnhxQhFJR_JCDmgUssMBA4GJgRwo4UpIPKvVSh51Os9FQkABkhSL6tmEAV4vwBZa7hFWFTgujmjaBmrgqJJ75KM8ZU=@emersion.fr>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 28 Jan 2021 20:05:32 +0530
Message-ID: <CAO_48GEzi2b5M8Gv2E2L1s76VcPksA812ZqY1ihbpxkDkwb5_A@mail.gmail.com>
To: Simon Ser <contact@emersion.fr>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel test robot <lkp@intel.com>, Greg KH <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Suren Baghdasaryan <surenb@google.com>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>, hyesoo.yu@samsung.com,
 Hridya Valsaraju <hridya@google.com>,
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

SGkgU2ltb24sCgpPbiBUaHUsIDI4IEphbiAyMDIxIGF0IDIwOjAxLCBTaW1vbiBTZXIgPGNvbnRh
Y3RAZW1lcnNpb24uZnI+IHdyb3RlOgo+Cj4gT24gVGh1cnNkYXksIEphbnVhcnkgMjh0aCwgMjAy
MSBhdCAxOjAzIFBNLCBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPiB3cm90
ZToKPgo+ID4gU2luY2UgaGUgZGlkbid0IGNvbW1lbnQgb3ZlciBIcmlkeWEncyBsYXN0IGNsYXJp
ZmljYXRpb24gYWJvdXQgdGhlCj4gPiB0cmFjZXBvaW50cyB0byB0cmFjayB0b3RhbCBHUFUgbWVt
b3J5IGFsbG9jYXRpb25zIGJlaW5nIG9ydGhvZ29uYWwgdG8KPiA+IHRoaXMgc2VyaWVzLCBJIGFz
c3VtZWQgaGUgYWdyZWVkIHdpdGggaXQuCj4KPiBJSVJDIGhlJ3MgYXdheSB0aGlzIHdlZWsuIChJ
IGRvbid0IHJlbWVtYmVyIHdoZW4gaGUgY29tZXMgYmFjay4pCj4KPiA+IERhbmllbCwgZG8geW91
IHN0aWxsIGhhdmUgb2JqZWN0aW9ucyBhcm91bmQgYWRkaW5nIHRoaXMgcGF0Y2ggaW4/Cj4KPiAo
QWRkaW5nIGhpbSBleHBsaWNpdGx5IGluIENDKQpUaGFua3MgZm9yIGRvaW5nIHRoaXMhCgpCZXN0
LApTdW1pdC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
Cmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
