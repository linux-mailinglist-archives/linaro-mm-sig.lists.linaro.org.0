Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C472A3071C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 09:42:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0223165FC3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 08:42:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E8AB866764; Thu, 28 Jan 2021 08:42:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 339B366759;
	Thu, 28 Jan 2021 08:42:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E49DF65FC3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 08:41:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C606166759; Thu, 28 Jan 2021 08:41:56 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by lists.linaro.org (Postfix) with ESMTPS id 9C00065FC3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 08:41:55 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id c127so3876902wmf.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 00:41:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tz3WgXFPgDJH06BRPqiMzvbO9SluCp9ZzIIjw1Gx/70=;
 b=igVJG6ApHrE7IsMWvF+9nB30VqhLOho+RsaSPmoxXL+9Rwlzo2EBfRN5un+Objpd7F
 y1KoIeDGxPcYbH9s83kYI0VkodAaxCGkxq49wa2scJsBhTIFwnumy5Hwe1KjIEyq/hLh
 dVuE785H8HNHZDy64iquZZH9k3EavZR3Z6lChe3f0udgfKf/QOp+kwF+Q7bfO3zr+xIx
 p50sNXEhYcoqiO3uBzl0ZqJzNrlF5Z/bXJ+i438NzoUkRdQgZ+rN/x+RoV131IUh1cw7
 ONmIXcH/q22hfhMjD0uCpxj8jWc5+8Rm62hhOmwTxeJ0o9/b5n935H0CrFxtAQWJfwbb
 gObA==
X-Gm-Message-State: AOAM531VjQLmrpUKw599c0YbbS8yyinrrfieqoEWYUtxjecBV9QUps/p
 vcA8RPuWa3LvJ+vNZ9okeZJRBHoT3mCcXw1C6qAoUw==
X-Google-Smtp-Source: ABdhPJybFfYSYako7tYrbS7cIdHvjhegTnAmdT9SipLr0QTHAYBZpolB5GrAZ47/mXPmVL+zOKl+vtUE/ns/AmASesM=
X-Received: by 2002:a05:600c:4e92:: with SMTP id
 f18mr7561817wmq.126.1611823314553; 
 Thu, 28 Jan 2021 00:41:54 -0800 (PST)
MIME-Version: 1.0
References: <20210128083817.314315-1-surenb@google.com>
In-Reply-To: <20210128083817.314315-1-surenb@google.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Thu, 28 Jan 2021 00:41:43 -0800
Message-ID: <CAJuCfpFn0bpk=6gWhwCBK717fh0VEzkpKjuyJqW36AAO43EDgQ@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Sandeep Patil <sspatil@google.com>,
 Chris Goldsworthy <cgoldswo@codeaurora.org>,
 kernel-team <kernel-team@android.com>, James Jones <jajones@nvidia.com>,
 LKML <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 Brian Starkey <Brian.Starkey@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Minchan Kim <minchan@kernel.org>, John Stultz <john.stultz@linaro.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 benjamin.gaignard@linaro.org, Hridya Valsaraju <hridya@google.com>,
 Robin Murphy <robin.murphy@arm.com>, christian.koenig@amd.com,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/1] dma-buf: heaps: Map system heap
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

