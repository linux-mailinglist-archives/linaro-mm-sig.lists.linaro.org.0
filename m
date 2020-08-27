Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4B3254D4C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Aug 2020 20:55:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A73560418
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Aug 2020 18:55:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8BB8461957; Thu, 27 Aug 2020 18:55:00 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1ACB619B1;
	Thu, 27 Aug 2020 18:54:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 87F2460418
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Aug 2020 18:54:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 70363619B1; Thu, 27 Aug 2020 18:54:25 +0000 (UTC)
Received: from mail-oo1-f66.google.com (mail-oo1-f66.google.com
 [209.85.161.66])
 by lists.linaro.org (Postfix) with ESMTPS id 68E7560418
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Aug 2020 18:54:24 +0000 (UTC)
Received: by mail-oo1-f66.google.com with SMTP id y30so1470816ooj.3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Aug 2020 11:54:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BWqUveoeKZMIhm3GjalPyEQmnfCWpI1alLQjjqHt+NU=;
 b=HeHULtHN9Xwcmybq2jP2GuCHXZQTSKxYjFy5g67rbtZz7OxqaGI3T4OlKuyhxAeq03
 jRzWWuui8lze1sA7heFkihHyrTsVS7P9QIxKwctmqUrIv2rIPAXAP8b4J4pm21vS4MOx
 JAzfAiTP8K/vll/QlXFD1cGUrUBXvE0dwJ53h4gciDmMeWAi9UFk+sJOB1YUmSTRfAMV
 PZYI/RyN+8W99guCXFIT9dI1wHif4VULFjAT7AZXpCR/zmW04XDDJBrkJmwRu//vuN09
 /hmccWNzFVgcbWDm/mlQzW+tiae39GWWnLQpy0LtCIKi2bM0EHdg57yuVk/5YnpBoSwx
 A0Wg==
X-Gm-Message-State: AOAM533OD43UNemh0988ZGEpLE4Q5leiXwqxDxNBQw+Qdh2yW21/AEFg
 V1gjuMrvTtNVRzC7IQvkDKzy10ICgKDP5FJLpigb9AYP
X-Google-Smtp-Source: ABdhPJy8T8ttMmxpmzdBmMLZEkAuTLQvD2G2liKWH2H+Jb7ky01tXVyV7oYkkXZ8NroZL6tIlOl+3FM2CROEfwK+7xM=
X-Received: by 2002:a4a:aa42:: with SMTP id y2mr9682938oom.88.1598554463803;
 Thu, 27 Aug 2020 11:54:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
 <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
 <20200827160506.GC684514@kroah.com>
 <CAMi1Hd1Ch1RWvOTnON3tsrucaKThTuGQnwNFo94GqUjufVmnOg@mail.gmail.com>
 <20200827171745.GA701089@kroah.com>
In-Reply-To: <20200827171745.GA701089@kroah.com>
From: John Stultz <john.stultz@linaro.org>
Date: Thu, 27 Aug 2020 11:54:12 -0700
Message-ID: <CALAqxLVOEBaLtkbL-OENYSK0dUc_PBo-oC=BOBFQbPh-bkWTgQ@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Amit Pundir <amit.pundir@linaro.org>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Shuah Khan <shuah@kernel.org>, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Suren Baghdasaryan <surenb@google.com>, Christoph Hellwig <hch@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Hridya Valsaraju <hridya@google.com>,
 Laura Abbott <laura@labbott.name>,
 Android Kernel Team <kernel-team@android.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Christian Brauner <christian@brauner.io>
Subject: Re: [Linaro-mm-sig] [PATCH] staging: ion: remove from the tree
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

