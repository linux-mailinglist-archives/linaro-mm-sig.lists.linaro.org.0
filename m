Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 038BD307E9E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 20:21:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1B3106171B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 19:21:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0D73066764; Thu, 28 Jan 2021 19:21:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C8FA66674C;
	Thu, 28 Jan 2021 19:21:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7F30061719
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 19:21:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 661866674C; Thu, 28 Jan 2021 19:21:22 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by lists.linaro.org (Postfix) with ESMTPS id 3C64D61719
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 19:21:21 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id o63so4915006pgo.6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 11:21:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t7cdO3p2LDzHlz2Hrhn2F19GJzOY36dqtjQ3Rxczlx0=;
 b=n3s1WJPlBGEg4OuG4rHJ4WMf3Mn5dzF78ipU0dKCbdQ/J2FvOvmstxim9/Dke3ERAX
 5VLDNHxJvP5GwIi98x2cODhDqu1cujJQ2Z6jSYneTMZWQPwsTsZP73xdtRa3sqHu4bJo
 qVn8bPUv6MF378BdNiryi2cdBVncFzNtSN5JwCzp9SYUlJriqNnMK+xxRRCxz0KIqXZc
 DhF5whDVu/2IcDsEPI4jqEHzYFIGiO4bwr+VmIi8Cc8j9I+ZyI2hX9cRuShKTWpAPu8h
 9mYxP6Ng/319ZsvgofpOksUMyttJTmD3zEMt1PH1uyKm0W2T51EEBhAkUo+d1GSYb1E5
 p+kg==
X-Gm-Message-State: AOAM532wrqjJ3sh/WIQgasRgktOEz5vFtZhnW/iqoNYr5I3zTpV2T9zO
 OPBPTw1UU58KT03lL5vBFpvhlGicvDaMpjsNdM4MHQ==
X-Google-Smtp-Source: ABdhPJzucOY7Wf5rDg/yIKU4Bna7vFQxUsOQUmmwpxjGh5skR73VZpdTE+rg2c7nmuBRiXiLo7kEyjINx0TNrAU+dAg=
X-Received: by 2002:a63:5309:: with SMTP id h9mr913629pgb.19.1611861680197;
 Thu, 28 Jan 2021 11:21:20 -0800 (PST)
MIME-Version: 1.0
References: <20210128182432.2216573-1-kaleshsingh@google.com>
 <20210128182432.2216573-3-kaleshsingh@google.com>
 <94bd3e83-698f-ea80-f3ff-a69fc3d39217@infradead.org>
In-Reply-To: <94bd3e83-698f-ea80-f3ff-a69fc3d39217@infradead.org>
From: Kalesh Singh <kaleshsingh@google.com>
Date: Thu, 28 Jan 2021 14:21:07 -0500
Message-ID: <CAC_TJvc=m6bMsqPPDijksPkA-8TxUnv7c3yD8Tm_BdY90CXavA@mail.gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrei Vagin <avagin@gmail.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Michel Lespinasse <walken@google.com>, Jeffrey Vander Stoep <jeffv@google.com>,
 "Cc: Android Kernel" <kernel-team@android.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Bernd Edlinger <bernd.edlinger@hotmail.de>,
 Suren Baghdasaryan <surenb@google.com>, Vlastimil Babka <vbabka@suse.cz>,
 Alexey Gladkov <gladkov.alexey@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>, Yafang Shao <laoar.shao@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] dmabuf: Add dmabuf inode no to
	fdinfo
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

