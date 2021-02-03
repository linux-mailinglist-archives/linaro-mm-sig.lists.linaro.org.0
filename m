Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4927030D0E9
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 02:39:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56B8C61786
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 01:39:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 49CC666534; Wed,  3 Feb 2021 01:39:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6F0B6601F;
	Wed,  3 Feb 2021 01:39:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 80C026175A
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 01:39:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 605686601F; Wed,  3 Feb 2021 01:39:27 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by lists.linaro.org (Postfix) with ESMTPS id 3FA6F6175A
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 01:39:26 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id gx20so3603255pjb.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Feb 2021 17:39:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=XIYaotR9cVz0dZkIxPzlPF8z5N/cDZctzyKFUN0dyY0=;
 b=LYo8Jn1fKKm3CjNKMI3hzwcj89ujGeQ3ocee3RE84G0QiXhhEXzC6zP6LMjLxKnsgk
 tHGgwI8SOJNE/IDZRSXK9m8HIlxmRY58ySAquRfh5qDU1E9W/HhsVco3+08FYyNehLxV
 9+pb7HfYVCQ6q42y9T198FRA0kIAsrNZU5lT0fMIct2j+Jj7Xtooz9iKf6U0q24+DViG
 NXArCX7r/mHSCPhZWxccyGkiZvSksNU3bxAy+KwGBcJ2LmFRhkVmeBYyZt184jmClU9y
 BOjQ5hxHQi85dwYfqAzhvOAl3WbqksTS3jkDbXhZohPACgbM8SMwsQExRcKKBsi2I3Bm
 GRhA==
X-Gm-Message-State: AOAM533uVkgG9BfJIw6xk4pAllxQAyfj6CnQdQwFAXEix+wfp0OUQllD
 KJOvBOVvuqBfWQmWJwh/6cF/TiBR5/w=
X-Google-Smtp-Source: ABdhPJw4+TJeBM73IhpaxHBiQrVir31ns6RnIpgpHmpCk5j9tXDdCMTWEfxafjtp+R5KhfwTy9JIuQ==
X-Received: by 2002:a17:90a:8906:: with SMTP id
 u6mr664117pjn.223.1612316365454; 
 Tue, 02 Feb 2021 17:39:25 -0800 (PST)
Received: from google.com ([2620:15c:211:201:1502:84f8:ffc3:45b])
 by smtp.gmail.com with ESMTPSA id m10sm217140pjs.25.2021.02.02.17.39.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Feb 2021 17:39:24 -0800 (PST)
Date: Tue, 2 Feb 2021 17:39:21 -0800
From: Minchan Kim <minchan@kernel.org>
To: Suren Baghdasaryan <surenb@google.com>
Message-ID: <YBn+yWIE9eXbgQ2K@google.com>
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203003134.2422308-2-surenb@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210203003134.2422308-2-surenb@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, sspatil@google.com,
 christian.koenig@amd.com, kernel-team@android.com, jajones@nvidia.com,
 linux-kernel@vger.kernel.org, lmark@codeaurora.org, Brian.Starkey@arm.com,
 hch@infradead.org, linux-mm@kvack.org, john.stultz@linaro.org,
 dri-devel@lists.freedesktop.org, cgoldswo@codeaurora.org, hridya@google.com,
 akpm@linux-foundation.org, robin.murphy@arm.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v2 2/2] dma-buf: heaps: Map system heap
 pages as managed by linux vm
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

