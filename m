Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B751B0593
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2020 11:27:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5007C61999
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2020 09:27:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 41470619B7; Mon, 20 Apr 2020 09:27:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE0416196D;
	Mon, 20 Apr 2020 09:26:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 92CAA617DA
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2020 09:26:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7B6D36196D; Mon, 20 Apr 2020 09:26:32 +0000 (UTC)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by lists.linaro.org (Postfix) with ESMTPS id 284BE617DA
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2020 09:26:31 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id c3so7464819otp.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Apr 2020 02:26:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vNmHcf3myzOB2u9F8M3SMwCNsUNlPCLfd3zAQRCW16Q=;
 b=XlRfNouEu9+C+0xc1aiJ/WfWmCap2nMAoPycHB9gksmUE4qLpxsu69JSx9wRTepo4r
 Q3zwoZLAZYSQv94ob3iOZ7WNHXRhS2EwMnV9Mm3Rts3F9nTSw+8GrwmW+aU2DWnt34sc
 ZlKERHALKNnm9m1SRhWpSfYjmZ7CpIlo81O95SlvHgqgnia8dqrt8+RkUXps3KjhEB2R
 rAjJ7aX0fBr/0BwvspsYaoOUfAiiGM/G4a5MFOTlK/w7xHoTFiWFuodGVYdHjAwQxs+6
 wcEwrVaXnV3Va2aOgIHmH4pruzJ0erFDwDHp/59JqAQ7KJvhEv8k7v6K9cgUPn5WufQB
 5asA==
X-Gm-Message-State: AGi0PuYd9wM1o5OdOHcIkuQzWyEGrc0WA+EGy1lhRSqK9dgfKRB+GIlQ
 9embpz/pORMn0f+nFW5rKVEQwfVlbjMDM2sBB/U=
X-Google-Smtp-Source: APiQypLK0nAWizIJ4tO6vPe5OvpMxqQr4fd7LV61E3+C9yzFgEDzCpkHgr7Sqg0Lx1T9RyK7Z05pBaDYg8OyPFQJ0Pw=
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr5221130ots.250.1587374790460; 
 Mon, 20 Apr 2020 02:26:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200414131348.444715-1-hch@lst.de>
 <20200414131348.444715-27-hch@lst.de>
In-Reply-To: <20200414131348.444715-27-hch@lst.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 Apr 2020 11:26:19 +0200
Message-ID: <CAMuHMdXO0TV09XYxyxjEA8YdvXVwg1u6Zs=z3PzCVb9Mw5boTQ@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 the arch/x86 maintainers <x86@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf <bpf@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Johannes Weiner <hannes@cmpxchg.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [Linaro-mm-sig] [PATCH 26/29] mm: remove vmalloc_user_node_flags
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

SGkgQ2hyaXN0b3BoLAoKT24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgMzoyMiBQTSBDaHJpc3RvcGgg
SGVsbHdpZyA8aGNoQGxzdC5kZT4gd3JvdGU6Cj4gT3BlbiBjb2RlIGl0IGluIF9fYnBmX21hcF9h
cmVhX2FsbG9jLCB3aGljaCBpcyB0aGUgb25seSBjYWxsZXIuICBBbHNvCj4gY2xlYW4gdXAgX19i
cGZfbWFwX2FyZWFfYWxsb2MgdG8gaGF2ZSBhIHNpbmdsZSB2bWFsbG9jIGNhbGwgd2l0aAo+IHNs
aWdodGx5IGRpZmZlcmVudCBmbGFncyBpbnN0ZWFkIG9mIHRoZSBjdXJyZW50IHR3byBkaWZmZXJl
bnQgY2FsbHMuCj4KPiBGb3IgdGhpcyB0byBjb21waWxlIGZvciB0aGUgbm9tbXUgY2FzZSBhZGQg
YSBfX3ZtYWxsb2Nfbm9kZV9yYW5nZSBzdHViCj4gdG8gbm9tbXUuYy4KCkFwcGFyZW50bHkgeW91
ciBub21tdS1jcm9zcy1jb21waWxlcnMgYXJlIGluIHF1YXJhbnRhaW5lPyA7LSkKCj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4gQWNrZWQtYnk6IFBldGVy
IFppamxzdHJhIChJbnRlbCkgPHBldGVyekBpbmZyYWRlYWQub3JnPgo+IEFja2VkLWJ5OiBKb2hh
bm5lcyBXZWluZXIgPGhhbm5lc0BjbXB4Y2hnLm9yZz4KCj4gLS0tIGEvbW0vbm9tbXUuYwo+ICsr
KyBiL21tL25vbW11LmMKPiBAQCAtMTUwLDYgKzE1MCwxNCBAQCB2b2lkICpfX3ZtYWxsb2ModW5z
aWduZWQgbG9uZyBzaXplLCBnZnBfdCBnZnBfbWFzaykKPiAgfQo+ICBFWFBPUlRfU1lNQk9MKF9f
dm1hbGxvYyk7Cj4KPiArdm9pZCAqX192bWFsbG9jX25vZGVfcmFuZ2UodW5zaWduZWQgbG9uZyBz
aXplLCB1bnNpZ25lZCBsb25nIGFsaWduLAo+ICsgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25n
IHN0YXJ0LCB1bnNpZ25lZCBsb25nIGVuZCwgZ2ZwX3QgZ2ZwX21hc2ssCj4gKyAgICAgICAgICAg
ICAgIHBncHJvdF90IHByb3QsIHVuc2lnbmVkIGxvbmcgdm1fZmxhZ3MsIGludCBub2RlLAo+ICsg
ICAgICAgICAgICAgICBjb25zdCB2b2lkICpjYWxsZXIpCj4gK3sKPiArICAgICAgIHJldHVybiBf
X3ZtYWxsb2Moc2l6ZSwgZmxhZ3MpOwoKT24gTW9uLCBBcHIgMjAsIDIwMjAgYXQgMTA6MzkgQU0g
PG5vcmVwbHlAZWxsZXJtYW4uaWQuYXU+IHdyb3RlOgo+IEZBSUxFRCBsaW51eC1uZXh0L201Mjcy
YzNfZGVmY29uZmlnL202OGstZ2NjOCBNb24gQXByIDIwLCAxODozOAo+Cj4gaHR0cDovL2tpc3Nr
Yi5lbGxlcm1hbi5pZC5hdS9raXNza2IvYnVpbGRyZXN1bHQvMTQyMTM2MjMvCj4KPiBtbS9ub21t
dS5jOjE1ODoyNTogZXJyb3I6ICdmbGFncycgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMg
ZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4gJ2NsYXNzJz8KCiJyZXR1cm4gX192bWFsbG9jKHNpemUs
IGdmcF9tYXNrKTsiLCBJIGFzc3VtZT8KCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAg
ICAgICAgICAgICAgR2VlcnQKCgotLQpHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3Rz
IG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25h
bCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhh
Y2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJv
Z3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGluYXJvLW1tLXNpZwo=