T24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgMTo1NSBQTSBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5m
cmFkZWFkLm9yZz4gd3JvdGU6Cj4KPiBPbiAxLzI4LzIxIDEwOjI0IEFNLCBLYWxlc2ggU2luZ2gg
d3JvdGU6Cj4gPiBUaGUgZG1hYnVmIGlub2RlIG51bWJlciBhbGxvd3MgdXNlcnNwYWNlIHRvIHVu
aXF1ZWx5IGlkZW50aWZ5IHRoZSBidWZmZXIKPiA+IGFuZCBhdm9pZHMgYSBkZXBlbmRlbmN5IG9u
IC9wcm9jLzxwaWQ+L2ZkLyogd2hlbiBhY2NvdW50aW5nIHBlci1wcm9jZXNzCj4gPiBETUEgYnVm
ZmVyIHNpemVzLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEthbGVzaCBTaW5naCA8a2FsZXNoc2lu
Z2hAZ29vZ2xlLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAx
ICsKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+Cj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMK
PiA+IGluZGV4IDlhZDYzOTdhYWE5Ny4uZDg2OTA5OWVkZTgzIDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
Ywo+ID4gQEAgLTQxNCw2ICs0MTQsNyBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3Nob3dfZmRpbmZv
KHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGZpbGUgKmZpbGUpCj4gPiAgewo+ID4gICAgICAg
c3RydWN0IGRtYV9idWYgKmRtYWJ1ZiA9IGZpbGUtPnByaXZhdGVfZGF0YTsKPiA+Cj4gPiArICAg
ICBzZXFfcHJpbnRmKG0sICJkbWFidWZfaW5vZGVfbm86XHQlbHVcbiIsIGZpbGVfaW5vZGUoZmls
ZSktPmlfaW5vKTsKPiA+ICAgICAgIHNlcV9wcmludGYobSwgInNpemU6XHQlenVcbiIsIGRtYWJ1
Zi0+c2l6ZSk7Cj4gPiAgICAgICAvKiBEb24ndCBjb3VudCB0aGUgdGVtcG9yYXJ5IHJlZmVyZW5j
ZSB0YWtlbiBpbnNpZGUgcHJvY2ZzIHNlcV9zaG93ICovCj4gPiAgICAgICBzZXFfcHJpbnRmKG0s
ICJjb3VudDpcdCVsZFxuIiwgZmlsZV9jb3VudChkbWFidWYtPmZpbGUpIC0gMSk7Cj4gPgo+Cj4g
W3Jlc2VuZGluZzsgaG9wZWZ1bGx5IHRoZSBmaXJzdCBvbmUgZGlkbid0IGdvIGFueXdoZXJlXQo+
Cj4KPiBIaSwKPgo+IFRoZSBzdWJqZWN0IGlzIGEgbGl0dGxlIGNvbmZ1c2luZy4KPiBJdCBzZWVt
cyB0byBzYXkgdGhhdCB0aGUgZG1hYnVmIGlub2RlIG5vIGlzIGJlaW5nIGFkZGVkIHRvIC9wcm9j
LzxwaWQ+L2ZkaW5mbywKPiBidXQgbG9va2luZyBhdCB0aGUgY29kZSwgaXQgaXMgYmVpbmcgYWRk
ZWQgdG8gL3Byb2MvZG1hYnVmIChvciAvcHJvYy88cGlkPi9kbWFidWYpLgo+Cj4gUGxlYXNlIGNs
YXJpZnkuCj4KPiBhbmQgaXMgdGhlIC9wcm9jIGZpbGUgZm9ybWF0IGRvY3VtZW50ZWQgYW55d2hl
cmU/CgpIaSBSYW5keSwKClRoZSBwYXRjaCBhZGRzIHRoZSBpbm9kZSBudW1iZXIgaW4gL3Byb2Mv
PHBpZD4vZmRpbmZvLyogYW5kCi9wcm9jLzxwaWQ+L3Rhc2svPHRpZD4vZmRpbmZvLyogZm9yIEZE
cyBjb3JyZXNwb25kaW5nIHRvIGRtYWJ1ZnMuCmZkaW5mbyBpcyBkb2N1bWVudGVkIGluIHByb2Mg
bWFuIHBhZ2VzLCBidXQgaXQgZG9lc24ndCBpbmNsdWRlIHRoZQpkbWFidWYgc3BlY2lmaWMgZmll
bGRzLCBzbyB0aGlzIHdpbGwgbmVlZCB0byBiZSB1cGRhdGVkLiBJIGhvcGUgdGhpcwpjbGFyaWZp
ZXMuCgpUaGFua3MsCkthbGVzaAoKPgo+Cj4gdGhhbmtzLgo+Cj4gLS0KPiB+UmFuZHkKPgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