T24gVGh1LCBKYW4gMjgsIDIwMjEgYXQgMTI6MzggQU0gU3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJl
bmJAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4KPiBDdXJyZW50bHkgc3lzdGVtIGhlYXAgbWFwcyBpdHMg
YnVmZmVycyB3aXRoIFZNX1BGTk1BUCBmbGFnIHVzaW5nCj4gcmVtYXBfcGZuX3JhbmdlLiBUaGlz
IHJlc3VsdHMgaW4gc3VjaCBidWZmZXJzIG5vdCBiZWluZyBhY2NvdW50ZWQKPiBmb3IgaW4gUFNT
IGNhbGN1bGF0aW9ucyBiZWNhdXNlIHZtIHRyZWF0cyB0aGlzIG1lbW9yeSBhcyBoYXZpbmcgbm8K
PiBwYWdlIHN0cnVjdHMuIFdpdGhvdXQgcGFnZSBzdHJ1Y3RzIHRoZXJlIGFyZSBubyBjb3VudGVy
cyByZXByZXNlbnRpbmcKPiBob3cgbWFueSBwcm9jZXNzZXMgYXJlIG1hcHBpbmcgYSBwYWdlIGFu
ZCB0aGVyZWZvcmUgUFNTIGNhbGN1bGF0aW9uCj4gaXMgaW1wb3NzaWJsZS4KPiBIaXN0b3JpY2Fs
bHksIElPTiBkcml2ZXIgdXNlZCB0byBtYXAgaXRzIGJ1ZmZlcnMgYXMgVk1fUEZOTUFQIGFyZWFz
Cj4gZHVlIHRvIG1lbW9yeSBjYXJ2ZW91dHMgdGhhdCBkaWQgbm90IGhhdmUgcGFnZSBzdHJ1Y3Rz
IFsxXS4gVGhhdAo+IGlzIG5vdCB0aGUgY2FzZSBhbnltb3JlIGFuZCBpdCBzZWVtcyB0aGVyZSB3
YXMgZGVzaXJlIHRvIG1vdmUgYXdheQo+IGZyb20gcmVtYXBfcGZuX3JhbmdlIFsyXS4KPiBEbWFi
dWYgc3lzdGVtIGhlYXAgZGVzaWduIGluaGVyaXRzIHRoaXMgSU9OIGJlaGF2aW9yIGFuZCBtYXBz
IGl0cwo+IHBhZ2VzIHVzaW5nIHJlbWFwX3Bmbl9yYW5nZSBldmVuIHRob3VnaCBhbGxvY2F0ZWQg
cGFnZXMgYXJlIGJhY2tlZAo+IGJ5IHBhZ2Ugc3RydWN0cy4KPiBDbGVhciBWTV9JTyBhbmQgVk1f
UEZOTUFQIGZsYWdzIHdoZW4gbWFwcGluZyBtZW1vcnkgYWxsb2NhdGVkIGJ5IHRoZQoKQWdyaCwg
cGxlYXNlIGlnbm9yZSBWTV9JTyBpbiB0aGUgZGVzY3JpcHRpb24uIFRoZSBwYXRjaCBkb2VzIG5v
dCB0b3VjaAp0aGF0IGZsYWcuIEknbGwgZml4IHRoYXQgaW4gdGhlIG5leHQgcmV2aXNpb24uCgo+
IHN5c3RlbSBoZWFwIGFuZCByZXBsYWNlIHJlbWFwX3Bmbl9yYW5nZSB3aXRoIHZtX2luc2VydF9w
YWdlLCBmb2xsb3dpbmcKPiBMYXVyYSdzIHN1Z2dlc3Rpb24gaW4gWzFdLiBUaGlzIHdvdWxkIGFs
bG93IGNvcnJlY3QgUFNTIGNhbGN1bGF0aW9uCj4gZm9yIGRtYWJ1ZnMuCj4KPiBbMV0gaHR0cHM6
Ly9kcml2ZXJkZXYtZGV2ZWwubGludXhkcml2ZXJwcm9qZWN0Lm5hcmtpdmUuY29tL3YwZkpHcGFE
L3VzaW5nLWlvbi1tZW1vcnktZm9yLWRpcmVjdC1pbwo+IFsyXSBodHRwOi8vZHJpdmVyZGV2Lmxp
bnV4ZHJpdmVycHJvamVjdC5vcmcvcGlwZXJtYWlsL2RyaXZlcmRldi1kZXZlbC8yMDE4LU9jdG9i
ZXIvMTI3NTE5Lmh0bWwKPiAoc29ycnksIGNvdWxkIG5vdCBmaW5kIGxvcmUgbGlua3MgZm9yIHRo
ZXNlIGRpc2N1c3Npb25zKQo+Cj4gU3VnZ2VzdGVkLWJ5OiBMYXVyYSBBYmJvdHQgPGxhYmJvdHRA
a2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBTdXJlbiBCYWdoZGFzYXJ5YW4gPHN1cmVuYkBn
b29nbGUuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyB8
IDYgKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMg
Yi9kcml2ZXJzL2RtYS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYwo+IGluZGV4IDE3ZTBlOWE2OGJh
Zi4uMGU5MmU0MmIyMjUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0
ZW1faGVhcC5jCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMKPiBA
QCAtMjAwLDExICsyMDAsMTMgQEAgc3RhdGljIGludCBzeXN0ZW1faGVhcF9tbWFwKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQo+ICAgICAgICAgc3Ry
dWN0IHNnX3BhZ2VfaXRlciBwaXRlcjsKPiAgICAgICAgIGludCByZXQ7Cj4KPiArICAgICAgIC8q
IEFsbCBwYWdlcyBhcmUgYmFja2VkIGJ5IGEgInN0cnVjdCBwYWdlIiAqLwo+ICsgICAgICAgdm1h
LT52bV9mbGFncyAmPSB+Vk1fUEZOTUFQOwo+ICsKPiAgICAgICAgIGZvcl9lYWNoX3NndGFibGVf
cGFnZSh0YWJsZSwgJnBpdGVyLCB2bWEtPnZtX3Bnb2ZmKSB7Cj4gICAgICAgICAgICAgICAgIHN0
cnVjdCBwYWdlICpwYWdlID0gc2dfcGFnZV9pdGVyX3BhZ2UoJnBpdGVyKTsKPgo+IC0gICAgICAg
ICAgICAgICByZXQgPSByZW1hcF9wZm5fcmFuZ2Uodm1hLCBhZGRyLCBwYWdlX3RvX3BmbihwYWdl
KSwgUEFHRV9TSVpFLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm1h
LT52bV9wYWdlX3Byb3QpOwo+ICsgICAgICAgICAgICAgICByZXQgPSB2bV9pbnNlcnRfcGFnZSh2
bWEsIGFkZHIsIHBhZ2UpOwo+ICAgICAgICAgICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gICAgICAgICAgICAgICAgIGFkZHIgKz0gUEFHRV9T
SVpFOwo+IC0tCj4gMi4zMC4wLjI4MC5nYTNjZTI3OTEyZi1nb29nCj4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
