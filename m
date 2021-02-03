Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E29330E439
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 21:50:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E88466049
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 20:50:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 510C96672C; Wed,  3 Feb 2021 20:50:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,MISSING_HEADERS,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E15CC614FF;
	Wed,  3 Feb 2021 20:49:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 26E8B60C30
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 20:49:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0C741614FF; Wed,  3 Feb 2021 20:49:42 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by lists.linaro.org (Postfix) with ESMTPS id 0537B60C30
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 20:49:41 +0000 (UTC)
Received: by mail-pf1-f173.google.com with SMTP id w14so619017pfi.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Feb 2021 12:49:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc:content-transfer-encoding;
 bh=M8lFoGv6mHlkS4pfcEZxXT0GjlBrKSHlOVSDDjgilMk=;
 b=gAKo9lJrjqRnYzT8GVeD/UIT2gkI6aLGr/WxhNH8Nx0JPAe45C+IYecp3wZzajvCHG
 VqHgqqEzK/dCxis3euyr2/qUBQLarGR/wvKGUpmLyAfo7urh1RgUxPatqaKzAMqRLFom
 Zbg+Jg5OAJ389aDOuiYBpwaBJkPHdP+gqnCS1w3tQGhhD5pgUKd+lTMjbVJt/rvrL/KN
 1wI2tJG92samOHZUWkhrocTaLZUju2oNargi3cz9Va+wkV0vmpZLz8XXZXmmU3aTN+Aq
 oNvO6GlpdkvdVIvu8p7LW6d/3lXQTxUEvGqkKuOdmRfoBfYNmoQjV+lohLQP4n9eQh0c
 5Iew==
X-Gm-Message-State: AOAM531seOhd0WqyNgggYOuiGzsRuUaP43tMDqofUBayDW96s82+5gbc
 CMGoaRKnmCHHo/yoIAnnpqVtcrj9zzNGY2oOiaC/Kg==
X-Received: by 2002:aa7:910a:0:b029:1c8:9947:305c with SMTP id
 10-20020aa7910a0000b02901c89947305cmt3620826pfh.75.1612385380012; Wed, 03 Feb
 2021 12:49:40 -0800 (PST)
MIME-Version: 1.0
References: <20210128182432.2216573-1-kaleshsingh@google.com>
In-Reply-To: <20210128182432.2216573-1-kaleshsingh@google.com>
From: Kalesh Singh <kaleshsingh@google.com>
Date: Wed, 3 Feb 2021 15:49:27 -0500
Message-ID: <CAC_TJvdUN27PsjnehS03UQB=LdQUo9KJK=q1bgxJnZh2FJzXjw@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrei Vagin <avagin@gmail.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Michel Lespinasse <walken@google.com>, Jeffrey Vander Stoep <jeffv@google.com>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 "Cc: Android Kernel" <kernel-team@android.com>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Bernd Edlinger <bernd.edlinger@hotmail.de>,
 Suren Baghdasaryan <surenb@google.com>,
 Alexey Gladkov <gladkov.alexey@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>, Yafang Shao <laoar.shao@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Linaro-mm-sig] [PATCH 0/2] Allow reading process DMA buf stats
	from fdinfo
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