T24gVGh1LCBBdWcgMjcsIDIwMjAgYXQgMTA6MTcgQU0gR3JlZyBLcm9haC1IYXJ0bWFuCjxncmVn
a2hAbGludXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4gT24gVGh1LCBBdWcgMjcsIDIwMjAgYXQg
MTA6MzE6NDFQTSArMDUzMCwgQW1pdCBQdW5kaXIgd3JvdGU6Cj4gPiBJIGRvbid0IGtub3cgd2hh
dCBpcyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8gaGVyZS4gSSBqdXN0IHdhbnQgdG8KPiA+IGhpZ2hs
aWdodCB0aGF0IEFPU1AncyBhdWRpbyAoY29kZWMyKSBIQUwgZGVwZW5kcyBvbiB0aGUgSU9OIHN5
c3RlbQo+ID4gaGVhcCBhbmQgaXQgd2lsbCBicmVhayBBT1NQIGZvciBwZW9wbGUgd2hvIGJvb3Qg
bWFpbmxpbmUgb24gdGhlaXIKPiA+IGRldmljZXMsIGV2ZW4gZm9yIGp1c3QgdGVzdGluZyBwdXJw
b3NlIGxpa2Ugd2UgZG8gaW4gTGluYXJvLiBSaWdodCBub3cKPiA+IHdlIG5lZWQgb25seSAxIChB
bmRyb2lkIHNwZWNpZmljIG91dC1vZi10cmVlKSBwYXRjaCB0byBib290IEFPU1Agd2l0aAo+ID4g
bWFpbmxpbmUgYW5kIFN1bWl0IGlzIGFscmVhZHkgdHJ5aW5nIHRvIHVwc3RyZWFtIHRoYXQgdm1h
IG5hbWluZwo+ID4gcGF0Y2guIFJlbW92YWwgb2YgaW4ta2VybmVsIElPTiwgd2lsbCBqdXN0IGFk
ZCBtb3JlIHRvIHRoYXQgZGVsdGEuCj4KPiBBcyBBT1NQIHdpbGwgY29udGludWUgdG8gcmVseSBv
biBJT04gYWZ0ZXIgRGVjZW1iZXIgb2YgdGhpcyB5ZWFyLCBhbGwKPiB5b3UgYXJlIGRvaW5nIGlz
IHBvc3Rwb25pbmcgdGhlIGluZXZpdGFibGUgYSBmZXcgbW9yZSBtb250aHMuCj4KPiBQdXNoIGJh
Y2sgb24gdGhlIEFuZHJvaWQgdGVhbSB0byBmaXggdXAgdGhlIGNvZGUgdG8gbm90IHVzZSBJT04s
IHRoZXkKPiBrbm93IHRoaXMgbmVlZHMgdG8gaGFwcGVuLgoKVGhlIHBvaW50IHRob3VnaCwgaXMg
eW91ciBtYWluIHByZW1pc2UgdGhhdCBubyBvbmUgaXMgdXNpbmcgdGhpcyBpc24ndCB0cnVlLgoK
SSdtIGFjdGl2ZWx5IHdvcmtpbmcgd2l0aCBIcmlkeWEgYW5kIGZvbGtzIG9uIHRoZSBjb2RlYzIg
SEFMIHNpZGUgdG8KdHJhbnNpdGlvbiB0aGlzIG9uIHRoZSB1c2VybGFuZCBzaWRlOgogIGh0dHBz
Oi8vYW5kcm9pZC1yZXZpZXcuZ29vZ2xlc291cmNlLmNvbS9jL3BsYXRmb3JtL2ZyYW1ld29ya3Mv
YXYvKy8xMzY4OTE4LzMKCkknZCBsaWtlIEFPU1AgdG8gbm90IHVzZSBJT04gYWZ0ZXIgU2VwdGVt
YmVyICh0aG91Z2ggYmVpbmcgZXh0ZXJuYWwgSQpjYW4ndCBwcm9taXNlIGFueXRoaW5nKSwgbXVj
aCBsZXNzIGNvbnRpbnVpbmcgYWZ0ZXIgRGVjZW1iZXIuCgpJIHdhbnQgdGhpcyBtaWdyYXRpb24g
dG8gaGFwcGVuIGFzIG11Y2ggYXMgYW55b25lLiAgQnV0IEknZCBwcmVmZXIgdG8Ka2VlcCBJT04g
aW4gc3RhZ2luZyB1bnRpbCBhZnRlciB0aGUgTFRTIGlzIGFubm91bmNlZC4gSGF2aW5nIGJvdGgK
YXJvdW5kIGhlbHBzIGRldmVsb3BtZW50IGZvciB0aGUgdHJhbnNpdGlvbiwgd2hpY2ggaGVscHMg
dXMgaGF2ZSBhCnJlbGlhYmxlIHNvbHV0aW9uLCB3aGljaCBoZWxwcyB2ZW5kb3JzIHRvIG1pZ3Jh
dGUgYW5kIGJlIGFibGUgdG8gZG8KY29tcGFyYXRpdmUgcGVyZm9ybWFuY2UgdGVzdGluZy4KCkkg
ZG8gYXBwcmVjaWF0ZSB0aGF0IGtlZXBpbmcgaXQgaXNuJ3QgZnJlZSwgYnV0IEkgYWxzbyBkb24n
dCBmZWVsIHRoZQpjaGFvcy1tb25rZXkgYXBwcm9hY2ggaGVyZSBpcyByZWFsbHkgbW90aXZhdGlv
bmFsIGluIHRoZSB3YXkgeW91CmludGVuZC4KCnRoYW5rcwotam9obgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