T24gVHVlLCBGZWIgMDIsIDIwMjEgYXQgMDQ6MzE6MzRQTSAtMDgwMCwgU3VyZW4gQmFnaGRhc2Fy
eWFuIHdyb3RlOgo+IEN1cnJlbnRseSBzeXN0ZW0gaGVhcCBtYXBzIGl0cyBidWZmZXJzIHdpdGgg
Vk1fUEZOTUFQIGZsYWcgdXNpbmcKPiByZW1hcF9wZm5fcmFuZ2UuIFRoaXMgcmVzdWx0cyBpbiBz
dWNoIGJ1ZmZlcnMgbm90IGJlaW5nIGFjY291bnRlZAo+IGZvciBpbiBQU1MgY2FsY3VsYXRpb25z
IGJlY2F1c2Ugdm0gdHJlYXRzIHRoaXMgbWVtb3J5IGFzIGhhdmluZyBubwo+IHBhZ2Ugc3RydWN0
cy4gV2l0aG91dCBwYWdlIHN0cnVjdHMgdGhlcmUgYXJlIG5vIGNvdW50ZXJzIHJlcHJlc2VudGlu
Zwo+IGhvdyBtYW55IHByb2Nlc3NlcyBhcmUgbWFwcGluZyBhIHBhZ2UgYW5kIHRoZXJlZm9yZSBQ
U1MgY2FsY3VsYXRpb24KPiBpcyBpbXBvc3NpYmxlLgo+IEhpc3RvcmljYWxseSwgSU9OIGRyaXZl
ciB1c2VkIHRvIG1hcCBpdHMgYnVmZmVycyBhcyBWTV9QRk5NQVAgYXJlYXMKPiBkdWUgdG8gbWVt
b3J5IGNhcnZlb3V0cyB0aGF0IGRpZCBub3QgaGF2ZSBwYWdlIHN0cnVjdHMgWzFdLiBUaGF0Cj4g
aXMgbm90IHRoZSBjYXNlIGFueW1vcmUgYW5kIGl0IHNlZW1zIHRoZXJlIHdhcyBkZXNpcmUgdG8g
bW92ZSBhd2F5Cj4gZnJvbSByZW1hcF9wZm5fcmFuZ2UgWzJdLgo+IERtYWJ1ZiBzeXN0ZW0gaGVh
cCBkZXNpZ24gaW5oZXJpdHMgdGhpcyBJT04gYmVoYXZpb3IgYW5kIG1hcHMgaXRzCj4gcGFnZXMg
dXNpbmcgcmVtYXBfcGZuX3JhbmdlIGV2ZW4gdGhvdWdoIGFsbG9jYXRlZCBwYWdlcyBhcmUgYmFj
a2VkCj4gYnkgcGFnZSBzdHJ1Y3RzLgo+IFJlcGxhY2UgcmVtYXBfcGZuX3JhbmdlIHdpdGggdm1f
aW5zZXJ0X3BhZ2UsIGZvbGxvd2luZyBMYXVyYSdzIHN1Z2dlc3Rpb24KPiBpbiBbMV0uIFRoaXMg
d291bGQgYWxsb3cgY29ycmVjdCBQU1MgY2FsY3VsYXRpb24gZm9yIGRtYWJ1ZnMuCj4gCj4gWzFd
IGh0dHBzOi8vZHJpdmVyZGV2LWRldmVsLmxpbnV4ZHJpdmVycHJvamVjdC5uYXJraXZlLmNvbS92
MGZKR3BhRC91c2luZy1pb24tbWVtb3J5LWZvci1kaXJlY3QtaW8KPiBbMl0gaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL3BpcGVybWFpbC9kcml2ZXJkZXYtZGV2ZWwvMjAx
OC1PY3RvYmVyLzEyNzUxOS5odG1sCj4gKHNvcnJ5LCBjb3VsZCBub3QgZmluZCBsb3JlIGxpbmtz
IGZvciB0aGVzZSBkaXNjdXNzaW9ucykKPiAKPiBTdWdnZXN0ZWQtYnk6IExhdXJhIEFiYm90dCA8
bGFiYm90dEBrZXJuZWwub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFN1cmVuIEJhZ2hkYXNhcnlhbiA8
c3VyZW5iQGdvb2dsZS5jb20+ClJldmlld2VkLWJ5OiBNaW5jaGFuIEtpbSA8bWluY2hhbkBrZXJu
ZWwub3JnPgoKQSBub3RlOiBUaGlzIHBhdGNoIG1ha2VzIGRtYWJ1ZiBzeXN0ZW0gaGVhcCBhY2Nv
dW50ZWQgYXMgUFNTIHNvCmlmIHNvbWVvbmUgaGFzIHJlbGllcyBvbiB0aGUgc2l6ZSwgdGhleSB3
aWxsIHNlZSB0aGUgYmxvYXQuCklJUkMsIHRoZXJlIHdhcyBzb21lIGRlYmF0ZSB3aGV0aGVyIFBT
UyBhY2NvdW50aW5nIGZvciB0aGVpcgpidWZmZXIgaXMgY29ycmVjdCBvciBub3QuIElmIGl0J2Qg
YmUgYSBwcm9ibGVtLCB3ZSBuZWVkIHRvCmRpc2N1c3MgaG93IHRvIHNvbHZlIGl0KG1heWJlLCB2
bWEtPnZtX2ZsYWdzIGFuZCByZWludHJvZHVjZQpyZW1hcF9wZm5fcmFuZ2UgZm9yIHRoZW0gdG8g
YmUgcmVzcGVjdGVkKS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