T24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgMToyNCBQTSBLYWxlc2ggU2luZ2ggPGthbGVzaHNpbmdo
QGdvb2dsZS5jb20+IHdyb3RlOgo+Cj4gQW5kcm9pZCBjYXB0dXJlcyBwZXItcHJvY2VzcyBzeXN0
ZW0gbWVtb3J5IHN0YXRlIHdoZW4gY2VydGFpbiBsb3cgbWVtb3J5Cj4gZXZlbnRzIChlLmcgYSBm
b3JlZ3JvdW5kIGFwcCBraWxsKSBvY2N1ciwgdG8gaWRlbnRpZnkgcG90ZW50aWFsIG1lbW9yeQo+
IGhvZ2dlcnMuIEluIG9yZGVyIHRvIG1lYXN1cmUgaG93IG11Y2ggbWVtb3J5IGEgcHJvY2VzcyBh
Y3R1YWxseSBjb25zdW1lcywKPiBpdCBpcyBuZWNlc3NhcnkgdG8gaW5jbHVkZSB0aGUgRE1BIGJ1
ZmZlciBzaXplcyBmb3IgdGhhdCBwcm9jZXNzIGluIHRoZQo+IG1lbW9yeSBhY2NvdW50aW5nLiBT
aW5jZSB0aGUgaGFuZGxlIHRvIERNQSBidWZmZXJzIGFyZSByYXcgRkRzLCBpdCBpcwo+IGltcG9y
dGFudCB0byBiZSBhYmxlIHRvIGlkZW50aWZ5IHdoaWNoIHByb2Nlc3NlcyBoYXZlIEZEIHJlZmVy
ZW5jZXMgdG8KPiBhIERNQSBidWZmZXIuCj4KPiBDdXJyZW50bHksIERNQSBidWZmZXIgRkRzIGNh
biBiZSBhY2NvdW50ZWQgdXNpbmcgL3Byb2MvPHBpZD4vZmQvKiBhbmQKPiAvcHJvYy88cGlkPi9m
ZGluZm8gLS0gYm90aCBhcmUgb25seSByZWFkYWJsZSBieSB0aGUgcHJvY2VzcyBvd25lciwKPiBh
cyBmb2xsb3dzOgo+ICAgMS4gRG8gYSByZWFkbGluayBvbiBlYWNoIEZELgo+ICAgMi4gSWYgdGhl
IHRhcmdldCBwYXRoIGJlZ2lucyB3aXRoICIvZG1hYnVmIiwgdGhlbiB0aGUgRkQgaXMgYSBkbWFi
dWYgRkQuCj4gICAzLiBzdGF0IHRoZSBmaWxlIHRvIGdldCB0aGUgZG1hYnVmIGlub2RlIG51bWJl
ci4KPiAgIDQuIFJlYWQvIHByb2MvPHBpZD4vZmRpbmZvLzxmZD4sIHRvIGdldCB0aGUgRE1BIGJ1
ZmZlciBzaXplLgo+Cj4gQWNjZXNzaW5nIG90aGVyIHByb2Nlc3Nlc+KAmSBmZGluZm8gcmVxdWly
ZXMgcm9vdCBwcml2aWxlZ2VzLiBUaGlzIGxpbWl0cwo+IHRoZSB1c2Ugb2YgdGhlIGludGVyZmFj
ZSB0byBkZWJ1Z2dpbmcgZW52aXJvbm1lbnRzIGFuZCBpcyBub3Qgc3VpdGFibGUKPiBmb3IgcHJv
ZHVjdGlvbiBidWlsZHMuICBHcmFudGluZyByb290IHByaXZpbGVnZXMgZXZlbiB0byBhIHN5c3Rl
bSBwcm9jZXNzCj4gaW5jcmVhc2VzIHRoZSBhdHRhY2sgc3VyZmFjZSBhbmQgaXMgaGlnaGx5IHVu
ZGVzaXJhYmxlLgo+Cj4gVGhpcyBzZXJpZXMgcHJvcG9zZXMgbWFraW5nIHRoZSByZXF1aXJlbWVu
dCB0byByZWFkIGZkaW5mbyBsZXNzIHN0cmljdAo+IHdpdGggUFRSQUNFX01PREVfUkVBRC4KPgoK
SGkgZXZlcnlvbmUsCgpJIHdpbGwgc2VuZCB2MiBvZiB0aGlzIHBhdGNoIHNlcmllcy4gUGxlYXNl
IGxldCBtZSBrbm93IGlmIHlvdSBoYXZlCmFueSBvdGhlciBjb21tZW50cyBvciBmZWVkYmFjaywg
dGhhdCBzaG91bGQgYmUgYWRkcmVzc2VkIGluIHRoZSBuZXcKdmVyc2lvbi4KClRoYW5rcywKS2Fs
ZXNoCgo+IEthbGVzaCBTaW5naCAoMik6Cj4gICBwcm9jZnM6IEFsbG93IHJlYWRpbmcgZmRpbmZv
IHdpdGggUFRSQUNFX01PREVfUkVBRAo+ICAgZG1hYnVmOiBBZGQgZG1hYnVmIGlub2RlIG5vIHRv
IGZkaW5mbwo+Cj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAgMSArCj4gIGZzL3Byb2Mv
YmFzZS5jICAgICAgICAgICAgfCAgNCArKy0tCj4gIGZzL3Byb2MvZmQuYyAgICAgICAgICAgICAg
fCAxNSArKysrKysrKysrKysrKy0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQo+Cj4gLS0KPiAyLjMwLjAuMzY1LmcwMmJjNjkzNzg5LWdvb2cKPgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
